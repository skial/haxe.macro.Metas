package ;

import haxe.macro.TypedMetas;

class Entry {
    
    public static function main() {
        var printer = new haxe.macro.Printer();
        var mnative = Native.asMetadataEntry(macro "hello.world");
        trace( Native );
        trace( mnative );
        trace( printer.printMetadata(mnative) );
        var expr = BypassAccessor.inlined(macro a.b);
        trace( expr );
        trace( printer.printExpr(expr) );
        var expr = NullSafety.inlined(macro Strict, macro a != null ? 1 : 2);
        trace( expr );
        trace( printer.printExpr(expr) );
        var td = (macro class Test {});
        td.meta.push(Build([macro path.to.Build.call()], td.pos));
        trace( printer.printTypeDefinition(td) );
        trace( printer.printMetadata( Build() ) );
        /*trace( printer.printMetadata( Build([macro path.to.Build.call()]) ) );*/
        trace( printer.printMetadata( Build(macro path.to.Build.call()) ) );// via static @:op(a()) with extra `from String`
        trace( printer.printMetadata( Build([macro 0, macro 'foo']) ) );
        trace( printer.printMetadata( Build('hello world') ) );
        trace( printer.printMetadata( Build(['hello', 'world']) ) );
        trace( printer.printMetadata( Build([.3,.4,.5]) ) );
    }

}