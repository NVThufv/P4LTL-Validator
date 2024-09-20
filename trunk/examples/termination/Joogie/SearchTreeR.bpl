type ref;
type realVar;
type classConst;
// type Field x;
// var $HeapVar : <x>[ref, Field x]x;

const unique $null : ref ;
const unique $intArrNull : [int]int ;
const unique $realArrNull : [int]realVar ;
const unique $refArrNull : [int]ref ;

const unique $arrSizeIdx : int;
var $intArrSize : [int]int;
var $realArrSize : [realVar]int;
var $refArrSize : [ref]int;

var $stringSize : [ref]int;

//built-in axioms 
axiom ($arrSizeIdx == -1);

//note: new version doesn't put helpers in the perlude anymore//Prelude finished 



var int$SearchTreeR.Tree$value0 : Field int;
var SearchTreeR.Tree$SearchTreeR.Tree$left296 : Field ref;
var int$SearchTreeR.Random$index0 : int;
var java.lang.String$lp$$rp$$SearchTreeR.Random$args254 : [int]ref;
var SearchTreeR.Tree$SearchTreeR.Tree$right297 : Field ref;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $leref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $modint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $gtref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrealarray($param00 : [int]realVar, $param11 : [int]realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addint(x : int, y : int) returns (__ret : int) {
(x + y)
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



	 //  @line: 1
// <SearchTreeR.Random: void <init>()>
procedure void$SearchTreeR.Random$$la$init$ra$$2228(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
Block16:
	r01 := __this;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 2
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $neint(x : int, y : int) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ltreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorefarr($param00 : ref) returns (__ret : [int]ref);



// procedure is generated by joogie.
function {:inline true} $gtint(x : int, y : int) returns (__ret : int) {
if (x > y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $reftoint($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 5
// <SearchTreeR.SearchTreeR: void main(java.lang.String[])>
procedure void$SearchTreeR.SearchTreeR$main$2454($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$SearchTreeR.Random$args254;
 {
var $i111 : int;
var i317 : int;
var $r210 : ref;
var r09 : [int]ref;
var r112 : ref;
var i014 : int;
var $i216 : int;
Block20:
	r09 := $param_0;
	 //  @line: 6
	java.lang.String$lp$$rp$$SearchTreeR.Random$args254 := r09;
	 //  @line: 8
	$r210 := $newvariable((21));
	 assume ($neref(($newvariable((21))), ($null))==1);
	 //  @line: 8
	 call $i111 := int$SearchTreeR.Random$random$2229();
	 assert ($neref(($r210), ($null))==1);
	 //  @line: 8
	 call void$SearchTreeR.Tree$$la$init$ra$$2455(($r210), ($i111));
	 //  @line: 8
	r112 := $r210;
	 //  @line: 10
	 call i014 := int$SearchTreeR.Random$random$2229();
	 //  @line: 11
	i317 := 0;
	 goto Block22;
	 //  @line: 11
Block22:
	 goto Block23, Block25;
	 //  @line: 11
Block23:
	 assume ($geint((i317), (i014))==1);
	 goto Block24;
	 //  @line: 11
Block25:
	 //  @line: 11
	 assume ($negInt(($geint((i317), (i014))))==1);
	 //  @line: 12
	 call $i216 := int$SearchTreeR.Random$random$2229();
	 assert ($neref((r112), ($null))==1);
	 //  @line: 12
	 call void$SearchTreeR.Tree$insert$2456((r112), ($i216));
	 //  @line: 11
	i317 := $addint((i317), (1));
	 goto Block22;
	 //  @line: 14
Block24:
	 return;
}


// procedure is generated by joogie.
function {:inline true} $xorreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $cmpreal(x : realVar, y : realVar) returns (__ret : int) {
if ($ltreal((x), (y)) == 1) then 1 else if ($eqreal((x), (y)) == 1) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $addreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $gtreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqreal(x : realVar, y : realVar) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ltint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $newvariable($param00 : int) returns (__ret : ref);



	 //  @line: 3
// <SearchTreeR.Random: void <clinit>()>
procedure void$SearchTreeR.Random$$la$clinit$ra$$2230()
  modifies int$SearchTreeR.Random$index0;
 {
	 //  @line: 4
Block18:
	 //  @line: 4
	int$SearchTreeR.Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $divint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geint(x : int, y : int) returns (__ret : int) {
if (x >= y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $mulint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $leint(x : int, y : int) returns (__ret : int) {
if (x <= y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $shlref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrefarray($param00 : [int]ref, $param11 : [int]ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftointarr($param00 : ref) returns (__ret : [int]int);



// procedure is generated by joogie.
function {:inline true} $ltref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 6
// <SearchTreeR.Random: int random()>
procedure int$SearchTreeR.Random$random$2229() returns (__ret : int)
  modifies $stringSize, int$SearchTreeR.Random$index0;
 {
var $i26 : int;
var r04 : ref;
var $i37 : int;
var $r13 : [int]ref;
var $i02 : int;
var $i15 : int;
	 //  @line: 7
Block17:
	 //  @line: 7
	$r13 := java.lang.String$lp$$rp$$SearchTreeR.Random$args254;
	 //  @line: 7
	$i02 := int$SearchTreeR.Random$index0;
	 assert ($geint(($i02), (0))==1);
	 assert ($ltint(($i02), ($refArrSize[$r13[$arrSizeIdx]]))==1);
	 //  @line: 7
	r04 := $r13[$i02];
	 //  @line: 8
	$i15 := int$SearchTreeR.Random$index0;
	 //  @line: 8
	$i26 := $addint(($i15), (1));
	 //  @line: 8
	int$SearchTreeR.Random$index0 := $i26;
	$i37 := $stringSize[r04];
	 //  @line: 9
	__ret := $i37;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


	 //  @line: 7
// <SearchTreeR.Tree: void <init>(int)>
procedure void$SearchTreeR.Tree$$la$init$ra$$2455(__this : ref, $param_0 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r018 : ref;
var i019 : int;
Block26:
	r018 := __this;
	i019 := $param_0;
	 assert ($neref((r018), ($null))==1);
	 //  @line: 8
	 call void$java.lang.Object$$la$init$ra$$28((r018));
	 assert ($neref((r018), ($null))==1);
	 //  @line: 9
	$HeapVar[r018, int$SearchTreeR.Tree$value0] := i019;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqint(x : int, y : int) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 3
// <SearchTreeR.SearchTreeR: void <init>()>
procedure void$SearchTreeR.SearchTreeR$$la$init$ra$$2453(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r08 : ref;
Block19:
	r08 := __this;
	 assert ($neref((r08), ($null))==1);
	 //  @line: 4
	 call void$java.lang.Object$$la$init$ra$$28((r08));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $modref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $eqintarray($param00 : [int]int, $param11 : [int]int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negRef($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $lereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $nereal(x : realVar, y : realVar) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 12
// <SearchTreeR.Tree: void insert(int)>
procedure void$SearchTreeR.Tree$insert$2456(__this : ref, $param_0 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r123 : ref;
var $r527 : ref;
var i020 : int;
var r021 : ref;
var $r628 : ref;
var $r325 : ref;
var $r426 : ref;
var $i122 : int;
var $r224 : ref;
Block27:
	r021 := __this;
	i020 := $param_0;
	 assert ($neref((r021), ($null))==1);
	 //  @line: 13
	$i122 := $HeapVar[r021, int$SearchTreeR.Tree$value0];
	 goto Block28;
	 //  @line: 13
Block28:
	 goto Block31, Block29;
	 //  @line: 13
Block31:
	 //  @line: 13
	 assume ($negInt(($gtint((i020), ($i122))))==1);
	 assert ($neref((r021), ($null))==1);
	 //  @line: 14
	$r426 := $HeapVar[r021, SearchTreeR.Tree$SearchTreeR.Tree$left296];
	 goto Block32;
	 //  @line: 13
Block29:
	 assume ($gtint((i020), ($i122))==1);
	 goto Block30;
	 //  @line: 14
Block32:
	 goto Block33, Block35;
	 //  @line: 20
Block30:
	 assert ($neref((r021), ($null))==1);
	 //  @line: 20
	$r123 := $HeapVar[r021, SearchTreeR.Tree$SearchTreeR.Tree$right297];
	 goto Block39;
	 //  @line: 14
Block33:
	 assume ($neref(($r426), ($null))==1);
	 goto Block34;
	 //  @line: 14
Block35:
	 //  @line: 14
	 assume ($negInt(($neref(($r426), ($null))))==1);
	 //  @line: 15
	$r628 := $newvariable((36));
	 assume ($neref(($newvariable((36))), ($null))==1);
	 assert ($neref(($r628), ($null))==1);
	 //  @line: 15
	 call void$SearchTreeR.Tree$$la$init$ra$$2455(($r628), (i020));
	 assert ($neref((r021), ($null))==1);
	 //  @line: 15
	$HeapVar[r021, SearchTreeR.Tree$SearchTreeR.Tree$left296] := $r628;
	 goto Block37;
	 //  @line: 20
Block39:
	 goto Block42, Block40;
	 //  @line: 17
Block34:
	 assert ($neref((r021), ($null))==1);
	 //  @line: 17
	$r527 := $HeapVar[r021, SearchTreeR.Tree$SearchTreeR.Tree$left296];
	 goto Block38;
	 //  @line: 26
Block37:
	 return;
	 //  @line: 20
Block42:
	 //  @line: 20
	 assume ($negInt(($neref(($r123), ($null))))==1);
	 //  @line: 21
	$r325 := $newvariable((43));
	 assume ($neref(($newvariable((43))), ($null))==1);
	 assert ($neref(($r325), ($null))==1);
	 //  @line: 21
	 call void$SearchTreeR.Tree$$la$init$ra$$2455(($r325), (i020));
	 assert ($neref((r021), ($null))==1);
	 //  @line: 21
	$HeapVar[r021, SearchTreeR.Tree$SearchTreeR.Tree$right297] := $r325;
	 goto Block37;
	 //  @line: 20
Block40:
	 assume ($neref(($r123), ($null))==1);
	 goto Block41;
	 //  @line: 17
Block38:
	 assert ($neref(($r527), ($null))==1);
	 //  @line: 17
	 call void$SearchTreeR.Tree$insert$2456(($r527), (i020));
	 goto Block37;
	 //  @line: 23
Block41:
	 assert ($neref((r021), ($null))==1);
	 //  @line: 23
	$r224 := $HeapVar[r021, SearchTreeR.Tree$SearchTreeR.Tree$right297];
	 goto Block44;
	 //  @line: 23
Block44:
	 assert ($neref(($r224), ($null))==1);
	 //  @line: 23
	 call void$SearchTreeR.Tree$insert$2456(($r224), (i020));
	 goto Block37;
}


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $intarrtoref($param00 : [int]int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $subreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shlreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negInt(x : int) returns (__ret : int) {
if (x == 0) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}


