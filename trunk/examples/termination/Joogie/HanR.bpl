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



var int$Random$index0 : int;
var java.lang.String$lp$$rp$$Random$args254 : [int]ref;


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



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



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



	 //  @line: 2
// <Random: void <clinit>()>
procedure void$Random$$la$clinit$ra$$2233()
  modifies int$Random$index0;
 {
	 //  @line: 3
Block37:
	 //  @line: 3
	int$Random$index0 := 0;
	 return;
}


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


// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 5
// <Random: int random()>
procedure int$Random$random$2232() returns (__ret : int)
  modifies int$Random$index0, $stringSize;
 {
var r018 : ref;
var $i115 : int;
var $r113 : [int]ref;
var $i014 : int;
var $i216 : int;
var $i521 : int;
var $r217 : [int]ref;
var $i319 : int;
var $i420 : int;
	 //  @line: 6
Block31:
	 //  @line: 6
	$i115 := int$Random$index0;
	 //  @line: 6
	$r113 := java.lang.String$lp$$rp$$Random$args254;
	 //  @line: 6
	$i014 := $refArrSize[$r113[$arrSizeIdx]];
	 goto Block32;
	 //  @line: 6
Block32:
	 goto Block35, Block33;
	 //  @line: 6
Block35:
	 //  @line: 6
	 assume ($negInt(($ltint(($i115), ($i014))))==1);
	 //  @line: 7
	__ret := 0;
	 return;
	 //  @line: 6
Block33:
	 assume ($ltint(($i115), ($i014))==1);
	 goto Block34;
	 //  @line: 9
Block34:
	 //  @line: 9
	$r217 := java.lang.String$lp$$rp$$Random$args254;
	 goto Block36;
	 //  @line: 9
Block36:
	 //  @line: 9
	$i216 := int$Random$index0;
	 assert ($geint(($i216), (0))==1);
	 assert ($ltint(($i216), ($refArrSize[$r217[$arrSizeIdx]]))==1);
	 //  @line: 9
	r018 := $r217[$i216];
	 //  @line: 10
	$i319 := int$Random$index0;
	 //  @line: 10
	$i420 := $addint(($i319), (1));
	 //  @line: 10
	int$Random$index0 := $i420;
	$i521 := $stringSize[r018];
	 //  @line: 11
	__ret := $i521;
	 return;
}


// <HanoiR: void <init>()>
procedure void$HanoiR$$la$init$ra$$2228(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
Block16:
	r01 := __this;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 return;
}


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



	 //  @line: 2
// <HanoiR: void solve(int,int,int,int)>
procedure void$HanoiR$solve$2229(__this : ref, $param_0 : int, $param_1 : int, $param_2 : int, $param_3 : int)  requires ($neref((__this), ($null))==1);
 {
var $i58 : int;
var i35 : int;
var i26 : int;
var $i47 : int;
var i02 : int;
var i14 : int;
var r03 : ref;
Block17:
	r03 := __this;
	i02 := $param_0;
	i14 := $param_1;
	i26 := $param_2;
	i35 := $param_3;
	 goto Block18;
	 //  @line: 3
Block18:
	 goto Block21, Block19;
	 //  @line: 3
Block21:
	 //  @line: 3
	 assume ($negInt(($geint((i02), (1))))==1);
	 return;
	 //  @line: 3
Block19:
	 assume ($geint((i02), (1))==1);
	 goto Block20;
	 //  @line: 4
Block20:
	 goto Block24, Block22;
	 //  @line: 4
Block24:
	 //  @line: 4
	 assume ($negInt(($neint((i02), (1))))==1);
	 goto Block25;
	 //  @line: 4
Block22:
	 assume ($neint((i02), (1))==1);
	 goto Block23;
	 //  @line: 12
Block25:
	 goto Block26;
	 //  @line: 8
Block23:
	 //  @line: 8
	$i47 := $subint((i02), (1));
	 goto Block27;
	 //  @line: 12
Block26:
	 return;
	 //  @line: 8
Block27:
	 assert ($neref((r03), ($null))==1);
	 //  @line: 8
	 call void$HanoiR$solve$2229((r03), ($i47), (i14), (i35), (i26));
	 //  @line: 10
	$i58 := $subint((i02), (1));
	 assert ($neref((r03), ($null))==1);
	 //  @line: 10
	 call void$HanoiR$solve$2229((r03), ($i58), (i35), (i26), (i14));
	 goto Block26;
}


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


// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// <Random: void <init>()>
procedure void$Random$$la$init$ra$$2231(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r012 : ref;
Block30:
	r012 := __this;
	 assert ($neref((r012), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r012));
	 return;
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



	 //  @line: 14
// <HanoiR: void main(java.lang.String[])>
procedure void$HanoiR$main$2230($param_0 : [int]ref)
  modifies java.lang.String$lp$$rp$$Random$args254, $stringSize;
 {
var $r110 : ref;
var r09 : [int]ref;
var $i011 : int;
Block28:
	r09 := $param_0;
	 //  @line: 15
	java.lang.String$lp$$rp$$Random$args254 := r09;
	 //  @line: 16
	$r110 := $newvariable((29));
	 assume ($neref(($newvariable((29))), ($null))==1);
	 assert ($neref(($r110), ($null))==1);
	 //  @line: 16
	 call void$HanoiR$$la$init$ra$$2228(($r110));
	 //  @line: 16
	 call $i011 := int$Random$random$2232();
	 assert ($neref(($r110), ($null))==1);
	 //  @line: 16
	 call void$HanoiR$solve$2229(($r110), ($i011), (1), (2), (3));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}


