package haxe.macro;

import haxe.macro.Expr;
import haxe.macro.Context;

class Voids {
    public static inline function asMetadataEntry<T>(tm:TypedMetas<Void, T>, ?pos:Position):MetadataEntry {
        return { name: tm, params: [], pos: pos == null ? Context.currentPos() : pos };
    }
}

class Expression {
    public static inline function asMetadataEntry<A:Expr, T>(tm:TypedMetas<A, T>, value:A, ?pos:Position):MetadataEntry {
        return { name: tm, params: [value], pos: pos == null ? Context.currentPos() : pos };
    }
}

class Expressions {
    public static inline function asMetadataEntry<A:Array<Expr>, T>(tm:TypedMetas<A, T>, value:A, ?pos:Position):MetadataEntry {
        return { name: tm, params: value, pos: pos == null ? Context.currentPos() : pos };
    }
}

class InlinedVoids {
    public static function inlined<T:Expr>(tm:TypedMetas<Void, T>, expr:T, ?pos:Position):Expr {
        if (pos == null) pos = Context.currentPos();
        return { expr:EMeta({name:tm, params:[], pos:pos}, expr), pos: pos };
    }
}

class InlinedSingleAny {
    public static function inlined<T>(tm:TypedMetas<Expr, T>, param:Expr, expr:Expr, ?pos:Position):Expr {
        if (pos == null) pos = Context.currentPos();
        return { expr:EMeta({name:tm, params:[param], pos:pos}, expr), pos: pos };
    }
}

class InlinedArrayAny {
    public static function inlined(tm:TypedMetas<Array<Expr>, Any>, params:Array<Expr>, expr:Expr, ?pos:Position):Expr {
        if (pos == null) pos = Context.currentPos();
        return { expr:EMeta({name:tm, params:params, pos:pos}, expr), pos: pos };
    }
}

class Empty {
    public static inline function asMetadataEntry<T>(tm:TypedMetas<Any, T>, ?pos:Position):MetadataEntry {
        return { name: tm, params: [], pos: pos == null ? Context.currentPos() : pos };
    }
}
