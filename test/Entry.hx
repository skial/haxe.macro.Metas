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
    }

}