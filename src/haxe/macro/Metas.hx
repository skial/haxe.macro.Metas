package haxe.macro;
/**
	Do not edit this file it is auto-generated.
	Built off `meta.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/meta.json
**/
@:enum @:forward @:forwardStatics abstract Metas(String) from String to String {
	/**
		`@:abi`
		- - -
		Function ABI/calling convention.
		- - -
		Platform: cpp
	**/
	public var Abi = ":abi";
	/**
		`@:abstract`
		- - -
		Sets the underlying class implementation as `abstract`.
		- - -
		Platform: java | cs
	**/
	public var Abstract = ":abstract";
	/**
		`@:access`
		- - -
		Forces private access to package, type or field.
		- - -
		Applies to: Class | ClassField
		@param Target path
		@see https://haxe.org/manual/lf-access-control.html
	**/
	public var Access = ":access";
	/**
		`@:accessor`
		- - -
		Used internally by DCE to mark property accessors.
		- - -
		For internal compiler use only.
		- - -
		Applies to: ClassField
	**/
	public var Accessor = ":accessor";
	/**
		`@:allow`
		- - -
		Allows private access from package, type or field.
		@param Target path
		@see https://haxe.org/manual/lf-access-control.html
	**/
	public var Allow = ":allow";
	/**
		`@:analyzer`
		- - -
		Used to configure the static analyzer.
	**/
	public var Analyzer = ":analyzer";
	/**
		`@:annotation`
		- - -
		Annotation (`@interface`) definitions on `--java-lib` imports will be annotated with this metadata. Has no effect on types compiled by Haxe.
		- - -
		Platform: java
		- - -
		Applies to: Class
	**/
	public var Annotation = ":annotation";
	/**
		`@:arrayAccess`
		- - -
		Allows array access on an abstract.
		- - -
		Applies to: Abstract | AbstractField
		@see https://haxe.org/manual/types-abstract-array-access.html
	**/
	public var ArrayAccess = ":arrayAccess";
	/**
		`@:ast`
		- - -
		Internally used to pass the AST source into the typed AST.
		- - -
		For internal compiler use only.
	**/
	public var Ast = ":ast";
	/**
		`@:astSource`
		- - -
		Filled by the compiler with the parsed expression of the field.
		- - -
		Applies to: ClassField
	**/
	public var AstSource = ":astSource";
	/**
		`@:autoBuild`
		- - -
		Extends `@:build` metadata to all extending and implementing classes.
		- - -
		Applies to: Class
		@param Build macro call
		@see https://haxe.org/manual/macro-auto-build.html
	**/
	public var AutoBuild = ":autoBuild";
	/**
		`@:bind`
		- - -
		Override SWF class declaration.
		- - -
		Platform: flash
		- - -
		Applies to: Class
	**/
	public var Bind = ":bind";
	/**
		`@:bitmap`
		- - -
		Embeds given bitmap data into the class (must extend `flash.display.BitmapData`).
		- - -
		Platform: flash
		- - -
		Applies to: Class
		@param Bitmap file path
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var Bitmap = ":bitmap";
	/**
		`@:bridgeProperties`
		- - -
		Creates native property bridges for all Haxe properties in this class.
		- - -
		Platform: cs
		- - -
		Applies to: Class
	**/
	public var BridgeProperties = ":bridgeProperties";
	/**
		`@:build`
		- - -
		Builds a class or enum from a macro.
		- - -
		Applies to: Class | Enum
		@param Build macro call
		@see https://haxe.org/manual/macro-type-building.html
	**/
	public var Build = ":build";
	/**
		`@:buildXml`
		- - -
		Specify XML data to be injected into `Build.xml`.
		- - -
		Platform: cpp
	**/
	public var BuildXml = ":buildXml";
	/**
		`@:bypassAccessor`
		- - -
		Do not call property accessor method and access the field directly.
		- - -
		Applies to: Expr
		@see https://haxe.org/manual/class-field-property.html
	**/
	public var BypassAccessor = ":bypassAccessor";
	/**
		`@:callable`
		- - -
		Abstract forwards call to its underlying type.
		- - -
		Applies to: Abstract
	**/
	public var Callable = ":callable";
	/**
		`@:class`
		- - -
		Used internally to annotate an enum that will be generated as a class.
		- - -
		For internal compiler use only.
		- - -
		Platform: java | cs
		- - -
		Applies to: Enum
	**/
	public var Class = ":class";
	/**
		`@:classCode`
		- - -
		Used to inject platform-native code into a class.
		- - -
		Platform: java | cs
		- - -
		Applies to: Class
	**/
	public var ClassCode = ":classCode";
	/**
		`@:commutative`
		- - -
		Declares an abstract operator as commutative.
		- - -
		Applies to: AbstractField
		@see https://haxe.org/manual/types-abstract-operator-overloading.html
	**/
	public var Commutative = ":commutative";
	/**
		`@:compilerGenerated`
		- - -
		Marks a field as generated by the compiler. Should not be used by the end user.
		- - -
		Platform: java | cs
	**/
	public var CompilerGenerated = ":compilerGenerated";
	/**
		`@:const`
		- - -
		Allows a type parameter to accept expression values.
		- - -
		Applies to: TypeParameter
	**/
	public var Const = ":const";
	/**
		`@:coreApi`
		- - -
		Identifies this class as a core API class (forces API check).
		- - -
		Applies to: Class | Enum | Typedef | Abstract
	**/
	public var CoreApi = ":coreApi";
	/**
		`@:coreType`
		- - -
		Identifies an abstract as core type so that it requires no implementation.
		- - -
		Applies to: Abstract
		@see https://haxe.org/manual/types-abstract-core-type.html
	**/
	public var CoreType = ":coreType";
	/**
		`@:cppFileCode`
		- - -
		Code to be injected into generated cpp file.
		- - -
		Platform: cpp
	**/
	public var CppFileCode = ":cppFileCode";
	/**
		`@:cppInclude`
		- - -
		File to be included in generated cpp file.
		- - -
		Platform: cpp
	**/
	public var CppInclude = ":cppInclude";
	/**
		`@:cppNamespaceCode`
		
		- - -
		Platform: cpp
	**/
	public var CppNamespaceCode = ":cppNamespaceCode";
	/**
		`@:csNative`
		- - -
		Automatically added by `--net-lib` on classes generated from .NET DLL files.
		- - -
		For internal compiler use only.
		- - -
		Platform: cs
		- - -
		Applies to: Class | Enum
	**/
	public var CsNative = ":csNative";
	/**
		`@:dce`
		- - -
		Forces dead code elimination even when `--dce full` is not specified.
		- - -
		Applies to: Class | Enum
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var Dce = ":dce";
	/**
		`@:debug`
		- - -
		Forces debug information to be generated into the SWF even without `--debug`.
		- - -
		Platform: flash
		- - -
		Applies to: Class | ClassField
	**/
	public var Debug = ":debug";
	/**
		`@:decl`
		
		- - -
		Platform: cpp
	**/
	public var Decl = ":decl";
	/**
		`@:defParam`
		- - -
		Default function argument value loaded from the SWF and used for documentation in Genxml.
		- - -
		For internal compiler use only.
		- - -
		Platform: flash
	**/
	public var DefParam = ":defParam";
	/**
		`@:delegate`
		- - -
		Automatically added by `--net-lib` on delegates.
		- - -
		Platform: cs
		- - -
		Applies to: Abstract
	**/
	public var Delegate = ":delegate";
	/**
		`@:depend`
		
		- - -
		Platform: cpp
	**/
	public var Depend = ":depend";
	/**
		`@:deprecated`
		- - -
		Mark a type or field as deprecated.
	**/
	public var Deprecated = ":deprecated";
	/**
		`@:directlyUsed`
		- - -
		Marks types that are directly referenced by non-extern code.
		- - -
		For internal compiler use only.
	**/
	public var DirectlyUsed = ":directlyUsed";
	/**
		`@:?display.override`
		- - -
		Internally used to mark override fields for completion
		- - -
		For internal compiler use only.
	**/
	public var DisplayOverride = ":?display.override";
	/**
		`@:dynamicObject`
		- - -
		Used internally to identify the Dynamic Object implementation.
		- - -
		For internal compiler use only.
		- - -
		Platform: java | cs
		- - -
		Applies to: Class
	**/
	public var DynamicObject = ":dynamicObject";
	/**
		`@:eager`
		- - -
		Forces typedefs to be followed early.
		- - -
		Applies to: Typedef
	**/
	public var Eager = ":eager";
	/**
		`@:enum`
		- - -
		Defines finite value sets to abstract definitions.
		- - -
		Applies to: Abstract
		@see https://haxe.org/manual/types-abstract-enum.html
	**/
	public var Enum = ":enum";
	/**
		`@:enumConstructorParam`
		- - -
		Used internally to annotate GADT type parameters.
		- - -
		For internal compiler use only.
		- - -
		Applies to: Class
	**/
	public var EnumConstructorParam = ":enumConstructorParam";
	/**
		`@:event`
		- - -
		Automatically added by `--net-lib` on events. Has no effect on types compiled by Haxe.
		- - -
		Platform: cs
		- - -
		Applies to: ClassField
	**/
	public var Event = ":event";
	/**
		`@:exhaustive`
		- - -
		Used internally to mark that a switch is exhaustive.
		- - -
		For internal compiler use only.
		@see https://haxe.org/manual/lf-pattern-matching-exhaustiveness.html
	**/
	public var Exhaustive = ":exhaustive";
	/**
		`@:expose`
		- - -
		Includes the class or field in Haxe exports (default name is the classpath).
		- - -
		Platform: js | lua
		@param name
		@see https://haxe.org/manual/target-javascript-expose.html
	**/
	public var Expose = ":expose";
	/**
		`@:extern`
		- - -
		Marks the field as extern so it is not generated.
		- - -
		Applies to: ClassField
	**/
	public var Extern = ":extern";
	/**
		`@:file`
		- - -
		Includes a given binary file into the target SWF and associates it with the class (must extend `flash.utils.ByteArray`).
		- - -
		Platform: flash
		- - -
		Applies to: Class
		@param File path
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var File = ":file";
	/**
		`@:fileXml`
		- - -
		Include a given XML attribute snippet in the `Build.xml` entry for the file.
		- - -
		Platform: cpp
		- - -
		Applies to: Class
	**/
	public var FileXml = ":fileXml";
	/**
		`@:final`
		- - -
		Prevents a class or interface from being extended or a method from being overridden. Deprecated by the keyword `final`.
		- - -
		Applies to: Class | ClassField
		@see https://haxe.org/manual/class-field-final.html
	**/
	public var Final = ":final";
	/**
		`@:fixed`
		- - -
		Declares an anonymous object to have fixed fields.
		this used to have UsedOn TObjectDecl(_)
	**/
	public var Fixed = ":fixed";
	/**
		`@:flash.property`
		
		- - -
		Platform: flash
		- - -
		Applies to: ClassField
	**/
	public var FlashProperty = ":flash.property";
	/**
		`@:flatEnum`
		- - -
		Internally used to mark an enum as being flat, i.e. having no function constructors.
		- - -
		For internal compiler use only.
		- - -
		Applies to: Enum
	**/
	public var FlatEnum = ":flatEnum";
	/**
		`@:font`
		- - -
		Embeds the given TrueType font into the class (must extend `flash.text.Font`).
		- - -
		Applies to: Class
		@param TTF path
		@param Range String
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var Font = ":font";
	/**
		`@:forLoopVariable`
		- - -
		Internally used to mark for-loop variables.
		- - -
		For internal compiler use only.
	**/
	public var ForLoopVariable = ":forLoopVariable";
	/**
		`@:forward`
		- - -
		Forwards field access to underlying type.
		- - -
		Applies to: Abstract
		@param List of field names
		@see https://haxe.org/manual/types-abstract-forward.html
	**/
	public var Forward = ":forward";
	/**
		`@:forwardStatics`
		- - -
		Forwards static field access to underlying type.
		- - -
		Applies to: Abstract
		@param List of field names
		@see https://haxe.org/manual/types-abstract-forward.html
	**/
	public var ForwardStatics = ":forwardStatics";
	/**
		`@:from`
		- - -
		Specifies that the field of the abstract is a cast operation from the type identified in the function.
		- - -
		Applies to: AbstractField
		@see https://haxe.org/manual/types-abstract-implicit-casts.html
	**/
	public var From = ":from";
	/**
		`@:functionCode`
		- - -
		Used to inject platform-native code into a function.
		- - -
		Platform: cpp | java | cs
	**/
	public var FunctionCode = ":functionCode";
	/**
		`@:functionTailCode`
		
		- - -
		Platform: cpp
	**/
	public var FunctionTailCode = ":functionTailCode";
	/**
		`@:generic`
		- - -
		Marks a class or class field as generic so each type parameter combination generates its own type/field.
		@see https://haxe.org/manual/type-system-generic.html
	**/
	public var Generic = ":generic";
	/**
		`@:genericBuild`
		- - -
		Builds instances of a type using the specified macro.
		- - -
		Applies to: Class
	**/
	public var GenericBuild = ":genericBuild";
	/**
		`@:genericInstance`
		- - -
		Internally used to mark instances of `@:generic` methods.
		- - -
		For internal compiler use only.
		- - -
		Applies to: ClassField
	**/
	public var GenericInstance = ":genericInstance";
	/**
		`@:genericClassPerMethod`
		- - -
		Makes compiler generate separate class per generic static method specialization
		- - -
		Applies to: Class
	**/
	public var GenericClassPerMethod = ":genericClassPerMethod";
	/**
		`@:getter`
		- - -
		Generates a native getter function on the given field.
		- - -
		Platform: flash
		- - -
		Applies to: ClassField
		@param Class field name
	**/
	public var Getter = ":getter";
	/**
		`@:hack`
		- - -
		Allows extending classes marked as `@:final`. Not guaranteed to work on all targets.
		- - -
		Applies to: Class
	**/
	public var Hack = ":hack";
	/**
		`@:has_untyped`
		- - -
		Used by the typer to mark fields that have untyped expressions.
		- - -
		For internal compiler use only.
	**/
	public var HasUntyped = ":has_untyped";
	/**
		`@:haxeGeneric`
		- - -
		Used internally to annotate non-native generic classes.
		- - -
		For internal compiler use only.
		- - -
		Platform: cs
		- - -
		Applies to: Class | Enum
	**/
	public var HaxeGeneric = ":haxeGeneric";
	/**
		`@:headerClassCode`
		- - -
		Code to be injected into the generated class, in the header.
		- - -
		Platform: cpp
	**/
	public var HeaderClassCode = ":headerClassCode";
	/**
		`@:headerCode`
		- - -
		Code to be injected into the generated header file.
		- - -
		Platform: cpp
	**/
	public var HeaderCode = ":headerCode";
	/**
		`@:headerInclude`
		- - -
		File to be included in generated header file.
		- - -
		Platform: cpp
	**/
	public var HeaderInclude = ":headerInclude";
	/**
		`@:headerNamespaceCode`
		
		- - -
		Platform: cpp
	**/
	public var HeaderNamespaceCode = ":headerNamespaceCode";
	/**
		`@:hlNative`
		- - -
		Specifies `hdll` name and function prefix for native functions.
		- - -
		Platform: hl
		- - -
		Applies to: Class | ClassField
	**/
	public var HlNative = ":hlNative";
	/**
		`@:hxGen`
		- - -
		Annotates that an extern class was generated by Haxe.
		- - -
		Platform: java | cs
		- - -
		Applies to: Class | Enum
	**/
	public var HxGen = ":hxGen";
	/**
		`@:ifFeature`
		- - -
		Causes a field to be kept by DCE if the given feature is part of the compilation.
		- - -
		Applies to: ClassField
		@param Feature name
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var IfFeature = ":ifFeature";
	/**
		`@:impl`
		- - -
		Used internally to mark abstract implementation fields.
		- - -
		For internal compiler use only.
		- - -
		Applies to: AbstractField
	**/
	public var Impl = ":impl";
	/**
		`@:pythonImport`
		- - -
		Generates python import statement for extern classes.
		- - -
		Platform: python
		- - -
		Applies to: Class
	**/
	public var PythonImport = ":pythonImport";
	/**
		`@:implicitCast`
		- - -
		Generated automatically on the AST when an implicit abstract cast happens.
		- - -
		For internal compiler use only.
		- - -
		Applies to: Expr
	**/
	public var ImplicitCast = ":implicitCast";
	/**
		`@:implicitReturn`
		- - -
		Generated automatically on the AST when an implicit return is inserted for arrow function.
		- - -
		For internal compiler use only.
		- - -
		Applies to: Expr
	**/
	public var ImplicitReturn = ":implicitReturn";
	/**
		`@:include`
		
		- - -
		Platform: cpp
	**/
	public var Include = ":include";
	/**
		`@:initPackage`
		- - -
		Some weird thing for Genjs we want to remove someday.
		- - -
		For internal compiler use only.
		- - -
		Platform: js
	**/
	public var InitPackage = ":initPackage";
	/**
		`@:inline`
		- - -
		Inserted by the parser in case of `inline expr` and `inline function`.
		- - -
		Applies to: Expr
	**/
	public var Inline = ":inline";
	/**
		`@:inlineConstructorArgument`
		- - -
		Internally used to mark expressions that were passed as arguments of an inlined constructor.
		- - -
		For internal compiler use only.
	**/
	public var InlineConstructorArgument = ":inlineConstructorArgument";
	/**
		`@:internal`
		- - -
		Generates the annotated field/class with 'internal' access.
		- - -
		Platform: java | cs
		- - -
		Applies to: Class | Enum | ClassField
	**/
	public var Internal = ":internal";
	/**
		`@:isVar`
		- - -
		Forces a physical field to be generated for properties that otherwise would not require one.
		- - -
		Applies to: ClassField
		@see https://haxe.org/manual/class-field-property-rules.html
	**/
	public var IsVar = ":isVar";
	/**
		`@:javaCanonical`
		- - -
		Used by the Java target to annotate the canonical path of the type.
		- - -
		Platform: java
		- - -
		Applies to: Class | Enum
		@param Output type package
		@param Output type name
	**/
	public var JavaCanonical = ":javaCanonical";
	/**
		`@:javaNative`
		- - -
		Automatically added by `--java-lib` on classes generated from JAR/class files.
		- - -
		For internal compiler use only.
		- - -
		Platform: java
		- - -
		Applies to: Class | Enum
	**/
	public var JavaNative = ":javaNative";
	/**
		`@:jsRequire`
		- - -
		Generate JavaScript module require expression for given extern.
		- - -
		Platform: js
		- - -
		Applies to: Class
		@see https://haxe.org/manual/target-javascript-require.html
	**/
	public var JsRequire = ":jsRequire";
	/**
		`@:luaRequire`
		- - -
		Generate Lua module require expression for given extern.
		- - -
		Platform: lua
		- - -
		Applies to: Class
	**/
	public var LuaRequire = ":luaRequire";
	/**
		`@:luaDotMethod`
		- - -
		Indicates that the given extern type instance should have dot-style invocation for methods instead of colon.
		- - -
		Platform: lua
	**/
	public var LuaDotMethod = ":luaDotMethod";
	/**
		`@:keep`
		- - -
		Causes a field or type to be kept by DCE.
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var Keep = ":keep";
	/**
		`@:keepInit`
		- - -
		Causes a class to be kept by DCE even if all its field are removed.
		- - -
		Applies to: Class
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var KeepInit = ":keepInit";
	/**
		`@:keepSub`
		- - -
		Extends `@:keep` metadata to all implementing and extending classes.
		- - -
		Applies to: Class
		@see https://haxe.org/manual/cr-dce.html
	**/
	public var KeepSub = ":keepSub";
	/**
		`@:libType`
		- - -
		Used by `--net-lib` and `--java-lib` to mark a class that should not be checked (overrides, interfaces, etc) by the type loader.
		- - -
		For internal compiler use only.
		- - -
		Platform: java | cs
		- - -
		Applies to: Class
	**/
	public var LibType = ":libType";
	/**
		`@:loopLabel`
		- - -
		Mark loop and break expressions with a label to support breaking from within switch.
		- - -
		For internal compiler use only.
	**/
	public var LoopLabel = ":loopLabel";
	/**
		`@:markup`
		- - -
		Used as a result of inline XML parsing.
		@see https://haxe.org/manual/lf-markup.html
	**/
	public var Markup = ":markup";
	/**
		`@:meta`
		- - -
		Internally used to mark a class field as being the metadata field.
		- - -
		For internal compiler use only.
	**/
	public var Meta = ":meta";
	/**
		`@:macro`
		- - -
		(deprecated)
	**/
	public var Macro = ":macro";
	/**
		`@:maybeUsed`
		- - -
		Internally used by DCE to mark fields that might be kept.
		- - -
		For internal compiler use only.
	**/
	public var MaybeUsed = ":maybeUsed";
	/**
		`@:mergeBlock`
		- - -
		Merge the annotated block into the current scope.
		- - -
		Applies to: Expr
	**/
	public var MergeBlock = ":mergeBlock";
	/**
		`@:multiReturn`
		- - -
		Annotates an extern class as the result of multi-return function.
		- - -
		Platform: lua
		- - -
		Applies to: Class
		@see https://haxe.org/manual/target-lua-multireturns.html
	**/
	public var MultiReturn = ":multiReturn";
	/**
		`@:multiType`
		- - -
		Specifies that an abstract chooses its this-type from its `@:to` functions.
		- - -
		Applies to: Abstract
		@param Relevant type parameters
	**/
	public var MultiType = ":multiType";
	/**
		`@:native`
		- - -
		Rewrites the path of a class or enum during generation.
		- - -
		Applies to: Class | Enum
		@param Output type path
		@see https://haxe.org/manual/lf-externs.html
	**/
	public var Native = ":native";
	/**
		`@:nativeChildren`
		- - -
		Annotates that all children from a type should be treated as if it were an extern definition - platform native.
		- - -
		Platform: java | cs
		- - -
		Applies to: Class
	**/
	public var NativeChildren = ":nativeChildren";
	/**
		`@:nativeGen`
		- - -
		Annotates that a type should be treated as if it were an extern definition - platform native.
		- - -
		Platform: java | cs | python
		- - -
		Applies to: Class | Enum
	**/
	public var NativeGen = ":nativeGen";
	/**
		`@:nativeGeneric`
		- - -
		Used internally to annotate native generic classes.
		- - -
		For internal compiler use only.
		- - -
		Platform: cs
		- - -
		Applies to: Class | Enum
	**/
	public var NativeGeneric = ":nativeGeneric";
	/**
		`@:nativeProperty`
		- - -
		Use native properties which will execute even with dynamic usage.
		- - -
		Platform: cpp
	**/
	public var NativeProperty = ":nativeProperty";
	/**
		`@:nativeStaticExtension`
		- - -
		Converts static function syntax into member call.
		- - -
		Platform: cpp
	**/
	public var NativeStaticExtension = ":nativeStaticExtension";
	/**
		`@:noCompletion`
		- - -
		Prevents the compiler from suggesting completion on this field or type.
		- - -
		Applies to: ClassField
		@see https://haxe.org/manual/cr-completion.html
	**/
	public var NoCompletion = ":noCompletion";
	/**
		`@:noClosure`
		- - -
		Prevents a method or all methods in a class from being used as a value.
		- - -
		Applies to: Class | ClassField
	**/
	public var NoClosure = ":noClosure";
	/**
		`@:noDebug`
		- - -
		Does not generate debug information even if `--debug` is set.
		- - -
		Platform: flash | cpp
		- - -
		Applies to: Class | ClassField
	**/
	public var NoDebug = ":noDebug";
	/**
		`@:noDoc`
		- - -
		Prevents a type from being included in documentation generation.
	**/
	public var NoDoc = ":noDoc";
	/**
		`@:noExpr`
		- - -
		Internally used to mark abstract fields which have no expression by design.
		- - -
		For internal compiler use only.
	**/
	public var NoExpr = ":noExpr";
	/**
		`@:noImportGlobal`
		- - -
		Prevents a static field from being imported with `import Class.*`.
		- - -
		Applies to: AnyField
	**/
	public var NoImportGlobal = ":noImportGlobal";
	/**
		`@:nonVirtual`
		- - -
		Declares function to be non-virtual in cpp.
		- - -
		Platform: cpp
	**/
	public var NonVirtual = ":nonVirtual";
	/**
		`@:noPackageRestrict`
		- - -
		Allows a module to be accessed across all targets if found on its first type.
		- - -
		For internal compiler use only.
	**/
	public var NoPackageRestrict = ":noPackageRestrict";
	/**
		`@:noPrivateAccess`
		- - -
		Disallow private access to anything for the annotated expression.
		- - -
		Applies to: Expr
	**/
	public var NoPrivateAccess = ":noPrivateAccess";
	/**
		`@:noStack`
		
		- - -
		Platform: cpp
	**/
	public var NoStack = ":noStack";
	/**
		`@:notNull`
		- - -
		Declares an abstract type as not accepting null values.
		- - -
		Applies to: Abstract
		@see https://haxe.org/manual/types-nullability.html
	**/
	public var NotNull = ":notNull";
	/**
		`@:noUsing`
		- - -
		Prevents a field from being used with static extension.
		- - -
		Applies to: ClassField
		@see https://haxe.org/manual/lf-static-extension.html
	**/
	public var NoUsing = ":noUsing";
	/**
		`@:ns`
		- - -
		Internally used by the SWF generator to handle namespaces.
		- - -
		For internal compiler use only.
		- - -
		Platform: flash
	**/
	public var Ns = ":ns";
	/**
		`@:nullSafety`
		- - -
		Enables null safety for classes or fields. Disables null safety for classes, fields or expressions if provided with `Off` as an argument.
		- - -
		Applies to: Class | ClassField | Expr
		@param Off | Loose | Strict | StrictThreaded
		@see https://haxe.org/manual/cr-null-safety.html
	**/
	public var NullSafety = ":nullSafety";
	/**
		`@:objc`
		- - -
		Declares a class or interface that is used to interoperate with Objective-C code.
		- - -
		Platform: cpp
		- - -
		Applies to: Class
	**/
	public var Objc = ":objc";
	/**
		`@:objcProtocol`
		- - -
		Associates an interface with, or describes a function in, a native Objective-C protocol.
		- - -
		Platform: cpp
	**/
	public var ObjcProtocol = ":objcProtocol";
	/**
		`@:op`
		- - -
		Declares an abstract field as being an operator overload.
		- - -
		Applies to: AbstractField
		@param The operation
		@see https://haxe.org/manual/types-abstract-operator-overloading.html
	**/
	public var Op = ":op";
	/**
		`@:optional`
		- - -
		Marks the field of a structure as optional.
		- - -
		Applies to: ClassField
		@see https://haxe.org/manual/types-nullability-optional-arguments.html
	**/
	public var Optional = ":optional";
	/**
		`@:overload`
		- - -
		Allows the field to be called with different argument types.
		- - -
		Applies to: ClassField
		@param Function specification (no expression)
		@see https://haxe.org/manual/target-javascript-external-libraries.html
	**/
	public var Overload = ":overload";
	/**
		`@:persistent`
		- - -
		Keeps the value of static variables in macro context across compilations.
		- - -
		Platform: eval
		- - -
		Applies to: AnyField
	**/
	public var Persistent = ":persistent";
	/**
		`@:phpGlobal`
		- - -
		Indicates that static fields of an extern class actually are located in the global PHP namespace.
		- - -
		Platform: php
		- - -
		Applies to: Class
	**/
	public var PhpGlobal = ":phpGlobal";
	/**
		`@:phpClassConst`
		- - -
		Indicates that a static var of an extern class is a PHP class constant.
		- - -
		Platform: php
		- - -
		Applies to: ClassField
	**/
	public var PhpClassConst = ":phpClassConst";
	/**
		`@:phpMagic`
		- - -
		Treat annotated field as special PHP magic field - this meta makes compiler avoid renaming such fields on generating PHP code.
		- - -
		Platform: php
		- - -
		Applies to: ClassField
	**/
	public var PhpMagic = ":phpMagic";
	/**
		`@:phpNoConstructor`
		- - -
		Special meta for extern classes which do not have native constructor in PHP, but need a constructor in Haxe extern.
		- - -
		Platform: php
		- - -
		Applies to: Class
	**/
	public var PhpNoConstructor = ":phpNoConstructor";
	/**
		`@:pos`
		- - -
		Sets the position of a reified expression.
		- - -
		Applies to: Expr
		@param Position
		@see https://haxe.org/manual/macro-reification.html
	**/
	public var Pos = ":pos";
	/**
		`@:public`
		- - -
		Marks a class field as being public.
		- - -
		For internal compiler use only.
		- - -
		Applies to: ClassField
	**/
	public var Public = ":public";
	/**
		`@:publicFields`
		- - -
		Forces all class fields of inheriting classes to be public.
		- - -
		Applies to: Class
	**/
	public var PublicFields = ":publicFields";
	/**
		`@:private`
		- - -
		Marks a class field as being private.
		- - -
		Platform: cs
		- - -
		Applies to: ClassField
	**/
	public var Private = ":private";
	/**
		`@:privateAccess`
		- - -
		Allow private access to anything for the annotated expression.
		- - -
		Applies to: Expr
	**/
	public var PrivateAccess = ":privateAccess";
	/**
		`@:protected`
		- - -
		Marks a class field as being protected.
		- - -
		Platform: cs | java | flash
		- - -
		Applies to: ClassField
	**/
	public var Protected = ":protected";
	/**
		`@:property`
		- - -
		Marks a property field to be compiled as a native C# property.
		- - -
		Platform: cs
		- - -
		Applies to: ClassField
	**/
	public var Property = ":property";
	/**
		`@:pure`
		- - -
		Marks a class field, class or expression as pure (side-effect free).
		- - -
		Applies to: Class | ClassField | Expr
	**/
	public var Pure = ":pure";
	/**
		`@:readOnly`
		- - -
		Generates a field with the `readonly` native keyword.
		- - -
		Platform: cs
		- - -
		Applies to: ClassField
	**/
	public var ReadOnly = ":readOnly";
	/**
		`@:realPath`
		- - -
		Internally used on `@:native` types to retain original path information.
		- - -
		For internal compiler use only.
	**/
	public var RealPath = ":realPath";
	/**
		`@:remove`
		- - -
		Causes an interface to be removed from all implementing classes before generation.
		- - -
		Applies to: Class
	**/
	public var Remove = ":remove";
	/**
		`@:require`
		- - -
		Allows access to a field only if the specified compiler flag is set.
		- - -
		Applies to: ClassField
		@param Compiler flag to check
		@see https://haxe.org/manual/lf-condition-compilation.html
	**/
	public var Require = ":require";
	/**
		`@:requiresAssign`
		- - -
		Used internally to mark certain abstract operator overloads.
		- - -
		For internal compiler use only.
	**/
	public var RequiresAssign = ":requiresAssign";
	/**
		`@:resolve`
		- - -
		Abstract fields marked with this metadata can be used to resolve unknown fields.
		- - -
		Applies to: ClassField
	**/
	public var Resolve = ":resolve";
	/**
		`@:rtti`
		- - -
		Adds runtime type information.
		- - -
		Applies to: Class
		@see https://haxe.org/manual/cr-rtti.html
	**/
	public var Rtti = ":rtti";
	/**
		`@:runtime`
		
		- - -
		For internal compiler use only.
	**/
	public var Runtime = ":runtime";
	/**
		`@:runtimeValue`
		- - -
		Marks an abstract as being a runtime value.
		- - -
		Applies to: Abstract
	**/
	public var RuntimeValue = ":runtimeValue";
	/**
		`@:scalar`
		- - -
		Used by hxcpp to mark a custom coreType abstract.
		- - -
		Platform: cpp
		- - -
		Applies to: Abstract
	**/
	public var Scalar = ":scalar";
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
		`@:setter`
		- - -
		Generates a native setter function on the given field.
		- - -
		Platform: flash
		- - -
		Applies to: ClassField
		@param Class field name
	**/
	public var Setter = ":setter";
	/**
		`@:skipCtor`
		- - -
		Used internally to generate a constructor as if it were a native type (no `__hx_ctor`).
		- - -
		For internal compiler use only.
		- - -
		Platform: java | cs
	**/
	public var SkipCtor = ":skipCtor";
	/**
		`@:skipReflection`
		- - -
		Used internally to annotate a field that shouldn't have its reflection data generated.
		- - -
		For internal compiler use only.
		- - -
		Platform: java | cs
		- - -
		Applies to: ClassField
	**/
	public var SkipReflection = ":skipReflection";
	/**
		`@:sound`
		- - -
		Includes a given .wav or .mp3 file into the target SWF and associates it with the class (must extend `flash.media.Sound`).
		- - -
		Platform: flash
		- - -
		Applies to: Class
		@param File path
		@see https://haxe.org/manual/target-flash-resources.html
	**/
	public var Sound = ":sound";
	/**
		`@:sourceFile`
		- - -
		Source code filename for external class.
		- - -
		Platform: cpp
	**/
	public var SourceFile = ":sourceFile";
	/**
		`@:stackOnly`
		- - -
		Instances of this type can only appear on the stack.
		- - -
		Platform: cpp
	**/
	public var StackOnly = ":stackOnly";
	/**
		`@haxe.internal.static_extension`
		- - -
		Used internally to mark static extension fields.
		- - -
		For internal compiler use only.
	**/
	public var StaticExtension = "haxe.internal.static_extension";
	/**
		`@:storedTypedExpr`
		- - -
		Used internally to reference a typed expression returned from a macro.
		- - -
		For internal compiler use only.
	**/
	public var StoredTypedExpr = ":storedTypedExpr";
	/**
		`@:strict`
		- - -
		Used to declare a native C# attribute or a native Java metadata; is type checked.
		- - -
		Platform: java | cs
	**/
	public var Strict = ":strict";
	/**
		`@:struct`
		- - -
		Marks a class definition as a struct.
		- - -
		Platform: cs | hl
		- - -
		Applies to: Class
	**/
	public var Struct = ":struct";
	/**
		`@:structAccess`
		- - -
		Marks an extern class as using struct access (`.`) not pointer (`->`).
		- - -
		Platform: cpp
		- - -
		Applies to: Class
	**/
	public var StructAccess = ":structAccess";
	/**
		`@:structInit`
		- - -
		Allows one to initialize the class with a structure that matches constructor parameters.
		- - -
		Applies to: Class
	**/
	public var StructInit = ":structInit";
	/**
		`@:suppressWarnings`
		- - -
		Adds a `SuppressWarnings` annotation for the generated Java class.
		- - -
		Platform: java
		- - -
		Applies to: Class
	**/
	public var SuppressWarnings = ":suppressWarnings";
	/**
		`@:tailRecursion`
		- - -
		Internally used for tail recursion elimination.
		- - -
		For internal compiler use only.
	**/
	public var TailRecursion = ":tailRecursion";
	/**
		`@:templatedCall`
		- - -
		Indicates that the first parameter of static call should be treated as a template argument.
		- - -
		Platform: cpp
		- - -
		Applies to: ClassField
	**/
	public var TemplatedCall = ":templatedCall";
	/**
		`@:throws`
		- - -
		Adds a `throws` declaration to the generated function.
		- - -
		Platform: java
		- - -
		Applies to: ClassField
		@param Type as String
	**/
	public var Throws = ":throws";
	/**
		`@:this`
		- - -
		Internally used to pass a `this` expression to macros.
		- - -
		For internal compiler use only.
		- - -
		Applies to: Expr
	**/
	public var This = ":this";
	/**
		`@:to`
		- - -
		Specifies that the field of the abstract is a cast operation to the type identified in the function.
		- - -
		Applies to: AbstractField
		@see https://haxe.org/manual/types-abstract-implicit-casts.html
	**/
	public var To = ":to";
	/**
		`@:toString`
		- - -
		Internally used.
		- - -
		For internal compiler use only.
	**/
	public var ToString = ":toString";
	/**
		`@:transient`
		- - -
		Adds the `transient` flag to the class field.
		- - -
		Platform: java
		- - -
		Applies to: ClassField
	**/
	public var Transient = ":transient";
	/**
		`@:valueUsed`
		- - -
		Internally used by DCE to mark an abstract value as used.
		- - -
		For internal compiler use only.
	**/
	public var ValueUsed = ":valueUsed";
	/**
		`@:volatile`
		
		- - -
		Platform: java | cs
	**/
	public var Volatile = ":volatile";
	/**
		`@:unifyMinDynamic`
		- - -
		Allows a collection of types to unify to `Dynamic`.
		- - -
		Applies to: ClassField
	**/
	public var UnifyMinDynamic = ":unifyMinDynamic";
	/**
		`@:unreflective`
		
		- - -
		Platform: cpp
	**/
	public var Unreflective = ":unreflective";
	/**
		`@:unsafe`
		- - -
		Declares a class, or a method with the C#'s `unsafe` flag.
		- - -
		Platform: cs
		- - -
		Applies to: Class | ClassField
	**/
	public var Unsafe = ":unsafe";
	/**
		`@:used`
		- - -
		Internally used by DCE to mark a class or field as used.
		- - -
		For internal compiler use only.
	**/
	public var Used = ":used";
	/**
		`@:using`
		- - -
		Automatically uses the argument types as static extensions for the annotated type.
		- - -
		Applies to: Class | Enum | Abstract
		@see https://haxe.org/manual/lf-static-extension-metadata.html
	**/
	public var Using = ":using";
	/**
		`@:value`
		- - -
		Used to store default values for fields and function arguments.
		- - -
		Applies to: ClassField
	**/
	public var Value = ":value";
	/**
		`@:void`
		- - -
		Use Cpp native `void` return type.
		- - -
		Platform: cpp
	**/
	public var Void = ":void";
}