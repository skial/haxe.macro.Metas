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
    if (Context.defined('metas.path')) {
        var value = Context.definedValue('metas.path').normalize();

        if (!value.isAbsolute()) {
            value = FileSystem.fullPath(Context.resolvePath(value));
        }

        value;

    } else {
        Context.fatalError(
            'Download meta.json from https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json and add `-D metas.path=<path> to the build command.',
            Context.currentPos()
        );

    }
    public static final cwd:String = Sys.getCwd();
    public static final MetasLocal:String = '$cwd/cached/'.normalize();

    public static var outputPath = '$cwd/src/haxe/macro/Metas.hx';

    public static function main() {
        var pos = Context.currentPos();
        var debug = Context.defined('debug');

        if (debug) {
            trace( MetasJson );
        }

        var content = File.getContent(MetasJson);
        var json:Array<TMeta> = Json.parse( content );

        // Build `Metas.hx`
        var fields = [];
        for (meta in json) {
            var name = meta.name;
            var expr = {expr:EConst(CString(meta.metadata)), pos:pos};
            var field = (macro class {
                public var $name = $expr;
            }).fields[0];
            field.doc = '`@${meta.metadata}`';
            if (meta.doc != null && meta.doc != '') {
                if (meta.doc.indexOf('(deprecated)') > -1) {
                    field.doc += '\n@deprecated';

                } else {
                    field.doc += '\n${meta.doc}';

                }
            }
            if (meta.devcomment != null) field.doc += '\n${meta.devcomment}';
            if (meta.internal != null && meta.internal) field.doc += '\nFor internal compiler use only.';
            if (meta.platforms != null) field.doc += '\nPlatform${meta.platforms.length == 0 ? 's' :''}: ${meta.platforms.join(' | ')}';
            if (meta.targets != null) field.doc += '\nApplies to: ${meta.targets.map( s -> s.substr(1) ).join(' | ')}';
            if (meta.params != null) {
                if (meta.params.length > 1) {
                    for (i in 0...meta.params.length) field.doc += '\n@param arg${i} ${meta.params[i]}';
                } else {
                    field.doc += '\n@param arg ${meta.params[0]}';
                }
            }
            if (meta.links != null) for (l in meta.links) field.doc += '\n@see $l';
            fields.push( field );

        }

        var td:TypeDefinition = macro class {}
        td.doc = '--- DO NOT EDIT ---\nThis file is auto-generated.\nBuilt from `meta.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json';
        td.pack = ['haxe', 'macro'];
        td.name = 'Metas';
        td.kind = TDAbstract(macro:String, [macro:String], [macro:String]);
        td.meta = [
            {name:':forward', params:[], pos:td.pos}, 
            {name:':forwardStatics', params:[], pos:td.pos},
            {name:':enum', params:[], pos:td.pos}, 
        ];
        td.fields = fields.concat(td.fields);

        if (!outputPath.directory().exists()) outputPath.directory().createDirectory();
        File.saveContent(outputPath, printer.printTypeDefinition(td, true).replace('@:enum abstract', 'enum abstract') );

        // Build `TypedMetas.hx`
        fields = [];
        for (meta in json) {
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
                for (type in ['TClass', 'TEnum', 'TTypedef', 'TAbstract', 'TTypeParameter']) switch meta.targets.indexOf(type) {
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
                        case 'TTypeParameter': macro:haxe.macro.Type.TypeParameter;
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
                        /** 
                            Type matches against all derived `BaseType` types and both `ClassField`, `EnumField`.
                            Indicates a list of targets, Class & ClassField or Class, Enum and Abstract are the targets,
                            but I didnt want a nested `Either<Either<..., Either<...` string being generated.
                        */
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
                        // This code so far has never been generated.
                        macro:haxe.ds.Either<$ctarget, haxe.macro.Expr.Expr>;

                    }
                }
            }
            var ctype = macro:haxe.macro.TypedMetas<$carg, $ctarget>;
            var field = (macro class {
                public var $name:$ctype = $expr;
            }).fields[0];
            field.doc = '`@${meta.metadata}`';
            if (meta.doc != null && meta.doc != '') field.doc += '\n${meta.doc}';
            if (meta.devcomment != null) field.doc += '\n${meta.devcomment}';
            if (meta.internal != null && meta.internal) field.doc += '\nFor internal compiler use only.';
            if (meta.platforms != null) field.doc += '\nPlatform${meta.platforms.length == 0 ? 's' :''}: ${meta.platforms.join(' | ')}';
            if (meta.targets != null) field.doc += '\nApplies to: ${meta.targets.map( s -> s.substr(1) ).join(' | ')}';
            if (meta.params != null) {
                if (meta.params.length > 1) {
                    for (i in 0...meta.params.length) field.doc += '\n@param arg${i} ${meta.params[i]}';
                } else {
                    field.doc += '\n@param arg ${meta.params[0]}';
                }
            }
            if (meta.links != null) for (l in meta.links) field.doc += '\n@see $l';

            fields.push( field );

        }

        var td:TypeDefinition = macro class {
            @:op(a()) function buildEmpty(?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: this, params: [], pos: pos ?? Context.currentPos() };
            }
        
            @:op(a()) static function buildWithExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<haxe.macro.Expr>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self, params: values, pos: pos ?? Context.currentPos() };
            }
        
            @:op(a()) static function buildwithParams<T>(self:TypedMetas<haxe.macro.Expr, T>, value:haxe.macro.Expr, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: [value], pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstStringExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:String, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: [macro $v{value}], pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstIntExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:Int, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: [macro $v{value}], pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstFloatExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:Float, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: [macro $v{value}], pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstBoolExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:Bool, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: [macro $v{value}], pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstStringArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<String>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: values.map(c->macro$v{c}), pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstIntArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<Int>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: values.map(c->macro$v{c}), pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstFloatArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<Float>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: values.map(c->macro$v{c}), pos: pos ?? Context.currentPos() };
            }

            @:op(a()) static function buildwithConstBoolArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<Bool>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
                return { name: self.asString(), params: values.map(c->macro$v{c}), pos: pos ?? Context.currentPos() };
            }

            @:to public inline function asString():String return this;
        }
        td.doc = '--- DO NOT EDIT ---\nThis file is auto-generated.\nBuilt off `meta.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json';
        td.pack = ['haxe', 'macro'];
        td.name = 'TypedMetas';
        td.kind = TDAbstract(macro:String, [macro:haxe.macro.Metas, macro:String], null);
        td.params = [{name:'Arg'}, {name:'Target'}];
        td.meta = [
            {name:':forward', params:[], pos:td.pos}, 
            {name:':forwardStatics', params:[], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.Voids], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.Expression], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.Expressions], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.InlinedVoids], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.InlinedSingleAny], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.InlinedArrayAny], pos:td.pos},
            {name:':using', params:[macro haxe.macro.TypedMetasTools.Empty], pos:td.pos},
            {name:':enum', params:[], pos:td.pos}, 
        ];
        td.fields = td.fields.concat(fields);

        if (!outputPath.directory().exists()) outputPath.directory().createDirectory();
        File.saveContent(outputPath.directory().addTrailingSlash() + 'TypedMetas.hx', printer.printTypeDefinition(td, true).replace('@:enum abstract', 'enum abstract'));
    }

}