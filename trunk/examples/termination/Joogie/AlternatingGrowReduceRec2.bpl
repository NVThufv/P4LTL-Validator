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



var java.lang.String$lp$$rp$$AlternatingGrowReduceRec2.Random$args255 : [int]ref;
var int$AlternatingGrowReduceRec2.Random$index0 : int;
var AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$next254 : Field ref;


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



	 //  @line: 34
// <AlternatingGrowReduceRec2.AlternatingGrowReduceRec2: AlternatingGrowReduceRec2.AlternatingGrowReduceRec2 createList(int)>
procedure AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$createList$2231($param_0 : int) returns (__ret : ref)
  modifies $HeapVar;
 {
var $r217 : ref;
var r014 : ref;
var i015 : int;
var $r113 : ref;
var $i116 : int;
Block41:
	i015 := $param_0;
	 //  @line: 35
	$r113 := $newvariable((42));
	 assume ($neref(($newvariable((42))), ($null))==1);
	 assert ($neref(($r113), ($null))==1);
	 //  @line: 35
	 call void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$$la$init$ra$$2230(($r113), ($null));
	 //  @line: 35
	r014 := $r113;
	 goto Block43;
	 //  @line: 36
Block43:
	 goto Block44, Block46;
	 //  @line: 36
Block44:
	 assume ($leint((i015), (1))==1);
	 goto Block45;
	 //  @line: 36
Block46:
	 //  @line: 36
	 assume ($negInt(($leint((i015), (1))))==1);
	 //  @line: 37
	$i116 := $subint((i015), (1));
	 //  @line: 37
	 call $r217 := AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$createList$2231(($i116));
	 assert ($neref((r014), ($null))==1);
	 //  @line: 37
	$HeapVar[r014, AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$next254] := $r217;
	 goto Block45;
	 //  @line: 39
Block45:
	 //  @line: 39
	__ret := r014;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



	 //  @line: 7
// <AlternatingGrowReduceRec2.Random: int random()>
procedure int$AlternatingGrowReduceRec2.Random$random$2233() returns (__ret : int)
  modifies $stringSize, int$AlternatingGrowReduceRec2.Random$index0;
 {
var $i223 : int;
var $r120 : [int]ref;
var $i122 : int;
var $i019 : int;
var r021 : ref;
var $i324 : int;
	 //  @line: 8
Block48:
	 //  @line: 8
	$r120 := java.lang.String$lp$$rp$$AlternatingGrowReduceRec2.Random$args255;
	 //  @line: 8
	$i019 := int$AlternatingGrowReduceRec2.Random$index0;
	 assert ($geint(($i019), (0))==1);
	 assert ($ltint(($i019), ($refArrSize[$r120[$arrSizeIdx]]))==1);
	 //  @line: 8
	r021 := $r120[$i019];
	 //  @line: 9
	$i122 := int$AlternatingGrowReduceRec2.Random$index0;
	 //  @line: 9
	$i223 := $addint(($i122), (1));
	 //  @line: 9
	int$AlternatingGrowReduceRec2.Random$index0 := $i223;
	$i324 := $stringSize[r021];
	 //  @line: 10
	__ret := $i324;
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


	 //  @line: 4
// <AlternatingGrowReduceRec2.Random: void <clinit>()>
procedure void$AlternatingGrowReduceRec2.Random$$la$clinit$ra$$2234()
  modifies int$AlternatingGrowReduceRec2.Random$index0;
 {
	 //  @line: 5
Block49:
	 //  @line: 5
	int$AlternatingGrowReduceRec2.Random$index0 := 0;
	 return;
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



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 29
// <AlternatingGrowReduceRec2.AlternatingGrowReduceRec2: void <init>(AlternatingGrowReduceRec2.AlternatingGrowReduceRec2)>
procedure void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$$la$init$ra$$2230(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r011 : ref;
var r112 : ref;
Block40:
	r011 := __this;
	r112 := $param_0;
	 assert ($neref((r011), ($null))==1);
	 //  @line: 30
	 call void$java.lang.Object$$la$init$ra$$28((r011));
	 assert ($neref((r011), ($null))==1);
	 //  @line: 31
	$HeapVar[r011, AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$next254] := r112;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
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


	 //  @line: 6
// <AlternatingGrowReduceRec2.AlternatingGrowReduceRec2: void main(java.lang.String[])>
procedure void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$main$2228($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$AlternatingGrowReduceRec2.Random$args255;
 {
var r14 : ref;
var r01 : [int]ref;
var $i02 : int;
Block16:
	r01 := $param_0;
	 //  @line: 7
	java.lang.String$lp$$rp$$AlternatingGrowReduceRec2.Random$args255 := r01;
	 //  @line: 8
	 call $i02 := int$AlternatingGrowReduceRec2.Random$random$2233();
	 //  @line: 8
	 call r14 := AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$createList$2231(($i02));
	 //  @line: 9
	 call void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$growReduce$2229((0), (r14));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 12
// <AlternatingGrowReduceRec2.AlternatingGrowReduceRec2: void growReduce(int,AlternatingGrowReduceRec2.AlternatingGrowReduceRec2)>
procedure void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$growReduce$2229($param_0 : int, $param_1 : ref) {
var $r07 : ref;
var r19 : ref;
var i110 : int;
var i08 : int;
Block17:
	i08 := $param_0;
	r19 := $param_1;
	 goto Block18;
	 //  @line: 13
Block18:
	 goto Block19, Block21;
	 //  @line: 13
Block19:
	 assume ($neref((r19), ($null))==1);
	 goto Block20;
	 //  @line: 13
Block21:
	 //  @line: 13
	 assume ($negInt(($neref((r19), ($null))))==1);
	 return;
	 //  @line: 14
Block20:
	 goto Block24, Block22;
	 //  @line: 14
Block24:
	 //  @line: 14
	 assume ($negInt(($neint((i08), (0))))==1);
	 goto Block25;
	 //  @line: 14
Block22:
	 assume ($neint((i08), (0))==1);
	 goto Block23;
	 //  @line: 15
Block25:
	 assert ($neref((r19), ($null))==1);
	 //  @line: 15
	r19 := $HeapVar[r19, AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$next254];
	 goto Block26;
	 //  @line: 16
Block23:
	 goto Block29, Block27;
	 //  @line: 22
Block26:
	 //  @line: 22
	i110 := $addint((i08), (1));
	 goto Block35;
	 //  @line: 16
Block29:
	 //  @line: 16
	 assume ($negInt(($neint((i08), (1))))==1);
	 goto Block30;
	 //  @line: 16
Block27:
	 assume ($neint((i08), (1))==1);
	 goto Block28;
	 //  @line: 23
Block35:
	 goto Block36, Block38;
	 //  @line: 17
Block30:
	 //  @line: 17
	$r07 := $newvariable((31));
	 assume ($neref(($newvariable((31))), ($null))==1);
	 assert ($neref(($r07), ($null))==1);
	 //  @line: 17
	 call void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$$la$init$ra$$2230(($r07), (r19));
	 //  @line: 17
	r19 := $r07;
	 goto Block26;
	 //  @line: 18
Block28:
	 goto Block32, Block33;
	 //  @line: 23
Block36:
	 assume ($leint((i110), (2))==1);
	 goto Block37;
	 //  @line: 23
Block38:
	 //  @line: 23
	 assume ($negInt(($leint((i110), (2))))==1);
	 //  @line: 24
	 call void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$growReduce$2229((0), (r19));
	 goto Block39;
	 //  @line: 18
Block32:
	 assume ($leint((i08), (1))==1);
	 goto Block26;
	 //  @line: 18
Block33:
	 //  @line: 18
	 assume ($negInt(($leint((i08), (1))))==1);
	 goto Block34;
	 //  @line: 26
Block37:
	 //  @line: 26
	 call void$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$growReduce$2229((i110), (r19));
	 goto Block39;
	 //  @line: 28
Block39:
	 return;
	 //  @line: 19
Block34:
	 assert ($neref((r19), ($null))==1);
	 //  @line: 19
	r19 := $HeapVar[r19, AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$AlternatingGrowReduceRec2.AlternatingGrowReduceRec2$next254];
	 goto Block26;
}


// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 2
// <AlternatingGrowReduceRec2.Random: void <init>()>
procedure void$AlternatingGrowReduceRec2.Random$$la$init$ra$$2232(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r018 : ref;
Block47:
	r018 := __this;
	 assert ($neref((r018), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r018));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}


