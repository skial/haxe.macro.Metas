package haxe.macro;
/**
	--- DO NOT EDIT ---
	This file is auto-generated.
	Built off `meta.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json
**/
@:forward @:forwardStatics @:using(haxe.macro.TypedMetasTools.Voids) @:using(haxe.macro.TypedMetasTools.Expression) @:using(haxe.macro.TypedMetasTools.Expressions) @:using(haxe.macro.TypedMetasTools.InlinedVoids) @:using(haxe.macro.TypedMetasTools.InlinedSingleAny) @:using(haxe.macro.TypedMetasTools.InlinedArrayAny) @:using(haxe.macro.TypedMetasTools.Empty) enum abstract TypedMetas<Arg, Target>(String) from haxe.macro.Metas from String {
	@:op(a())
	function buildEmpty(?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : this, params : [], pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildWithExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<haxe.macro.Expr>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self, params : values, pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithParams<T>(self:TypedMetas<haxe.macro.Expr, T>, value:haxe.macro.Expr, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : [value], pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstStringExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:String, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : [(haxe.macro.Context.makeExpr(value, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 9454, max : 9459 })) : haxe.macro.Expr)], pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstIntExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:Int, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : [(haxe.macro.Context.makeExpr(value, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 9758, max : 9763 })) : haxe.macro.Expr)], pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstFloatExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:Float, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : [(haxe.macro.Context.makeExpr(value, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 10066, max : 10071 })) : haxe.macro.Expr)], pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstBoolExpr<T>(self:TypedMetas<haxe.macro.Expr, T>, value:Bool, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : [(haxe.macro.Context.makeExpr(value, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 10372, max : 10377 })) : haxe.macro.Expr)], pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstStringArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<String>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : values.map(c -> (haxe.macro.Context.makeExpr(c, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 10714, max : 10715 })) : haxe.macro.Expr)), pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstIntArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<Int>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : values.map(c -> (haxe.macro.Context.makeExpr(c, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 11046, max : 11047 })) : haxe.macro.Expr)), pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstFloatArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<Float>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : values.map(c -> (haxe.macro.Context.makeExpr(c, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 11382, max : 11383 })) : haxe.macro.Expr)), pos : pos ?? Context.currentPos() };
	}
	@:op(a())
	static function buildwithConstBoolArrayExpr<T>(self:TypedMetas<Array<haxe.macro.Expr>, T>, values:Array<Bool>, ?pos:haxe.macro.Expr.Position):haxe.macro.Expr.MetadataEntry {
		return { name : self.asString(), params : values.map(c -> (haxe.macro.Context.makeExpr(c, haxe.macro.Context.makePosition({ file : "build/Entry.hx", min : 11716, max : 11717 })) : haxe.macro.Expr)), pos : pos ?? Context.currentPos() };
	}
	@:to
	public inline function asString():String return this;
	/**
		`@:abi`
		Function ABI/calling convention.
		Platform: cpp
	**/
	public var Abi : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Abi;
	/**
		`@:access`
		Forces private access to package, type or field.
		Applies to: Class | ClassField
		@param arg Target path
		@see https://haxe.org/manual/lf-access-control.html
	**/
	public var Access : haxe.macro.TypedMetas<haxe.macro.Expr, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.Access;
	/**
		`@:accessor`
		Used internally by DCE to mark property accessors.
		For internal compiler use only.
		Applies to: ClassField
	**/
	public var Accessor : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Accessor;
	/**
		`@:allow`
		Allows private access from package, type or field.
		@param arg Target path
		@see https://haxe.org/manual/lf-access-control.html
	**/
	public var Allow : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.BaseType> = haxe.macro.Metas.Allow;
	/**
		`@:analyzer`
		Used to configure the static analyzer.
	**/
	public var Analyzer : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Analyzer;
	/**
		`@:annotation`
		Marks a class as a Java annotation
		Platform: jvm
		Applies to: Class
		@param arg Retention policy
	**/
	public var Annotation : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassType> = haxe.macro.Metas.Annotation;
	/**
		`@:arrayAccess`
		Allows array access on an abstract.
		Applies to: Abstract | AbstractField
		@see https://haxe.org/manual/types-abstract-array-access.html
	**/
	public var ArrayAccess : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.ArrayAccess;
	/**
		`@:ast`
		Internally used to pass the AST source into the typed AST.
		For internal compiler use only.
	**/
	public var Ast : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Ast;
	/**
		`@:astSource`
		Filled by the compiler with the parsed expression of the field.
		Applies to: ClassField
	**/
	public var AstSource : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.AstSource;
	/**
		`@:autoBuild`
		Extends `@:build` metadata to all extending and implementing classes.
		Applies to: Class
		@param arg Build macro call
		@see https://haxe.org/manual/macro-auto-build.html
	**/
	public var AutoBuild : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassType> = haxe.macro.Metas.AutoBuild;
	/**
		`@:bind`
		Override SWF class declaration.
		Platform: flash
		Applies to: Class
	**/
	public var Bind : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.Bind;
	/**
		`@:bitmap`
		Embeds given bitmap data into the class (must extend `flash.display.BitmapData`).
		Platform: flash
		Applies to: Class
		@param arg Bitmap file path
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var Bitmap : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassType> = haxe.macro.Metas.Bitmap;
	/**
		`@:build`
		Builds a class, enum, or abstract from a macro.
		Applies to: Class | Enum | Abstract
		@param arg Build macro call
		@see https://haxe.org/manual/macro-type-building.html
	**/
	public var Build : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.BaseType> = haxe.macro.Metas.Build;
	/**
		`@:buildXml`
		Specify XML data to be injected into `Build.xml`.
		Platform: cpp
	**/
	public var BuildXml : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.BuildXml;
	/**
		`@:bypassAccessor`
		Do not call property accessor method and access the field directly.
		Applies to: Expr
		@see https://haxe.org/manual/class-field-property.html
	**/
	public var BypassAccessor : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.BypassAccessor;
	/**
		`@:callable`
		Abstract forwards call to its underlying type.
		Applies to: Abstract
	**/
	public var Callable : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.Callable;
	/**
		`@:commutative`
		Declares an abstract operator as commutative.
		Applies to: AbstractField
		@see https://haxe.org/manual/types-abstract-operator-overloading.html
	**/
	public var Commutative : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Commutative;
	/**
		`@:compilerGenerated`
		Marks a field as generated by the compiler. Should not be used by the end user.
		For internal compiler use only.
	**/
	public var CompilerGenerated : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.CompilerGenerated;
	/**
		`@:const`
		Allows a type parameter to accept expression values.
		Applies to: TypeParameter
	**/
	public var Const : haxe.macro.TypedMetas<Void, haxe.macro.Type.TypeParameter> = haxe.macro.Metas.Const;
	/**
		`@:coreApi`
		Identifies this class as a core API class (forces API check).
		Applies to: Class | Enum | Typedef | Abstract
	**/
	public var CoreApi : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.CoreApi;
	/**
		`@:coreType`
		Identifies an abstract as core type so that it requires no implementation.
		Applies to: Abstract
		@see https://haxe.org/manual/types-abstract-core-type.html
	**/
	public var CoreType : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.CoreType;
	/**
		`@:cppFileCode`
		Code to be injected into generated cpp file.
		Platform: cpp
	**/
	public var CppFileCode : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.CppFileCode;
	/**
		`@:cppInclude`
		File to be included in generated cpp file.
		Platform: cpp
	**/
	public var CppInclude : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.CppInclude;
	/**
		`@:cppNamespaceCode`
		Platform: cpp
	**/
	public var CppNamespaceCode : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.CppNamespaceCode;
	/**
		`@:dce`
		Forces dead code elimination even when `--dce full` is not specified.
		Applies to: Class | Enum
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var Dce : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Dce;
	/**
		`@:debug`
		Forces debug information to be generated into the SWF even without `--debug`.
		Platform: flash
		Applies to: Class | ClassField
	**/
	public var Debug : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.Debug;
	/**
		`@:decl`
		Platform: cpp
	**/
	public var Decl : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Decl;
	/**
		`@:defParam`
		Default function argument value loaded from the SWF and used for documentation in Genxml.
		For internal compiler use only.
		Platform: flash
	**/
	public var DefParam : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.DefParam;
	/**
		`@:depend`
		Platform: cpp
	**/
	public var Depend : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Depend;
	/**
		`@:deprecated`
		Mark a type or field as deprecated.
	**/
	public var Deprecated : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Deprecated;
	/**
		`@:directlyUsed`
		Marks types that are directly referenced by non-extern code.
		For internal compiler use only.
	**/
	public var DirectlyUsed : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.DirectlyUsed;
	/**
		`@:?display.override`
		Internally used to mark override fields for completion
		For internal compiler use only.
	**/
	public var DisplayOverride : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.DisplayOverride;
	/**
		`@:eager`
		Forces typedefs to be followed early.
		Applies to: Typedef
	**/
	public var Eager : haxe.macro.TypedMetas<Void, haxe.macro.Type.DefType> = haxe.macro.Metas.Eager;
	/**
		`@:enum`
		Defines finite value sets to abstract definitions.
		Applies to: Abstract
		@see https://haxe.org/manual/types-abstract-enum.html
	**/
	public var Enum : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.Enum;
	/**
		`@:exhaustive`
		Used internally to mark that a switch is exhaustive.
		For internal compiler use only.
		@see https://haxe.org/manual/lf-pattern-matching-exhaustiveness.html
	**/
	public var Exhaustive : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Exhaustive;
	/**
		`@:expose`
		Includes the class or field in Haxe exports (default name is the classpath).
		Platform: js | lua
		@param arg name
		@see https://haxe.org/manual/target-javascript-expose.html
	**/
	public var Expose : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.BaseType> = haxe.macro.Metas.Expose;
	/**
		`@:extern`
		Marks the field as extern so it is not generated.
		Applies to: ClassField
	**/
	public var Extern : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Extern;
	/**
		`@:file`
		Includes a given binary file into the target SWF and associates it with the class (must extend `flash.utils.ByteArray`).
		Platform: flash
		Applies to: Class
		@param arg File path
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var File : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassType> = haxe.macro.Metas.File;
	/**
		`@:fileXml`
		Include a given XML attribute snippet in the `Build.xml` entry for the file.
		Platform: cpp
		Applies to: Class
	**/
	public var FileXml : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.FileXml;
	/**
		`@:final`
		Prevents a class or interface from being extended or a method from being overridden. Deprecated by the keyword `final`.
		Applies to: Class | ClassField
		@see https://haxe.org/manual/class-field-final.html
	**/
	public var Final : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.Final;
	/**
		`@:fixed`
		Declares an anonymous object to have fixed fields.
		this used to have UsedOn TObjectDecl(_)
	**/
	public var Fixed : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Fixed;
	/**
		`@:flash.property`
		Platform: flash
		Applies to: ClassField
	**/
	public var FlashProperty : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.FlashProperty;
	/**
		`@:flatEnum`
		Internally used to mark an enum as being flat, i.e. having no function constructors.
		For internal compiler use only.
		Applies to: Enum
	**/
	public var FlatEnum : haxe.macro.TypedMetas<Void, haxe.macro.Type.EnumType> = haxe.macro.Metas.FlatEnum;
	/**
		`@:font`
		Embeds the given TrueType font into the class (must extend `flash.text.Font`).
		Applies to: Class
		@param arg0 TTF path
		@param arg1 Range String
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var Font : haxe.macro.TypedMetas<Array<haxe.macro.Expr>, haxe.macro.Type.ClassType> = haxe.macro.Metas.Font;
	/**
		`@:forLoopVariable`
		Internally used to mark for-loop variables.
		For internal compiler use only.
	**/
	public var ForLoopVariable : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.ForLoopVariable;
	/**
		`@:forward`
		Forwards field access to underlying type.
		Applies to: Abstract
		@param arg List of field names
		@see https://haxe.org/manual/types-abstract-forward.html
	**/
	public var Forward : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.AbstractType> = haxe.macro.Metas.Forward;
	/**
		`@:forward.new`
		Forwards constructor call to underlying type.
		Applies to: Abstract
	**/
	public var ForwardNew : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.ForwardNew;
	/**
		`@:forwardStatics`
		Forwards static field access to underlying type.
		Applies to: Abstract
		@param arg List of field names
		@see https://haxe.org/manual/types-abstract-forward.html
	**/
	public var ForwardStatics : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.AbstractType> = haxe.macro.Metas.ForwardStatics;
	/**
		`@:forward.variance`
		Forwards variance unification to underlying type.
		Applies to: Abstract
	**/
	public var ForwardVariance : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.ForwardVariance;
	/**
		`@:from`
		Specifies that the field of the abstract is a cast operation from the type identified in the function.
		Applies to: AbstractField
		@see https://haxe.org/manual/types-abstract-implicit-casts.html
	**/
	public var From : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.From;
	/**
		`@:functionalInterface`
		Mark an interface as a functional interface
		Platform: jvm
	**/
	public var FunctionalInterface : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.FunctionalInterface;
	/**
		`@:functionCode`
		Used to inject platform-native code into a function.
		Platform: cpp
	**/
	public var FunctionCode : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.FunctionCode;
	/**
		`@:functionTailCode`
		Platform: cpp
	**/
	public var FunctionTailCode : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.FunctionTailCode;
	/**
		`@:generic`
		Marks a class or class field as generic so each type parameter combination generates its own type/field.
		@see https://haxe.org/manual/type-system-generic.html
	**/
	public var Generic : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Generic;
	/**
		`@:genericBuild`
		Builds instances of a type using the specified macro.
		Applies to: Class
	**/
	public var GenericBuild : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.GenericBuild;
	/**
		`@:genericInstance`
		Internally used to mark instances of `@:generic` methods.
		For internal compiler use only.
		Applies to: ClassField
	**/
	public var GenericInstance : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.GenericInstance;
	/**
		`@:genericClassPerMethod`
		Makes compiler generate separate class per generic static method specialization
		Applies to: Class
	**/
	public var GenericClassPerMethod : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.GenericClassPerMethod;
	/**
		`@:getter`
		Generates a native getter function on the given field.
		Platform: flash
		Applies to: ClassField
		@param arg Class field name
	**/
	public var Getter : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassField> = haxe.macro.Metas.Getter;
	/**
		`@:hack`
		Allows extending classes marked as `@:final`. Not guaranteed to work on all targets.
		Applies to: Class
	**/
	public var Hack : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.Hack;
	/**
		`@:has_untyped`
		Used by the typer to mark fields that have untyped expressions.
		For internal compiler use only.
	**/
	public var HasUntyped : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HasUntyped;
	/**
		`@:headerClassCode`
		Code to be injected into the generated class, in the header.
		Platform: cpp
	**/
	public var HeaderClassCode : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HeaderClassCode;
	/**
		`@:headerCode`
		Code to be injected into the generated header file.
		Platform: cpp
	**/
	public var HeaderCode : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HeaderCode;
	/**
		`@:headerInclude`
		File to be included in generated header file.
		Platform: cpp
	**/
	public var HeaderInclude : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HeaderInclude;
	/**
		`@:headerNamespaceCode`
		Platform: cpp
	**/
	public var HeaderNamespaceCode : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HeaderNamespaceCode;
	/**
		`@:hlNative`
		Specifies `hdll` name and function prefix for native functions.
		Platform: hl
		Applies to: Class | ClassField
	**/
	public var HlNative : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.HlNative;
	/**
		`@:hxb.id`
		Internally used by hxb
		For internal compiler use only.
	**/
	public var HxbId : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HxbId;
	/**
		`@:hx.completion`
		Internally used for completion
		For internal compiler use only.
	**/
	public var HxCompletion : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HxCompletion;
	/**
		`@:hxGen`
		Annotates that an extern class was generated by Haxe.
		Applies to: Class | Enum
	**/
	public var HxGen : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.HxGen;
	/**
		`@:ifFeature`
		Causes a field to be kept by DCE if the given feature is part of the compilation.
		Applies to: ClassField
		@param arg Feature name
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var IfFeature : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassField> = haxe.macro.Metas.IfFeature;
	/**
		`@:pythonImport`
		Generates python import statement for extern classes.
		Platform: python
		Applies to: Class
	**/
	public var PythonImport : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.PythonImport;
	/**
		`@:implicitCast`
		Generated automatically on the AST when an implicit abstract cast happens.
		For internal compiler use only.
		Applies to: Expr
	**/
	public var ImplicitCast : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.ImplicitCast;
	/**
		`@:implicitReturn`
		Generated automatically on the AST when an implicit return is inserted for arrow function.
		For internal compiler use only.
		Applies to: Expr
	**/
	public var ImplicitReturn : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.ImplicitReturn;
	/**
		`@:include`
		Platform: cpp
	**/
	public var Include : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Include;
	/**
		`@:inheritDoc`
		Append documentation from a parent field or class (if used without an argument) or from a specified class or field (if used like @:inheritDoc(pack.Some.field)).
		Applies to: Class | Enum | Abstract | AnyField
	**/
	public var InheritDoc : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.InheritDoc;
	/**
		`@:initPackage`
		Some weird thing for Genjs we want to remove someday.
		For internal compiler use only.
		Platform: js
	**/
	public var InitPackage : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.InitPackage;
	/**
		`@:inline`
		Inserted by the parser in case of `inline expr` and `inline function`.
		Applies to: Expr
	**/
	public var Inline : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.Inline;
	/**
		`@:inlineConstructorArgument`
		Internally used to mark expressions that were passed as arguments of an inlined constructor.
		For internal compiler use only.
	**/
	public var InlineConstructorArgument : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.InlineConstructorArgument;
	/**
		`@:inlineObject`
		Internally used by inline constructors filter to mark potentially inlineable objects.
		For internal compiler use only.
	**/
	public var InlineObject : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.InlineObject;
	/**
		`@:isVar`
		Forces a physical field to be generated for properties that otherwise would not require one.
		Applies to: ClassField
		@see https://haxe.org/manual/class-field-property-rules.html
	**/
	public var IsVar : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.IsVar;
	/**
		`@:java.default`
		Equivalent to the default modifier of the Java language
		Platform: jvm
		Applies to: ClassField
	**/
	public var JavaDefault : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.JavaDefault;
	/**
		`@:jvm.synthetic`
		Mark generated class, field or method as synthetic
		Platform: jvm
		Applies to: Class | Enum | AnyField
	**/
	public var JvmSynthetic : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.JvmSynthetic;
	/**
		`@:jsRequire`
		Generate JavaScript module require expression for given extern.
		Platform: js
		Applies to: Class
		@see https://haxe.org/manual/target-javascript-require.html
	**/
	public var JsRequire : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.JsRequire;
	/**
		`@:luaRequire`
		Generate Lua module require expression for given extern.
		Platform: lua
		Applies to: Class
	**/
	public var LuaRequire : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.LuaRequire;
	/**
		`@:luaDotMethod`
		Indicates that the given extern type instance should have dot-style invocation for methods instead of colon.
		Platform: lua
	**/
	public var LuaDotMethod : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.LuaDotMethod;
	/**
		`@:keep`
		Causes a field or type to be kept by DCE.
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var Keep : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Keep;
	/**
		`@:keepInit`
		Causes a class to be kept by DCE even if all its field are removed.
		Applies to: Class
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var KeepInit : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.KeepInit;
	/**
		`@:keepSub`
		Extends `@:keep` metadata to all implementing and extending classes.
		Applies to: Class
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var KeepSub : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.KeepSub;
	/**
		`@:libType`
		Used by `--net-lib` and `--java-lib` to mark a class that should not be checked (overrides, interfaces, etc) by the type loader.
		For internal compiler use only.
		Platform: jvm
		Applies to: Class
	**/
	public var LibType : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.LibType;
	/**
		`@:loopLabel`
		Mark loop and break expressions with a label to support breaking from within switch.
		For internal compiler use only.
	**/
	public var LoopLabel : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.LoopLabel;
	/**
		`@:markup`
		Used as a result of inline XML parsing.
		@see https://haxe.org/manual/lf-markup.html
	**/
	public var Markup : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Markup;
	/**
		`@:meta`
		Internally used to mark a class field as being the metadata field.
		For internal compiler use only.
	**/
	public var Meta : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Meta;
	/**
		`@:macro`
		(deprecated)
	**/
	public var Macro : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Macro;
	/**
		`@:mergeBlock`
		Merge the annotated block into the current scope.
		Applies to: Expr
	**/
	public var MergeBlock : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.MergeBlock;
	/**
		`@:multiReturn`
		Annotates an extern class as the result of multi-return function.
		Platform: lua
		Applies to: Class
		@see https://haxe.org/manual/target-lua-multireturns.html
	**/
	public var MultiReturn : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.MultiReturn;
	/**
		`@:multiType`
		Specifies that an abstract chooses its this-type from its `@:to` functions.
		Applies to: Abstract
		@param arg Relevant type parameters
	**/
	public var MultiType : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.AbstractType> = haxe.macro.Metas.MultiType;
	/**
		`@:native`
		Rewrites the path of a type or class field during generation.
		Applies to: Class | Enum | Abstract | ClassField
		@param arg Output path
		@see https://haxe.org/manual/lf-externs.html
	**/
	public var Native : haxe.macro.TypedMetas<haxe.macro.Expr, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.Native;
	/**
		`@:java.native`
		Annotates that a function has implementation in native code through JNI.
		Platform: jvm
		Applies to: ClassField
	**/
	public var NativeJni : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.NativeJni;
	/**
		`@:nativeGen`
		Annotates that a type should be treated as if it were an extern definition - platform native.
		Platform: python
		Applies to: Class | Enum
	**/
	public var NativeGen : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NativeGen;
	/**
		`@:nativeProperty`
		Use native properties which will execute even with dynamic usage.
		Platform: cpp
	**/
	public var NativeProperty : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NativeProperty;
	/**
		`@:nativeStaticExtension`
		Converts static function syntax into member call.
		Platform: cpp
	**/
	public var NativeStaticExtension : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NativeStaticExtension;
	/**
		`@:noCompletion`
		Prevents the compiler from suggesting completion on this field or type.
		Applies to: ClassField
		@see https://haxe.org/manual/cr-completion.html
	**/
	public var NoCompletion : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.NoCompletion;
	/**
		`@:noClosure`
		Prevents a method or all methods in a class from being used as a value.
		Applies to: Class | ClassField
	**/
	public var NoClosure : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.NoClosure;
	/**
		`@:noDebug`
		Does not generate debug information even if `--debug` is set.
		Platform: flash | cpp
		Applies to: Class | ClassField
	**/
	public var NoDebug : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.NoDebug;
	/**
		`@:noDoc`
		Prevents a type or field from being included in documentation generation.
	**/
	public var NoDoc : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NoDoc;
	/**
		`@:noExpr`
		Internally used to mark abstract fields which have no expression by design.
		For internal compiler use only.
	**/
	public var NoExpr : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NoExpr;
	/**
		`@:noImportGlobal`
		Prevents a static field from being imported with `import Class.*`.
		Applies to: AnyField
	**/
	public var NoImportGlobal : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.NoImportGlobal;
	/**
		`@:nonVirtual`
		Declares function to be non-virtual in cpp.
		Platform: cpp
	**/
	public var NonVirtual : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NonVirtual;
	/**
		`@:noPackageRestrict`
		Allows a module to be accessed across all targets if found on its first type.
		For internal compiler use only.
	**/
	public var NoPackageRestrict : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NoPackageRestrict;
	/**
		`@:noPrivateAccess`
		Disallow private access to anything for the annotated expression.
		Applies to: Expr
	**/
	public var NoPrivateAccess : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.NoPrivateAccess;
	/**
		`@:noStack`
		Platform: cpp
	**/
	public var NoStack : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NoStack;
	/**
		`@:notNull`
		Declares an abstract type as not accepting null values.
		Applies to: Abstract
		@see https://haxe.org/manual/types-nullability.html
	**/
	public var NotNull : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.NotNull;
	/**
		`@:noUsing`
		Prevents a field from being used with static extension.
		Applies to: ClassField
		@see https://haxe.org/manual/lf-static-extension.html
	**/
	public var NoUsing : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.NoUsing;
	/**
		`@:ns`
		Internally used by the SWF generator to handle namespaces.
		For internal compiler use only.
		Platform: flash
	**/
	public var Ns : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Ns;
	/**
		`@:nullSafety`
		Enables null safety for classes or fields. Disables null safety for classes, fields or expressions if provided with `Off` as an argument.
		Applies to: Class | ClassField | Expr
		@param arg Off | Loose | Strict | StrictThreaded
		@see https://haxe.org/manual/cr-null-safety.html
	**/
	public var NullSafety : haxe.macro.TypedMetas<haxe.macro.Expr, Any> = haxe.macro.Metas.NullSafety;
	/**
		`@:objc`
		Declares a class or interface that is used to interoperate with Objective-C code.
		Platform: cpp
		Applies to: Class
	**/
	public var Objc : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.Objc;
	/**
		`@:objcProtocol`
		Associates an interface with, or describes a function in, a native Objective-C protocol.
		Platform: cpp
	**/
	public var ObjcProtocol : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.ObjcProtocol;
	/**
		`@:op`
		Declares an abstract field as being an operator overload.
		Applies to: AbstractField
		@param arg The operation
		@see https://haxe.org/manual/types-abstract-operator-overloading.html
	**/
	public var Op : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassField> = haxe.macro.Metas.Op;
	/**
		`@:optional`
		Marks the field of a structure as optional.
		Applies to: ClassField
		@see https://haxe.org/manual/types-nullability-optional-arguments.html
	**/
	public var Optional : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Optional;
	/**
		`@:overload`
		Allows the field to be called with different argument types.
		Applies to: ClassField
		@param arg Function specification (no expression)
		@see https://haxe.org/manual/target-javascript-external-libraries.html
	**/
	public var Overload : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassField> = haxe.macro.Metas.Overload;
	/**
		`@:persistent`
		Keeps the value of static variables in macro context across compilations.
		Platform: eval
		Applies to: AnyField
	**/
	public var Persistent : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Persistent;
	/**
		`@:php.attribute`
		Adds a PHP attribute to the annotated symbol. Meta argument expects a string constant. E.g. `@:php.attribute('\\my\\Attr(123)')` will be generated as `#[\my\Attr(123)]` in the compiled php file.
		Platform: php
		@see https://www.php.net/manual/en/language.attributes.overview.php
	**/
	public var PhpAttribute : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.PhpAttribute;
	/**
		`@:phpGlobal`
		Indicates that static fields of an extern class actually are located in the global PHP namespace.
		Platform: php
		Applies to: Class
	**/
	public var PhpGlobal : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.PhpGlobal;
	/**
		`@:phpClassConst`
		Indicates that a static var of an extern class is a PHP class constant.
		Platform: php
		Applies to: ClassField
	**/
	public var PhpClassConst : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.PhpClassConst;
	/**
		`@:phpMagic`
		Treat annotated field as special PHP magic field - this meta makes compiler avoid renaming such fields on generating PHP code.
		Platform: php
		Applies to: ClassField
	**/
	public var PhpMagic : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.PhpMagic;
	/**
		`@:phpNoConstructor`
		Special meta for extern classes which do not have native constructor in PHP, but need a constructor in Haxe extern.
		Platform: php
		Applies to: Class
	**/
	public var PhpNoConstructor : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.PhpNoConstructor;
	/**
		`@:pos`
		Sets the position of a reified expression.
		Applies to: Expr
		@param arg Position
		@see https://haxe.org/manual/macro-reification.html
	**/
	public var Pos : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Expr> = haxe.macro.Metas.Pos;
	/**
		`@:public`
		Marks a class field as being public.
		For internal compiler use only.
		Applies to: ClassField
	**/
	public var Public : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Public;
	/**
		`@:publicFields`
		Forces all class fields of inheriting classes to be public.
		Applies to: Class
	**/
	public var PublicFields : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.PublicFields;
	/**
		`@:private`
		Marks a class field as being private.
		Platform: jvm
		Applies to: ClassField
	**/
	public var Private : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Private;
	/**
		`@:privateAccess`
		Allow private access to anything for the annotated expression.
		Applies to: Expr
	**/
	public var PrivateAccess : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.PrivateAccess;
	/**
		`@:protected`
		Marks a class field as being protected.
		Platform: jvm | flash
		Applies to: ClassField
	**/
	public var Protected : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Protected;
	/**
		`@:pure`
		Marks a class field, class or expression as pure (side-effect free).
		Applies to: Class | ClassField | Expr
	**/
	public var Pure : haxe.macro.TypedMetas<Void, Any> = haxe.macro.Metas.Pure;
	/**
		`@:realPath`
		Internally used on `@:native` types to retain original path information.
		For internal compiler use only.
	**/
	public var RealPath : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.RealPath;
	/**
		`@:remove`
		Causes an interface to be removed from all implementing classes before generation.
		Applies to: Class
	**/
	public var Remove : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.Remove;
	/**
		`@:require`
		Allows access to a field only if the specified compiler flag is set.
		Applies to: ClassField
		@param arg Compiler flag to check
		@see https://haxe.org/manual/lf-condition-compilation.html
	**/
	public var Require : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassField> = haxe.macro.Metas.Require;
	/**
		`@:resolve`
		Abstract fields marked with this metadata can be used to resolve unknown fields.
		Applies to: ClassField
	**/
	public var Resolve : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Resolve;
	/**
		`@:rtti`
		Adds runtime type information.
		Applies to: Class
		@see https://haxe.org/manual/cr-rtti.html
	**/
	public var Rtti : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.Rtti;
	/**
		`@:runtime`
		For internal compiler use only.
	**/
	public var Runtime : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Runtime;
	/**
		`@:runtimeValue`
		Marks an abstract as being a runtime value.
		Applies to: Abstract
	**/
	public var RuntimeValue : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.RuntimeValue;
	/**
		`@:scalar`
		Used by hxcpp to mark a custom coreType abstract.
		Platform: cpp
		Applies to: Abstract
	**/
	public var Scalar : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.Scalar;
	/**
		`@:selfCall`
		Translates method calls into calling object directly.
		Platform: js | lua
		Applies to: ClassField
		@see https://haxe.org/manual/target-javascript-external-libraries.html
	**/
	public var SelfCall : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.SelfCall;
	/**
		`@:semantics`
		The native semantics of the type.
		Applies to: Class | Typedef | Abstract
		@param arg value | reference | variable
	**/
	public var Semantics : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.BaseType> = haxe.macro.Metas.Semantics;
	/**
		`@:setter`
		Generates a native setter function on the given field.
		Platform: flash
		Applies to: ClassField
		@param arg Class field name
	**/
	public var Setter : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassField> = haxe.macro.Metas.Setter;
	/**
		`@:sound`
		Includes a given .wav or .mp3 file into the target SWF and associates it with the class (must extend `flash.media.Sound`).
		Platform: flash
		Applies to: Class
		@param arg File path
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var Sound : haxe.macro.TypedMetas<haxe.macro.Expr, haxe.macro.Type.ClassType> = haxe.macro.Metas.Sound;
	/**
		`@:sourceFile`
		Source code filename for external class.
		Platform: cpp
	**/
	public var SourceFile : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.SourceFile;
	/**
		`@:stackOnly`
		Instances of this type can only appear on the stack.
		Platform: cpp
	**/
	public var StackOnly : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.StackOnly;
	/**
		`@haxe.internal.static_extension`
		Used internally to mark static extension fields.
		For internal compiler use only.
	**/
	public var StaticExtension : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.StaticExtension;
	/**
		`@:storedTypedExpr`
		Used internally to reference a typed expression returned from a macro.
		For internal compiler use only.
	**/
	public var StoredTypedExpr : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.StoredTypedExpr;
	/**
		`@:strict`
		Used to declare a native Java metadata; is type checked.
		Platform: jvm
	**/
	public var Strict : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Strict;
	/**
		`@:struct`
		Marks a class definition as a struct.
		Platform: hl
		Applies to: Class
	**/
	public var Struct : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.Struct;
	/**
		`@:structAccess`
		Marks an extern class as using struct access (`.`) not pointer (`->`).
		Platform: cpp
		Applies to: Class
	**/
	public var StructAccess : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.StructAccess;
	/**
		`@:structInit`
		Allows one to initialize the class with a structure that matches constructor parameters.
		Applies to: Class
	**/
	public var StructInit : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassType> = haxe.macro.Metas.StructInit;
	/**
		`@:tailRecursion`
		Internally used for tail recursion elimination.
		For internal compiler use only.
	**/
	public var TailRecursion : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.TailRecursion;
	/**
		`@:templatedCall`
		Indicates that the first parameter of static call should be treated as a template argument.
		Platform: cpp
		Applies to: ClassField
	**/
	public var TemplatedCall : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.TemplatedCall;
	/**
		`@:this`
		Internally used to pass a `this` expression to macros.
		For internal compiler use only.
		Applies to: Expr
	**/
	public var This : haxe.macro.TypedMetas<Void, haxe.macro.Expr> = haxe.macro.Metas.This;
	/**
		`@:to`
		Specifies that the field of the abstract is a cast operation to the type identified in the function.
		Applies to: AbstractField
		@see https://haxe.org/manual/types-abstract-implicit-casts.html
	**/
	public var To : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.To;
	/**
		`@:toString`
		Internally used.
		For internal compiler use only.
	**/
	public var ToString : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.ToString;
	/**
		`@:transitive`
		Allows transitive casts with an abstract.
		Applies to: Abstract
	**/
	public var Transitive : haxe.macro.TypedMetas<Void, haxe.macro.Type.AbstractType> = haxe.macro.Metas.Transitive;
	/**
		`@:valueUsed`
		Internally used by DCE to mark an abstract value as used.
		For internal compiler use only.
	**/
	public var ValueUsed : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.ValueUsed;
	/**
		`@:volatile`
		Platform: jvm
	**/
	public var Volatile : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Volatile;
	/**
		`@:unifyMinDynamic`
		Allows a collection of types to unify to `Dynamic`.
		Applies to: ClassField
	**/
	public var UnifyMinDynamic : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.UnifyMinDynamic;
	/**
		`@:unreflective`
		Platform: cpp
	**/
	public var Unreflective : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Unreflective;
	/**
		`@:used`
		Internally used by DCE to mark a class or field as used.
		For internal compiler use only.
	**/
	public var Used : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Used;
	/**
		`@:using`
		Automatically uses the argument types as static extensions for the annotated type.
		Applies to: Class | Enum | Abstract
		@see https://haxe.org/manual/lf-static-extension-metadata.html
	**/
	public var Using : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Using;
	/**
		`@:value`
		Used to store default values for fields and function arguments.
		For internal compiler use only.
		Applies to: ClassField
	**/
	public var Value : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.Value;
	/**
		`@:haxe.arguments`
		Used to store function arguments.
		For internal compiler use only.
		Applies to: ClassField
	**/
	public var HaxeArguments : haxe.macro.TypedMetas<Void, haxe.macro.Type.ClassField> = haxe.macro.Metas.HaxeArguments;
	/**
		`@:haxe.warning`
		Modifies warning options, equivalent to the -w CLI argument
		Applies to: Class | ClassField
	**/
	public var HaxeWarning : haxe.macro.TypedMetas<Void, { var meta : haxe.macro.Type.MetaAccess; }> = haxe.macro.Metas.HaxeWarning;
	/**
		`@:void`
		Use Cpp native `void` return type.
		Platform: cpp
	**/
	public var Void : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.Void;
	/**
		`@:needsExceptionStack`
		Internally used for some of auto-generated `catch` vars
		For internal compiler use only.
	**/
	public var NeedsExceptionStack : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NeedsExceptionStack;
	/**
		`@:wrappedException`
		Internally used for exceptions wrapping in `throw` expressions.
		For internal compiler use only.
	**/
	public var WrappedException : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.WrappedException;
	/**
		`@:nativeArrayAccess`
		When used on an extern class which implements haxe.ArrayAccess native array access syntax will be generated
		Platform: cpp
	**/
	public var NativeArrayAccess : haxe.macro.TypedMetas<Void, haxe.macro.Type.BaseType> = haxe.macro.Metas.NativeArrayAccess;
}