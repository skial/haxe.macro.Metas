# Metas

Two `enum abstract`'s built off the Haxe generated file [`meta.json`](https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json).

## Install

Run `lix install gh:skial/haxe.macro.Metas`.

## Overview

> Not all values are listed here, for brevity, check [`Metas.hx`](/src/haxe/macro/Metas.hx) for the full list.

```Haxe
enum abstract Metas(String) from String to String {
    /**
        `@:remove`
        Causes an interface to be removed from all implementing classes before generation.
        Applies to: Class
    **/
    public var Remove = ":remove";
    
    /**
        `@:nullSafety`
        Enables null safety for classes or fields. Disables null safety for classes, fields or expressions if provided with `Off` as an argument.
        Applies to: Class | ClassField | Expr
        @param arg Off | Loose | Strict | StrictThreaded
        @see https://haxe.org/manual/cr-null-safety.html
    **/
	public var NullSafety = ":nullSafety";

    /**
        `@:semantics`
        The native semantics of the type.
        Applies to: Class | Typedef | Abstract
        @param arg value | reference | variable
    **/
    public var Semantics = ":semantics";
    
    /**
        `@:tailRecursion`
        Internally used for tail recursion elimination.
        For internal compiler use only.
    **/
    public var TailRecursion = ":tailRecursion";
}
```

```Haxe
enum abstract TypedMetas<Arg, TargetHint>(String) from Metas {
    public var Remove:TypedMetas<Void, ClassType> = Metas.Remove;
    public var NullSafety:TypedMetas<Expr, Any> = Metas.NullSafety;
    public var Semantics:TypedMetas<Expr, BaseType> = Metas.Semantics;
    public var TailRecursion:TypedMetas<Void, BaseType> = Metas.TailRecursion;
}
```

Type parameter `Arg` will be one of:
- `Void` ~ The meta doesnt need any arguments.
- `haxe.macro.Expr` ~ Meta requires one argument.
- `Array<Expr>` ~ Meta takes multiple arguments.

Type parameter `TargetHint` will be one of:
- `haxe.macro.Type.BaseType` ~ Can be used on classes, enums, abstracts, typedefs, etc.
- `haxe.macro.Type.ClassType` ~ Should be used only on Classes.
- `haxe.macro.Type.AbstractType` ~ Should be used only on Abstract types.
- `haxe.macro.Type.ClassField` ~ Should be used only on fields.
- `{meta:haxe.macro.Type.MetaAccess}` ~ Can be used on types & fields.
- `haxe.macro.Type.TypeParameter` ~ Should be used only on type parameters.
- `haxe.macro.Expr` ~ Should be used only in expression bodies.
- `Any` ~ Can be used in any of the above.

To build `haxe.macro.Expr.MetadataEntry` values you can simply call the TypedMeta with the required args.

```Haxe
function build() {
    var entry:MetadataEntry = NullSafety(macro Strict);
    // Valid call but technically invalid @:nullSafety.
    var entry:MetadataEntry = NullSafety([macro Strict, macro Off]);
}
```

For further type safety you can use `TypedMetasTools` methods which are applied to `TypedMetas` via `@:using`.

```Haxe
function build() {
    var entry = NullSafety.asMetadataEntry(macro Strict);
    /**
    Will result in the following error:
        Array<haxe.macro.Expr> should be haxe.macro.Expr
        ... Array<haxe.macro.Expr> has no field expr
        ... For function argument 'value'
    */
    var entry = NullSafety.asMetadataEntry([macro Strict, macro Off]);
}
```

## Building `Metas.hx`

Download `meta.json` yourself and copy the path. Then run `haxe build.meta.hxml -D metas.path=path/to/meta.json`.