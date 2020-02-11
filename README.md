# Metas


Two `enum abstract`'s built off the Haxe generated file [`meta.json`](https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json).

## Install

Run `lix install gh:skial/Metas`.

## Overview

> Not all values are listed here, for brevity, check [`Metas.hx`](/src/haxe/macro/Metas.hx) for the full list.

```Haxe
enum abstract Metas(String) from String to String {
    /**
        `@:remove`
        - - -
        Causes an interface to be removed from all implementing classes before generation.
        - - -
        Applies to: Class
    **/
    public var Remove = ":remove";
    
    /**
        `@:selfCall`
        - - -
        Translates method calls into calling object directly.
        - - -
        Platform: js | lua
        - - -
        Applies to: ClassField
        @see https://haxe.org/manual/target-javascript-external-libraries.html
    **/
    public var SelfCall = ":selfCall";

    /**
        `@:semantics`
        - - -
        The native semantics of the type.
        - - -
        Applies to: Class | Typedef | Abstract
        @param value | reference | variable
    **/
    public var Semantics = ":semantics";
    
    /**
        `@:tailRecursion`
        - - -
        Internally used for tail recursion elimination.
        - - -
        For internal compiler use only.
    **/
    public var TailRecursion = ":tailRecursion";
}
```

```Haxe
enum abstract TypedMetas(String) from Metas {
    public var Remove:TypedMetas<Void, ClassType> = Metas.Remove;
    public var SelfCall:TypedMetas<Void, ClassField> = Metas.SelfCall;
    public var Semantics:TypedMetas<Expr, BaseType> = Metas.Semantics;
    public var TailRecursion:TypedMetas<Void, BaseType> = Metas.TailRecursion;
}
```

## Building `Metas.hx`

The lib includes `build.metas.hxml`, which will download the latest `meta.json` file and overwrite `src/haxe/macro/Metas.hx`.

### Dependencies

#### Haxe dependencies
Use [`lix download`](https://github.com/lix-pm/lix.client) to fetch and install the dependencies used for this repo.

#### Curl
Make sure you have `curl` available as that is the Http client used to fetch `meta.json`.

#### Build defines
If you don't have `curl`, download `meta.json` yourself and copy the path. Then
run `haxe build.meta.hxml -D metas.json=path/to/meta.json`.