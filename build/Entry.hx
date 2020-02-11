package ;

import sys.Http;
import haxe.Json;
import haxe.Timer;
import sys.io.File;
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Printer;

using StringTools;
using haxe.io.Path;
using sys.FileSystem;

typedef TMeta = {
    name:String,
    metadata:String,
    doc:String,
    ?targets:Array<String>,
    ?platforms:Array<String>,
    ?links:Array<String>,
    ?params:Array<String>,
    ?devcomment:String,
    ?internal:Bool,
}

class Entry {

    public static final printer:Printer = new Printer();

    public static var MetasJson:String =
    if (Context.defined('metas.json')) {
        var value = Context.definedValue('meta.json').normalize();

        if (!value.isAbsolute()) {
            value = FileSystem.fullPath(Context.resolvePath(value));
        }

        value;

    } else {
        'https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json';

    }
    public static final cwd:String = Sys.getCwd();
    public static final MetasLocal:String = '$cwd/cached/'.normalize();

    public static var outputPath = '$cwd/src/haxe/macro/Metas.hx';

    public static function main() {
        // TODO: Should be `https`.
        var isHttps = MetasJson.startsWith('https:');

        if (isHttps && FileSystem.exists(MetasLocal + 'meta.json')) {
            MetasJson = MetasLocal + 'meta.json';
            isHttps = false;
        }

        var wait = true;
        var content = '';

        if (isHttps) {
            // TODO: Once eval supports https connections, drop tink_* libs.
            //Http.requestUrl(MetasJson);

            tink.http.Client.fetch(MetasJson, {client:Curl}).all().handle( o -> switch o {
                case Success(response):
                    wait = false;
                    content = response.body.toString();

                case Failure(e):
                    wait = false;
                    Context.fatalError('HTTPS error: $e', Context.currentPos());

            } );

        } else {
            wait = false;
            content = File.getContent(MetasJson);

        }

        var timestamp = Timer.stamp();
        while (wait) {
            if ((Timer.stamp() - timestamp) > 4) {
                Context.fatalError('Failed to load `meta.json` via https request.', Context.currentPos());
                break;
            }
        }
        
        //trace( content );

        var json:Array<TMeta> = Json.parse( content );

        if (isHttps) {
            if (!MetasLocal.exists()) MetasLocal.createDirectory();
            File.saveContent( MetasLocal + '/meta.json', content );

        }

        var pos = Context.currentPos();

        // Build `Metas.hx`
        var fields = [];
        for (meta in json) {
            //trace( define );
            var name = meta.name;
            var expr = {expr:EConst(CString(meta.metadata)), pos:pos};
            var field = (macro class {
                public var $name = $expr;
            }).fields[0];
            field.doc = '`@${meta.metadata}`\n';
            if (meta.doc != null && meta.doc != '') {
                if (meta.doc.indexOf('(deprecated)') > -1) {
                    field.doc += '- - -\n@deprecated';

                } else {
                    field.doc += '- - -\n${meta.doc}';

                }
            }
            if (meta.devcomment != null) field.doc += '\n${meta.devcomment}';
            if (meta.internal != null && meta.internal) field.doc += '\n- - -\nFor internal compiler use only.';
            if (meta.platforms != null) field.doc += '\n- - -\nPlatform${meta.platforms.length == 0 ? 's' :''}: ${meta.platforms.join(' | ')}';
            if (meta.targets != null) field.doc += '\n- - -\nApplies to: ${meta.targets.map( s -> s.substr(1) ).join(' | ')}';
            if (meta.params != null) for (p in meta.params) field.doc += '\n@param ${p}';
            if (meta.links != null) for (l in meta.links) field.doc += '\n@see $l';

            //trace( printer.printField( field ) );
            //break;
            fields.push( field );

        }

        var td:TypeDefinition = macro class {}
        td.doc = 'Do not edit this file it is auto-generated.\nBuilt off `meta.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json';
        td.pack = ['haxe', 'macro'];
        td.name = 'Metas';
        td.kind = TDAbstract(macro:String, [macro:String], [macro:String]);
        td.meta = [
            {name:':enum', params:[], pos:td.pos}, 
            {name:':forward', params:[], pos:td.pos}, 
            {name:':forwardStatics', params:[], pos:td.pos}
        ];
        td.fields = fields.concat(td.fields);

        if (!outputPath.directory().exists()) outputPath.directory().createDirectory();
        File.saveContent(outputPath, printer.printTypeDefinition(td, true));

        // Build `TypedMetas.hx`
        fields = [];
        for (meta in json) {
            //trace( define );
            var name = meta.name;
            var expr = Context.parseInlineString('haxe.macro.Metas.${meta.name}', pos);
            var carg = (meta.params != null) 
                ? (meta.params.length > 1) 
                    ? macro:Array<haxe.macro.Expr> 
                    : macro:haxe.macro.Expr
                : macro:Void;
            var ctarget = macro:haxe.macro.Type.BaseType;
            if (meta.targets != null) {
                var index = 0;
                for (type in ['TClass', 'TEnum', 'TTypedef', 'TAbstract']) switch meta.targets.indexOf(type) {
                    case x if (x > -1):
                        index += (x+1);

                    case x if (x < -1):
                        break;

                }
                if (index == 1) {
                    ctarget = switch meta.targets[index-1] {
                        case 'TClass': macro:haxe.macro.Type.ClassType;
                        case 'TEnum': macro:haxe.macro.Type.EnumType;
                        case 'TTypedef': macro:haxe.macro.Type.DefType;
                        case 'TAbstract': macro:haxe.macro.Type.AbstractType;
                        case _: ctarget;
                    }
                }
                
                index = -1;
                for (field in ['TClassField', 'TAbstractField', 'TAnyField']) {
                    index = meta.targets.indexOf(field);
                    if (index != -1) break;
                }
                if (index > -1) {
                    ctarget = if (index == 0) {
                        macro:haxe.macro.Type.ClassField;

                    } else {
                        //macro:haxe.ds.Either<$ctarget, haxe.macro.Type.ClassField>;
                        macro:{meta:haxe.macro.Type.MetaAccess};

                    }
                }

                index = meta.targets.indexOf('TExpr');
                if (index > -1) {
                    ctarget = if (index == 0) {
                        macro:haxe.macro.Expr;

                    } else if (index > 1) {
                        // TExpr is third arg or more. Assume this meta can
                        // be applied to anything.
                        macro:Any;

                    } else {
                        macro:haxe.ds.Either<$ctarget, haxe.macro.Expr.Expr>;

                    }
                }
            }
            var ctype = macro:haxe.macro.TypedMetas<$carg, $ctarget>;
            var field = (macro class {
                public var $name:$ctype = $expr;
            }).fields[0];
            field.doc = '`@${meta.metadata}`\n';
            if (meta.doc != null && meta.doc != '') field.doc += '- - -\n${meta.doc}';
            if (meta.devcomment != null) field.doc += '\n${meta.devcomment}';
            if (meta.internal != null && meta.internal) field.doc += '\n- - -\nFor internal compiler use only.';
            if (meta.platforms != null) field.doc += '\n- - -\nPlatform${meta.platforms.length == 0 ? 's' :''}: ${meta.platforms.join(' | ')}';
            if (meta.targets != null) field.doc += '\n- - -\nApplies to: ${meta.targets.map( s -> s.substr(1) ).join(' | ')}';
            if (meta.params != null) {
                if (meta.params.length > 1) {
                    for (i in 0...meta.params.length) field.doc += '\n@param arg${i} ${meta.params[i]}';
                } else {
                    field.doc += '\n@param arg ${meta.params[0]}';
                }
            }
            if (meta.links != null) for (l in meta.links) field.doc += '\n@see $l';

            //trace( printer.printField( field ) );
            //break;
            fields.push( field );

        }

        var td:TypeDefinition = macro class {
            @:to public inline function asString():String return this;
        }
        td.doc = 'Do not edit this file it is auto-generated.\nBuilt off `meta.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json';
        td.pack = ['haxe', 'macro'];
        td.name = 'TypedMetas';
        td.kind = TDAbstract(macro:String, [macro:haxe.macro.Metas], null);
        td.params = [{name:'Arg'}, {name:'Target'}];
        td.meta = [
            {name:':enum', params:[], pos:td.pos}, 
            {name:':forward', params:[], pos:td.pos}, 
            {name:':forwardStatics', params:[], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.Voids], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.Expression], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.Expressions], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.InlinedVoids], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.InlinedSingleAny], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.InlinedArrayAny], pos:td.pos}
        ];
        td.fields = td.fields.concat(fields);

        if (!outputPath.directory().exists()) outputPath.directory().createDirectory();
        File.saveContent(outputPath.directory().addTrailingSlash() + 'TypedMetas.hx', printer.printTypeDefinition(td, true));
    }

}