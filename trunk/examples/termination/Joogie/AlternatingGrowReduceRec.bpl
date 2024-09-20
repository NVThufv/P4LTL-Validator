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



var AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$next254 : Field ref;
var int$AlternatingGrowReduceRec.Random$index0 : int;
var java.lang.String$lp$$rp$$AlternatingGrowReduceRec.Random$args255 : [int]ref;


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



	 //  @line: 29
// <AlternatingGrowReduceRec.AlternatingGrowReduceRec: void <init>(AlternatingGrowReduceRec.AlternatingGrowReduceRec)>
procedure void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$$la$init$ra$$2230(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r016 : ref;
var r117 : ref;
Block42:
	r016 := __this;
	r117 := $param_0;
	 assert ($neref((r016), ($null))==1);
	 //  @line: 30
	 call void$java.lang.Object$$la$init$ra$$28((r016));
	 assert ($neref((r016), ($null))==1);
	 //  @line: 31
	$HeapVar[r016, AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$next254] := r117;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $modint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $gtref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 4
// <AlternatingGrowReduceRec.Random: void <clinit>()>
procedure void$AlternatingGrowReduceRec.Random$$la$clinit$ra$$2234()
  modifies int$AlternatingGrowReduceRec.Random$index0;
 {
	 //  @line: 5
Block51:
	 //  @line: 5
	int$AlternatingGrowReduceRec.Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqrealarray($param00 : [int]realVar, $param11 : [int]realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addint(x : int, y : int) returns (__ret : int) {
(x + y)
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 2
// <AlternatingGrowReduceRec.Random: void <init>()>
procedure void$AlternatingGrowReduceRec.Random$$la$init$ra$$2232(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r023 : ref;
Block49:
	r023 := __this;
	 assert ($neref((r023), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r023));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



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



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



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



	 //  @line: 34
// <AlternatingGrowReduceRec.AlternatingGrowReduceRec: AlternatingGrowReduceRec.AlternatingGrowReduceRec createList(int)>
procedure AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$createList$2231($param_0 : int) returns (__ret : ref)
  modifies $HeapVar;
 {
var $r118 : ref;
var $r222 : ref;
var $i121 : int;
var i020 : int;
var r019 : ref;
Block43:
	i020 := $param_0;
	 //  @line: 35
	$r118 := $newvariable((44));
	 assume ($neref(($newvariable((44))), ($null))==1);
	 assert ($neref(($r118), ($null))==1);
	 //  @line: 35
	 call void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$$la$init$ra$$2230(($r118), ($null));
	 //  @line: 35
	r019 := $r118;
	 goto Block45;
	 //  @line: 36
Block45:
	 goto Block46, Block48;
	 //  @line: 36
Block46:
	 assume ($leint((i020), (1))==1);
	 goto Block47;
	 //  @line: 36
Block48:
	 //  @line: 36
	 assume ($negInt(($leint((i020), (1))))==1);
	 //  @line: 37
	$i121 := $subint((i020), (1));
	 //  @line: 37
	 call $r222 := AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$createList$2231(($i121));
	 assert ($neref((r019), ($null))==1);
	 //  @line: 37
	$HeapVar[r019, AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$next254] := $r222;
	 goto Block47;
	 //  @line: 39
Block47:
	 //  @line: 39
	__ret := r019;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



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


	 //  @line: 12
// <AlternatingGrowReduceRec.AlternatingGrowReduceRec: void growReduce(int,AlternatingGrowReduceRec.AlternatingGrowReduceRec)>
procedure void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$growReduce$2229($param_0 : int, $param_1 : ref) {
var i013 : int;
var $r512 : ref;
var i115 : int;
var $r29 : ref;
var $r07 : ref;
var $r411 : ref;
var r614 : ref;
var $r18 : ref;
var $r310 : ref;
Block17:
	i013 := $param_0;
	r614 := $param_1;
	 goto Block18;
	 //  @line: 13
Block18:
	 goto Block21, Block19;
	 //  @line: 13
Block21:
	 //  @line: 13
	 assume ($negInt(($neref((r614), ($null))))==1);
	 return;
	 //  @line: 13
Block19:
	 assume ($neref((r614), ($null))==1);
	 goto Block20;
	 //  @line: 14
Block20:
	 goto Block22, Block24;
	 //  @line: 14
Block22:
	 assume ($neint((i013), (0))==1);
	 goto Block23;
	 //  @line: 14
Block24:
	 //  @line: 14
	 assume ($negInt(($neint((i013), (0))))==1);
	 goto Block25;
	 //  @line: 16
Block23:
	 goto Block27, Block29;
	 //  @line: 15
Block25:
	 assert ($neref((r614), ($null))==1);
	 //  @line: 15
	$r310 := $HeapVar[r614, AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$next254];
	 assert ($neref(($r310), ($null))==1);
	 //  @line: 15
	$r411 := $HeapVar[$r310, AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$next254];
	 assert ($neref(($r411), ($null))==1);
	 //  @line: 15
	$r512 := $HeapVar[$r411, AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$next254];
	 assert ($neref(($r512), ($null))==1);
	 //  @line: 15
	r614 := $HeapVar[$r512, AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$next254];
	 goto Block26;
	 //  @line: 16
Block27:
	 assume ($neint((i013), (1))==1);
	 goto Block28;
	 //  @line: 16
Block29:
	 //  @line: 16
	 assume ($negInt(($neint((i013), (1))))==1);
	 goto Block30;
	 //  @line: 22
Block26:
	 //  @line: 22
	i115 := $addint((i013), (1));
	 goto Block37;
	 //  @line: 18
Block28:
	 goto Block32, Block33;
	 //  @line: 17
Block30:
	 //  @line: 17
	$r29 := $newvariable((31));
	 assume ($neref(($newvariable((31))), ($null))==1);
	 assert ($neref(($r29), ($null))==1);
	 //  @line: 17
	 call void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$$la$init$ra$$2230(($r29), (r614));
	 //  @line: 17
	r614 := $r29;
	 goto Block26;
	 //  @line: 23
Block37:
	 goto Block38, Block40;
	 //  @line: 18
Block32:
	 assume ($leint((i013), (1))==1);
	 goto Block26;
	 //  @line: 18
Block33:
	 //  @line: 18
	 assume ($negInt(($leint((i013), (1))))==1);
	 goto Block34;
	 //  @line: 23
Block38:
	 assume ($leint((i115), (2))==1);
	 goto Block39;
	 //  @line: 23
Block40:
	 //  @line: 23
	 assume ($negInt(($leint((i115), (2))))==1);
	 //  @line: 24
	 call void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$growReduce$2229((0), (r614));
	 goto Block41;
	 //  @line: 19
Block34:
	 //  @line: 19
	$r07 := $newvariable((35));
	 assume ($neref(($newvariable((35))), ($null))==1);
	 //  @line: 19
	$r18 := $newvariable((36));
	 assume ($neref(($newvariable((36))), ($null))==1);
	 assert ($neref(($r18), ($null))==1);
	 //  @line: 19
	 call void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$$la$init$ra$$2230(($r18), (r614));
	 assert ($neref(($r07), ($null))==1);
	 //  @line: 19
	 call void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$$la$init$ra$$2230(($r07), ($r18));
	 //  @line: 19
	r614 := $r07;
	 goto Block26;
	 //  @line: 26
Block39:
	 //  @line: 26
	 call void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$growReduce$2229((i115), (r614));
	 goto Block41;
	 //  @line: 28
Block41:
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



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



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


	 //  @line: 7
// <AlternatingGrowReduceRec.Random: int random()>
procedure int$AlternatingGrowReduceRec.Random$random$2233() returns (__ret : int)
  modifies int$AlternatingGrowReduceRec.Random$index0, $stringSize;
 {
var $r125 : [int]ref;
var $i228 : int;
var r026 : ref;
var $i329 : int;
var $i127 : int;
var $i024 : int;
	 //  @line: 8
Block50:
	 //  @line: 8
	$r125 := java.lang.String$lp$$rp$$AlternatingGrowReduceRec.Random$args255;
	 //  @line: 8
	$i024 := int$AlternatingGrowReduceRec.Random$index0;
	 assert ($geint(($i024), (0))==1);
	 assert ($ltint(($i024), ($refArrSize[$r125[$arrSizeIdx]]))==1);
	 //  @line: 8
	r026 := $r125[$i024];
	 //  @line: 9
	$i127 := int$AlternatingGrowReduceRec.Random$index0;
	 //  @line: 9
	$i228 := $addint(($i127), (1));
	 //  @line: 9
	int$AlternatingGrowReduceRec.Random$index0 := $i228;
	$i329 := $stringSize[r026];
	 //  @line: 10
	__ret := $i329;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $intarrtoref($param00 : [int]int) returns (__ret : ref);



	 //  @line: 6
// <AlternatingGrowReduceRec.AlternatingGrowReduceRec: void main(java.lang.String[])>
procedure void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$main$2228($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$AlternatingGrowReduceRec.Random$args255;
 {
var r01 : [int]ref;
var r14 : ref;
var $i02 : int;
Block16:
	r01 := $param_0;
	 //  @line: 7
	java.lang.String$lp$$rp$$AlternatingGrowReduceRec.Random$args255 := r01;
	 //  @line: 8
	 call $i02 := int$AlternatingGrowReduceRec.Random$random$2233();
	 //  @line: 8
	 call r14 := AlternatingGrowReduceRec.AlternatingGrowReduceRec$AlternatingGrowReduceRec.AlternatingGrowReduceRec$createList$2231(($i02));
	 //  @line: 9
	 call void$AlternatingGrowReduceRec.AlternatingGrowReduceRec$growReduce$2229((0), (r14));
	 return;
}


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


