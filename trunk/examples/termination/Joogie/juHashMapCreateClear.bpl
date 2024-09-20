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
const unique javaUtilEx.Set : classConst ;
const unique javaUtilEx.Map : classConst ;
const unique javaUtilEx.Content : classConst ;
const unique javaUtilEx.Map$Entry : classConst ;



var javaUtilEx.HashMap$javaUtilEx.HashMap$ValueIterator$this$0316 : Field ref;
var java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304 : Field ref;
var int$javaUtilEx.HashMap$HashIterator$index0 : Field int;
var javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307 : Field [int]ref;
var int$javaUtilEx.Content$val0 : Field int;
var javaUtilEx.Iterator$javaUtilEx.AbstractMap$1$1$i295 : Field ref;
var java.lang.Object$javaUtilEx.HashMap$Entry$value310 : Field ref;
var javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311 : Field ref;
var $fresh10 : ref;
var javaUtilEx.AbstractMap$2$javaUtilEx.AbstractMap$2$1$this$1301 : Field ref;
var javaUtilEx.HashMap$javaUtilEx.HashMap$HashIterator$this$0320 : Field ref;
var $fresh1 : ref;
var javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313 : Field ref;
var javaUtilEx.HashMap$javaUtilEx.HashMap$KeyIterator$this$0315 : Field ref;
var $fresh14 : realVar;
var javaUtilEx.HashMap$javaUtilEx.HashMap$Values$this$0317 : Field ref;
var java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305 : Field ref;
var int$javaUtilEx.HashMap$modCount0 : Field int;
var $fresh5 : ref;
var javaUtilEx.Iterator$javaUtilEx.AbstractMap$2$1$i300 : Field ref;
var $fresh6 : ref;
var float$javaUtilEx.HashMap$loadFactor0 : Field realVar;
var $fresh9 : ref;
var javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314 : Field ref;
var javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298 : Field ref;
var javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$current319 : Field ref;
var int$javaUtilEx.HashMap$size0 : Field int;
var javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$2$this$0302 : Field ref;
var int$javaUtilEx.HashMap$Entry$hash0 : Field int;
var int$javaUtilEx.HashMap$HashIterator$expectedModCount0 : Field int;
var $fresh12 : ref;
var $fresh2 : ref;
var $fresh4 : ref;
var int$javaUtilEx.Random$index0 : int;
var javaUtilEx.Collection$javaUtilEx.AbstractMap$values299 : Field ref;
var javaUtilEx.AbstractMap$1$javaUtilEx.AbstractMap$1$1$this$1296 : Field ref;
var java.lang.Object$javaUtilEx.HashMap$Entry$key309 : Field ref;
var javaUtilEx.Set$javaUtilEx.HashMap$entrySet308 : Field ref;
var javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$next318 : Field ref;
var $fresh3 : ref;
var $fresh7 : ref;
var javaUtilEx.HashMap$javaUtilEx.HashMap$EntryIterator$this$0312 : Field ref;
var int$javaUtilEx.HashMap$threshold0 : Field int;
var java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303 : Field ref;
var java.lang.String$lp$$rp$$javaUtilEx.Random$args321 : [int]ref;
var $fresh8 : ref;
var javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297 : Field ref;
var $fresh11 : realVar;
var java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306 : Field ref;
var $fresh13 : realVar;


	 //  @line: 720
// <javaUtilEx.HashMap$Entry: boolean equals(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$Entry$equals$2647(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z2891 : int;
var $z0879 : int;
var r2880 : ref;
var r1878 : ref;
var r4885 : ref;
var $z1890 : int;
var r0881 : ref;
var r6889 : ref;
var r5887 : ref;
var r3883 : ref;
Block926:
	r0881 := __this;
	r1878 := $param_0;
	 //  @line: 721
	$z0879 := $instanceof((r1878), (javaUtilEx.Map$Entry));
	 goto Block927;
	 //  @line: 721
Block927:
	 goto Block928, Block930;
	 //  @line: 721
Block928:
	 assume ($neint(($z0879), (0))==1);
	 goto Block929;
	 //  @line: 721
Block930:
	 //  @line: 721
	 assume ($negInt(($neint(($z0879), (0))))==1);
	 //  @line: 722
	__ret := 0;
	 return;
	 //  @line: 723
Block929:
	 //  @line: 723
	r2880 := r1878;
	 goto Block931;
	 //  @line: 724
Block931:
	 assert ($neref((r0881), ($null))==1);
	 //  @line: 724
	 call r3883 := java.lang.Object$javaUtilEx.HashMap$Entry$getKey$2644((r0881));
	 assert ($neref((r2880), ($null))==1);
	 //  @line: 725
	 call r4885 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r2880));
	 goto Block932;
	 //  @line: 726
Block932:
	 goto Block933, Block935;
	 //  @line: 726
Block933:
	 assume ($eqref((r3883), (r4885))==1);
	 goto Block934;
	 //  @line: 726
Block935:
	 //  @line: 726
	 assume ($negInt(($eqref((r3883), (r4885))))==1);
	 goto Block936;
	 //  @line: 727
Block934:
	 assert ($neref((r0881), ($null))==1);
	 //  @line: 727
	 call r5887 := java.lang.Object$javaUtilEx.HashMap$Entry$getValue$2645((r0881));
	 assert ($neref((r2880), ($null))==1);
	 //  @line: 728
	 call r6889 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r2880));
	 goto Block943;
	 //  @line: 730
Block936:
	 goto Block937, Block939;
	 //  @line: 729
Block943:
	 goto Block944, Block946;
	 //  @line: 730
Block937:
	 assume ($eqref((r3883), ($null))==1);
	 goto Block938;
	 //  @line: 730
Block939:
	 //  @line: 730
	 assume ($negInt(($eqref((r3883), ($null))))==1);
	 assert ($neref((r3883), ($null))==1);
	 //  @line: 732
	 call $z2891 := boolean$java.lang.Object$equals$32((r3883), (r4885));
	 goto Block940;
	 //  @line: 729
Block944:
	 assume ($eqref((r5887), (r6889))==1);
	 goto Block945;
	 //  @line: 729
Block946:
	 //  @line: 729
	 assume ($negInt(($eqref((r5887), (r6889))))==1);
	 goto Block947;
	 //  @line: 732
Block938:
	 //  @line: 732
	__ret := 0;
	 return;
	 //  @line: 732
Block940:
	 goto Block942, Block941;
	 //  @line: 730
Block945:
	 //  @line: 730
	__ret := 1;
	 return;
	 //  @line: 730
Block947:
	 goto Block949, Block948;
	 //  @line: 732
Block942:
	 //  @line: 732
	 assume ($negInt(($eqint(($z2891), (0))))==1);
	 goto Block934;
	 //  @line: 732
Block941:
	 assume ($eqint(($z2891), (0))==1);
	 goto Block938;
	 //  @line: 730
Block949:
	 //  @line: 730
	 assume ($negInt(($eqref((r5887), ($null))))==1);
	 assert ($neref((r5887), ($null))==1);
	 //  @line: 732
	 call $z1890 := boolean$java.lang.Object$equals$32((r5887), (r6889));
	 goto Block950;
	 //  @line: 730
Block948:
	 assume ($eqref((r5887), ($null))==1);
	 goto Block938;
	 //  @line: 732
Block950:
	 goto Block952, Block951;
	 //  @line: 732
Block952:
	 //  @line: 732
	 assume ($negInt(($eqint(($z1890), (0))))==1);
	 goto Block945;
	 //  @line: 732
Block951:
	 assume ($eqint(($z1890), (0))==1);
	 goto Block938;
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



	 //  @line: 849
// <javaUtilEx.HashMap$EntryIterator: javaUtilEx.Map$Entry next()>
procedure javaUtilEx.Map$Entry$javaUtilEx.HashMap$EntryIterator$next$2653(__this : ref) returns (__ret : ref, $Exep1 : ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1918 : ref;
var r0917 : ref;

 //temp local variables 
var $caughtEx2 : ref;
var $caughtEx3 : ref;

	 //  @line: 849
Block972:
	$caughtEx3 := $null;
	$caughtEx2 := $null;
	$Exep1 := $null;
	$Exep0 := $null;
	 goto Block973;
Block973:
	r0917 := __this;
	 assert ($neref((r0917), ($null))==1);
	 //  @line: 850
	 call $r1918, $caughtEx2, $caughtEx3 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$nextEntry$2769((r0917));
	 goto Block976, Block974;
Block976:
	 assume ($eqref(($caughtEx2), ($null))==1);
	 goto Block977;
Block974:
	 assume ($neref(($caughtEx2), ($null))==1);
	 goto Block975;
Block977:
	 goto Block980, Block978;
Block975:
	$Exep1 := $caughtEx2;
	 return;
Block980:
	 assume ($eqref(($caughtEx3), ($null))==1);
	 goto Block981;
Block978:
	 assume ($neref(($caughtEx3), ($null))==1);
	 goto Block979;
Block981:
	 //  @line: 850
	__ret := $r1918;
	 return;
Block979:
	$Exep0 := $caughtEx3;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $leref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 34
// <javaUtilEx.Content: boolean equals(java.lang.Object)>
procedure boolean$javaUtilEx.Content$equals$2606(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r1511 : ref;
var $i1516 : int;
var $i0515 : int;
var r0513 : ref;
var $z0512 : int;
var $r2514 : ref;
var $z1518 : int;
Block519:
	r0513 := __this;
	r1511 := $param_0;
	 //  @line: 35
	$z0512 := $instanceof((r1511), (javaUtilEx.Content));
	 goto Block520;
	 //  @line: 35
Block520:
	 goto Block523, Block521;
	 //  @line: 35
Block523:
	 //  @line: 35
	 assume ($negInt(($eqint(($z0512), (0))))==1);
	 assert ($neref((r0513), ($null))==1);
	 //  @line: 36
	$i1516 := $HeapVar[r0513, int$javaUtilEx.Content$val0];
	 //  @line: 36
	$r2514 := r1511;
	 assert ($neref(($r2514), ($null))==1);
	 //  @line: 36
	$i0515 := $HeapVar[$r2514, int$javaUtilEx.Content$val0];
	 goto Block524;
	 //  @line: 35
Block521:
	 assume ($eqint(($z0512), (0))==1);
	 goto Block522;
	 //  @line: 36
Block524:
	 goto Block525, Block527;
	 //  @line: 38
Block522:
	 //  @line: 38
	__ret := 0;
	 return;
	 //  @line: 36
Block525:
	 assume ($neint(($i1516), ($i0515))==1);
	 goto Block526;
	 //  @line: 36
Block527:
	 //  @line: 36
	 assume ($negInt(($neint(($i1516), ($i0515))))==1);
	 //  @line: 36
	$z1518 := 1;
	 goto Block528;
	 //  @line: 36
Block526:
	 //  @line: 36
	$z1518 := 0;
	 goto Block528;
	 //  @line: 36
Block528:
	 //  @line: 36
	__ret := $z1518;
	 return;
}


	 //  @line: 470
// <javaUtilEx.HashMap: void resize(int)>
procedure void$javaUtilEx.HashMap$resize$2624(__this : ref, $param_0 : int)
  modifies $refArrSize, $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $i2684 : int;
var $f1682 : realVar;
var r0676 : ref;
var i1678 : int;
var $f2683 : realVar;
var $f0681 : realVar;
var i0679 : int;
var r2680 : [int]ref;
var r1677 : [int]ref;
Block714:
	r0676 := __this;
	i0679 := $param_0;
	 assert ($neref((r0676), ($null))==1);
	 //  @line: 471
	r1677 := $HeapVar[r0676, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 472
	i1678 := $refArrSize[r1677[$arrSizeIdx]];
	 goto Block715;
	 //  @line: 473
Block715:
	 goto Block718, Block716;
	 //  @line: 473
Block718:
	 //  @line: 473
	 assume ($negInt(($neint((i1678), (1073741824))))==1);
	 assert ($neref((r0676), ($null))==1);
	 //  @line: 474
	$HeapVar[r0676, int$javaUtilEx.HashMap$threshold0] := 2147483647;
	 return;
	 //  @line: 473
Block716:
	 assume ($neint((i1678), (1073741824))==1);
	 goto Block717;
	 //  @line: 478
Block717:
	 //  @line: 478
	r2680 := $reftorefarr(($newvariable((719))));
	$refArrSize[$reftorefarr(($newvariable((719))))[$arrSizeIdx]] := i0679;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((719))))), ($refArrNull))))==1);
	 goto Block720;
	 //  @line: 479
Block720:
	 assert ($neref((r0676), ($null))==1);
	 //  @line: 479
	 call void$javaUtilEx.HashMap$transfer$2625((r0676), (r2680));
	 assert ($neref((r0676), ($null))==1);
	 //  @line: 480
	$HeapVar[r0676, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307] := r2680;
	 //  @line: 481
	$f1682 := $inttoreal((i0679));
	 assert ($neref((r0676), ($null))==1);
	 //  @line: 481
	$f0681 := $HeapVar[r0676, float$javaUtilEx.HashMap$loadFactor0];
	 //  @line: 481
	$f2683 := $mulreal(($f1682), ($f0681));
	 //  @line: 481
	$i2684 := $realtoint(($f2683));
	 assert ($neref((r0676), ($null))==1);
	 //  @line: 481
	$HeapVar[r0676, int$javaUtilEx.HashMap$threshold0] := $i2684;
	 return;
}


// <javaUtilEx.Map$Entry: int hashCode()>
procedure int$javaUtilEx.Map$Entry$hashCode$2551(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



	 //  @line: 749
// <javaUtilEx.HashMap$Entry: void recordAccess(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$Entry$recordAccess$2650(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r0911 : ref;
var r1912 : ref;
Block968:
	r0911 := __this;
	r1912 := $param_0;
	 return;
}


	 //  @line: 7
// <javaUtilEx.Random: int random()>
procedure int$javaUtilEx.Random$random$2781() returns (__ret : int)
  modifies $stringSize, int$javaUtilEx.Random$index0;
 {
var $i11149 : int;
var $r11147 : [int]ref;
var $i01146 : int;
var r01148 : ref;
var $i21150 : int;
var $i31151 : int;
	 //  @line: 8
Block1177:
	 //  @line: 8
	$r11147 := java.lang.String$lp$$rp$$javaUtilEx.Random$args321;
	 //  @line: 8
	$i01146 := int$javaUtilEx.Random$index0;
	 assert ($geint(($i01146), (0))==1);
	 assert ($ltint(($i01146), ($refArrSize[$r11147[$arrSizeIdx]]))==1);
	 //  @line: 8
	r01148 := $r11147[$i01146];
	 //  @line: 9
	$i11149 := int$javaUtilEx.Random$index0;
	 //  @line: 9
	$i21150 := $addint(($i11149), (1));
	 //  @line: 9
	int$javaUtilEx.Random$index0 := $i21150;
	$i31151 := $stringSize[r01148];
	 //  @line: 10
	__ret := $i31151;
	 return;
}


	 //  @line: 345
// <javaUtilEx.AbstractMap$1: boolean isEmpty()>
procedure boolean$javaUtilEx.AbstractMap$1$isEmpty$2490(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r1128 : ref;
var $z0129 : int;
var r0127 : ref;
Block146:
	r0127 := __this;
	 assert ($neref((r0127), ($null))==1);
	 //  @line: 346
	$r1128 := $HeapVar[r0127, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r1128), ($null))==1);
	 //  @line: 346
	 call $z0129 := boolean$javaUtilEx.AbstractMap$isEmpty$2501(($r1128));
	 //  @line: 346
	__ret := $z0129;
	 return;
}


	 //  @line: 835
// <javaUtilEx.HashMap$ValueIterator: void <init>(javaUtilEx.HashMap,javaUtilEx.HashMap$1)>
procedure void$javaUtilEx.HashMap$ValueIterator$$la$init$ra$$2760(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r01056 : ref;
var r21058 : ref;
var r11057 : ref;
Block1093:
	r01056 := __this;
	r11057 := $param_0;
	r21058 := $param_1;
	 assert ($neref((r01056), ($null))==1);
	 //  @line: 836
	 call void$javaUtilEx.HashMap$ValueIterator$$la$init$ra$$2758((r01056), (r11057));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 758
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: java.lang.Object getKey()>
procedure java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$getKey$2596(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0465 : ref;
var $r1466 : ref;
Block480:
	r0465 := __this;
	 assert ($neref((r0465), ($null))==1);
	 //  @line: 759
	$r1466 := $HeapVar[r0465, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305];
	 //  @line: 759
	__ret := $r1466;
	 return;
}


	 //  @line: 335
// <javaUtilEx.AbstractMap$1$1: void remove()>
procedure void$javaUtilEx.AbstractMap$1$1$remove$2486(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1119 : ref;
var r0118 : ref;
Block141:
	r0118 := __this;
	 assert ($neref((r0118), ($null))==1);
	 //  @line: 336
	$r1119 := $HeapVar[r0118, javaUtilEx.Iterator$javaUtilEx.AbstractMap$1$1$i295];
	 assert ($neref(($r1119), ($null))==1);
	 //  @line: 336
	 call void$javaUtilEx.Iterator$remove$2256(($r1119));
	 return;
}


	 //  @line: 807
// <javaUtilEx.HashMap$HashIterator: javaUtilEx.HashMap$Entry nextEntry()>
procedure javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$nextEntry$2769(__this : ref) returns (__ret : ref, $Exep1 : ref, $Exep0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r11094 : ref;
var $r81104 : ref;
var $r61102 : ref;
var $i31099 : int;
var $r71103 : ref;
var $i21098 : int;
var $i41100 : int;
var $r31091 : ref;
var $r41095 : ref;
var r21097 : [int]ref;
var $i11093 : int;
var $i01092 : int;
var r01090 : ref;
var $r51096 : ref;
var $i51101 : int;

 //temp local variables 

	 //  @line: 807
Block971:
	$Exep1 := $null;
	$Exep0 := $null;
	 goto Block1118;
Block1118:
	r01090 := __this;
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 808
	$r31091 := $HeapVar[r01090, javaUtilEx.HashMap$javaUtilEx.HashMap$HashIterator$this$0320];
	 assert ($neref(($r31091), ($null))==1);
	 //  @line: 808
	$i11093 := $HeapVar[$r31091, int$javaUtilEx.HashMap$modCount0];
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 808
	$i01092 := $HeapVar[r01090, int$javaUtilEx.HashMap$HashIterator$expectedModCount0];
	 goto Block1119;
	 //  @line: 808
Block1119:
	 goto Block1120, Block1122;
	 //  @line: 808
Block1120:
	 assume ($eqint(($i11093), ($i01092))==1);
	 goto Block1121;
	 //  @line: 808
Block1122:
	 //  @line: 808
	 assume ($negInt(($eqint(($i11093), ($i01092))))==1);
	 //  @line: 809
	$r81104 := $newvariable((1123));
	 assume ($neref(($newvariable((1123))), ($null))==1);
	 assert ($neref(($r81104), ($null))==1);
	 //  @line: 809
	 call void$javaUtilEx.ConcurrentModificationException$$la$init$ra$$2602(($r81104));
	 goto Block1124;
	 //  @line: 810
Block1121:
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 810
	r11094 := $HeapVar[r01090, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$next318];
	 goto Block1125;
	 //  @line: 808
Block1124:
	$Exep0 := $r81104;
	 return;
	 //  @line: 811
Block1125:
	 goto Block1126, Block1128;
	 //  @line: 811
Block1126:
	 assume ($neref((r11094), ($null))==1);
	 goto Block1127;
	 //  @line: 811
Block1128:
	 //  @line: 811
	 assume ($negInt(($neref((r11094), ($null))))==1);
	 //  @line: 812
	$r71103 := $newvariable((1129));
	 assume ($neref(($newvariable((1129))), ($null))==1);
	 assert ($neref(($r71103), ($null))==1);
	 //  @line: 812
	 call void$javaUtilEx.NoSuchElementException$$la$init$ra$$2771(($r71103));
	 goto Block1130;
	 //  @line: 814
Block1127:
	 assert ($neref((r11094), ($null))==1);
	 //  @line: 814
	$r41095 := $HeapVar[r11094, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block1131;
	 //  @line: 811
Block1130:
	$Exep1 := $r71103;
	 return;
	 //  @line: 814
Block1131:
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 814
	$HeapVar[r01090, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$next318] := $r41095;
	 goto Block1132;
	 //  @line: 814
Block1132:
	 goto Block1135, Block1133;
	 //  @line: 814
Block1135:
	 //  @line: 814
	 assume ($negInt(($neref(($r41095), ($null))))==1);
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 815
	$r51096 := $HeapVar[r01090, javaUtilEx.HashMap$javaUtilEx.HashMap$HashIterator$this$0320];
	 assert ($neref(($r51096), ($null))==1);
	 //  @line: 815
	r21097 := $HeapVar[$r51096, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 goto Block1136;
	 //  @line: 814
Block1133:
	 assume ($neref(($r41095), ($null))==1);
	 goto Block1134;
	 //  @line: 816
Block1136:
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 816
	$i31099 := $HeapVar[r01090, int$javaUtilEx.HashMap$HashIterator$index0];
	 //  @line: 816
	$i21098 := $refArrSize[r21097[$arrSizeIdx]];
	 goto Block1137;
	 //  @line: 819
Block1134:
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 819
	$HeapVar[r01090, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$current319] := r11094;
	 goto Block1143;
	 //  @line: 816
Block1137:
	 goto Block1139, Block1138;
	 //  @line: 820
Block1143:
	 //  @line: 820
	__ret := r11094;
	 return;
	 //  @line: 816
Block1139:
	 //  @line: 816
	 assume ($negInt(($geint(($i31099), ($i21098))))==1);
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 820
	$i41100 := $HeapVar[r01090, int$javaUtilEx.HashMap$HashIterator$index0];
	 //  @line: 820
	$i51101 := $addint(($i41100), (1));
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 820
	$HeapVar[r01090, int$javaUtilEx.HashMap$HashIterator$index0] := $i51101;
	 assert ($geint(($i41100), (0))==1);
	 assert ($ltint(($i41100), ($refArrSize[r21097[$arrSizeIdx]]))==1);
	 //  @line: 820
	$r61102 := r21097[$i41100];
	 assert ($neref((r01090), ($null))==1);
	 //  @line: 820
	$HeapVar[r01090, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$next318] := $r61102;
	 goto Block1140;
	 //  @line: 816
Block1138:
	 assume ($geint(($i31099), ($i21098))==1);
	 goto Block1134;
	 //  @line: 820
Block1140:
	 goto Block1142, Block1141;
	 //  @line: 820
Block1142:
	 //  @line: 820
	 assume ($negInt(($neref(($r61102), ($null))))==1);
	 goto Block1136;
	 //  @line: 820
Block1141:
	 assume ($neref(($r61102), ($null))==1);
	 goto Block1134;
}


	 //  @line: 85
// <javaUtilEx.AbstractCollection: boolean isEmpty()>
procedure boolean$javaUtilEx.AbstractCollection$isEmpty$2231(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $i03 : int;
var r02 : ref;
var $z05 : int;
Block17:
	r02 := __this;
	 assert ($neref((r02), ($null))==1);
	 //  @line: 86
	 call $i03 := int$javaUtilEx.AbstractCollection$size$2230((r02));
	 goto Block18;
	 //  @line: 86
Block18:
	 goto Block21, Block19;
	 //  @line: 86
Block21:
	 //  @line: 86
	 assume ($negInt(($neint(($i03), (0))))==1);
	 //  @line: 86
	$z05 := 1;
	 goto Block22;
	 //  @line: 86
Block19:
	 assume ($neint(($i03), (0))==1);
	 goto Block20;
	 //  @line: 86
Block22:
	 //  @line: 86
	__ret := $z05;
	 return;
	 //  @line: 86
Block20:
	 //  @line: 86
	$z05 := 0;
	 goto Block22;
}


// <java.lang.Math: int max(int,int)>
procedure int$java.lang.Math$max$2700($param_0 : int, $param_1 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorefarr($param00 : ref) returns (__ret : [int]ref);



// procedure is generated by joogie.
function {:inline true} $reftoint($param00 : ref) returns (__ret : int);



	 //  @line: 320
// <javaUtilEx.AbstractMap: javaUtilEx.Set keySet()>
procedure javaUtilEx.Set$javaUtilEx.AbstractMap$keySet$2509(__this : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r2305 : ref;
var $r1304 : ref;
var $r3306 : ref;
var r0303 : ref;
Block331:
	r0303 := __this;
	 assert ($neref((r0303), ($null))==1);
	 //  @line: 321
	$r1304 := $HeapVar[r0303, javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298];
	 goto Block332;
	 //  @line: 321
Block332:
	 goto Block333, Block335;
	 //  @line: 321
Block333:
	 assume ($neref(($r1304), ($null))==1);
	 goto Block334;
	 //  @line: 321
Block335:
	 //  @line: 321
	 assume ($negInt(($neref(($r1304), ($null))))==1);
	 //  @line: 322
	$r3306 := $newvariable((336));
	 assume ($neref(($newvariable((336))), ($null))==1);
	 assert ($neref(($r3306), ($null))==1);
	 //  @line: 322
	 call void$javaUtilEx.AbstractMap$1$$la$init$ra$$2487(($r3306), (r0303));
	 assert ($neref((r0303), ($null))==1);
	 //  @line: 322
	$HeapVar[r0303, javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298] := $r3306;
	 goto Block334;
	 //  @line: 378
Block334:
	 assert ($neref((r0303), ($null))==1);
	 //  @line: 378
	$r2305 := $HeapVar[r0303, javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298];
	 //  @line: 378
	__ret := $r2305;
	 return;
}


	 //  @line: 858
// <javaUtilEx.HashMap: javaUtilEx.Iterator newValueIterator()>
procedure javaUtilEx.Iterator$javaUtilEx.HashMap$newValueIterator$2637(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1845 : ref;
var r0846 : ref;
Block893:
	r0846 := __this;
	 //  @line: 859
	$r1845 := $newvariable((894));
	 assume ($neref(($newvariable((894))), ($null))==1);
	 assert ($neref(($r1845), ($null))==1);
	 //  @line: 859
	 call void$javaUtilEx.HashMap$ValueIterator$$la$init$ra$$2760(($r1845), (r0846), ($null));
	 //  @line: 859
	__ret := $r1845;
	 return;
}


	 //  @line: 981
// <javaUtilEx.HashMap$EntrySet: void <init>(javaUtilEx.HashMap,javaUtilEx.HashMap$1)>
procedure void$javaUtilEx.HashMap$EntrySet$$la$init$ra$$2750(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r01032 : ref;
var r11033 : ref;
var r21034 : ref;
Block1065:
	r01032 := __this;
	r11033 := $param_0;
	r21034 := $param_1;
	 assert ($neref((r01032), ($null))==1);
	 //  @line: 982
	 call void$javaUtilEx.HashMap$EntrySet$$la$init$ra$$2742((r01032), (r11033));
	 return;
}


	 //  @line: 999
// <javaUtilEx.HashMap$EntrySet: void clear()>
procedure void$javaUtilEx.HashMap$EntrySet$clear$2747(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01001 : ref;
var $r11002 : ref;
Block1046:
	r01001 := __this;
	 assert ($neref((r01001), ($null))==1);
	 //  @line: 1000
	$r11002 := $HeapVar[r01001, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314];
	 assert ($neref(($r11002), ($null))==1);
	 //  @line: 1000
	 call void$javaUtilEx.HashMap$clear$2630(($r11002));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $xorreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// <java.lang.Object: java.lang.Class getClass()>
procedure java.lang.Class$java.lang.Object$getClass$30(__this : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $andref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 71
// <javaUtilEx.UnsupportedOperationException: void <init>(java.lang.String,java.lang.Throwable)>
procedure void$javaUtilEx.UnsupportedOperationException$$la$init$ra$$2259(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r099 : ref;
var r2101 : ref;
var r1100 : ref;
Block136:
	r099 := __this;
	r1100 := $param_0;
	r2101 := $param_1;
	 assert ($neref((r099), ($null))==1);
	 //  @line: 72
	 call void$java.lang.RuntimeException$$la$init$ra$$762((r099), (r1100), (r2101));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $cmpreal(x : realVar, y : realVar) returns (__ret : int) {
if ($ltreal((x), (y)) == 1) then 1 else if ($eqreal((x), (y)) == 1) then 0 else -1
}


	 //  @line: 628
// <javaUtilEx.AbstractMap$SimpleEntry: java.lang.Object getKey()>
procedure java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$getKey$2588(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0420 : ref;
var $r1421 : ref;
Block446:
	r0420 := __this;
	 assert ($neref((r0420), ($null))==1);
	 //  @line: 629
	$r1421 := $HeapVar[r0420, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303];
	 //  @line: 629
	__ret := $r1421;
	 return;
}


// <javaUtilEx.Set: void clear()>
procedure void$javaUtilEx.Set$clear$2530(__this : ref);



	 //  @line: 73
// <javaUtilEx.ConcurrentModificationException: void <init>()>
procedure void$javaUtilEx.ConcurrentModificationException$$la$init$ra$$2602(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0503 : ref;
Block515:
	r0503 := __this;
	 assert ($neref((r0503), ($null))==1);
	 //  @line: 74
	 call void$java.lang.RuntimeException$$la$init$ra$$760((r0503));
	 return;
}


	 //  @line: 2
// <javaUtilEx.juHashMapCreateClear: void <init>()>
procedure void$javaUtilEx.juHashMapCreateClear$$la$init$ra$$2777(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01129 : ref;
Block1166:
	r01129 := __this;
	 assert ($neref((r01129), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r01129));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ltint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $mulint($param00 : int, $param11 : int) returns (__ret : int);



// <java.lang.RuntimeException: void <init>(java.lang.Throwable)>
procedure void$java.lang.RuntimeException$$la$init$ra$$763(__this : ref, $param_0 : ref);



	 //  @line: 706
// <javaUtilEx.HashMap$Entry: java.lang.Object getKey()>
procedure java.lang.Object$javaUtilEx.HashMap$Entry$getKey$2644(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1872 : ref;
var r0871 : ref;
Block923:
	r0871 := __this;
	 assert ($neref((r0871), ($null))==1);
	 //  @line: 707
	$r1872 := $HeapVar[r0871, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 //  @line: 707
	__ret := $r1872;
	 return;
}


// <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>
procedure java.lang.Object$java.lang.reflect.Array$newInstance$2553($param_0 : ref, $param_1 : int) returns (__ret : ref, $Exep0 : ref) {

 //temp local variables 

Block156:
	$Exep0 := $null;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ltref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 139
// <javaUtilEx.AbstractMap: boolean containsKey(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$containsKey$2503(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r9249 : ref;
var r2238 : ref;
var r0235 : ref;
var r8248 : ref;
var $r3236 : ref;
var $r4241 : ref;
var $z2245 : int;
var r1239 : ref;
var $z0240 : int;
var $z1244 : int;
var $r6246 : ref;
var $r7247 : ref;
var $r5243 : ref;
Block243:
	r0235 := __this;
	r1239 := $param_0;
	 assert ($neref((r0235), ($null))==1);
	 //  @line: 140
	 call $r3236 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0235));
	 assert ($neref(($r3236), ($null))==1);
	 //  @line: 140
	 call r2238 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r3236));
	 goto Block244;
	 //  @line: 141
Block244:
	 goto Block247, Block245;
	 //  @line: 141
Block247:
	 //  @line: 141
	 assume ($negInt(($neref((r1239), ($null))))==1);
	 goto Block248;
	 //  @line: 141
Block245:
	 assume ($neref((r1239), ($null))==1);
	 goto Block246;
	 //  @line: 142
Block248:
	 assert ($neref((r2238), ($null))==1);
	 //  @line: 142
	 call $z2245 := boolean$javaUtilEx.Iterator$hasNext$2254((r2238));
	 goto Block249;
	 //  @line: 148
Block246:
	 assert ($neref((r2238), ($null))==1);
	 //  @line: 148
	 call $z0240 := boolean$javaUtilEx.Iterator$hasNext$2254((r2238));
	 goto Block257;
	 //  @line: 142
Block249:
	 goto Block250, Block252;
	 //  @line: 148
Block257:
	 goto Block259, Block258;
	 //  @line: 142
Block250:
	 assume ($eqint(($z2245), (0))==1);
	 goto Block251;
	 //  @line: 142
Block252:
	 //  @line: 142
	 assume ($negInt(($eqint(($z2245), (0))))==1);
	 assert ($neref((r2238), ($null))==1);
	 //  @line: 143
	 call $r6246 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2238));
	 //  @line: 143
	r8248 := $r6246;
	 assert ($neref((r8248), ($null))==1);
	 //  @line: 144
	 call $r7247 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r8248));
	 goto Block253;
	 //  @line: 148
Block259:
	 //  @line: 148
	 assume ($negInt(($eqint(($z0240), (0))))==1);
	 assert ($neref((r2238), ($null))==1);
	 //  @line: 149
	 call $r4241 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2238));
	 //  @line: 149
	r9249 := $r4241;
	 assert ($neref((r9249), ($null))==1);
	 //  @line: 150
	 call $r5243 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r9249));
	 assert ($neref((r1239), ($null))==1);
	 //  @line: 150
	 call $z1244 := boolean$java.lang.Object$equals$32((r1239), ($r5243));
	 goto Block260;
	 //  @line: 148
Block258:
	 assume ($eqint(($z0240), (0))==1);
	 goto Block251;
	 //  @line: 154
Block251:
	 //  @line: 154
	__ret := 0;
	 return;
	 //  @line: 144
Block253:
	 goto Block256, Block254;
	 //  @line: 150
Block260:
	 goto Block261, Block263;
	 //  @line: 144
Block256:
	 //  @line: 144
	 assume ($negInt(($neref(($r7247), ($null))))==1);
	 //  @line: 145
	__ret := 1;
	 return;
	 //  @line: 144
Block254:
	 assume ($neref(($r7247), ($null))==1);
	 goto Block255;
	 //  @line: 150
Block261:
	 assume ($eqint(($z1244), (0))==1);
	 goto Block262;
	 //  @line: 150
Block263:
	 //  @line: 150
	 assume ($negInt(($eqint(($z1244), (0))))==1);
	 //  @line: 151
	__ret := 1;
	 return;
	 //  @line: 146
Block255:
	 goto Block248;
	 //  @line: 152
Block262:
	 goto Block246;
}


// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 90
// <javaUtilEx.IllegalArgumentException: void <init>(java.lang.Throwable)>
procedure void$javaUtilEx.IllegalArgumentException$$la$init$ra$$2757(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r11050 : ref;
var r01049 : ref;
Block1081:
	r01049 := __this;
	r11050 := $param_0;
	 assert ($neref((r01049), ($null))==1);
	 //  @line: 91
	 call void$java.lang.RuntimeException$$la$init$ra$$763((r01049), (r11050));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


// <java.lang.Object: int hashCode()>
procedure int$java.lang.Object$hashCode$31(__this : ref) returns (__ret : int);



	 //  @line: 559
// <javaUtilEx.AbstractMap: java.lang.Object clone()>
procedure java.lang.Object$javaUtilEx.AbstractMap$clone$2515(__this : ref) returns (__ret : ref, $Exep0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0371 : ref;
var $r2372 : ref;
var r1373 : ref;

 //temp local variables 
var $caughtEx1 : ref;

	 //  @line: 559
Block415:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block416;
Block416:
	r0371 := __this;
	 assert ($neref((r0371), ($null))==1);
	 //  @line: 560
	 call $r2372, $caughtEx1 := java.lang.Object$java.lang.Object$clone$33((r0371));
	 goto Block417, Block419;
Block417:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block418;
Block419:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block420;
Block418:
	$Exep0 := $caughtEx1;
	 return;
Block420:
	 //  @line: 560
	r1373 := $r2372;
	 assert ($neref((r1373), ($null))==1);
	 //  @line: 561
	$HeapVar[r1373, javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298] := $null;
	 assert ($neref((r1373), ($null))==1);
	 //  @line: 562
	$HeapVar[r1373, javaUtilEx.Collection$javaUtilEx.AbstractMap$values299] := $null;
	 //  @line: 563
	__ret := r1373;
	 return;
}


// <java.lang.StringBuilder: java.lang.StringBuilder append(float)>
procedure java.lang.StringBuilder$java.lang.StringBuilder$append$2276(__this : ref, $param_0 : realVar) returns (__ret : ref);



	 //  @line: 428
// <javaUtilEx.HashMap: void putForCreate(java.lang.Object,java.lang.Object)>
procedure void$javaUtilEx.HashMap$putForCreate$2622(__this : ref, $param_0 : ref, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0652 : ref;
var r1648 : ref;
var $z0663 : int;
var $i3654 : int;
var i1656 : int;
var r2659 : ref;
var $r4653 : [int]ref;
var $i4660 : int;
var $i5664 : int;
var r7665 : ref;
var $i2649 : int;
var $r5657 : [int]ref;
var $r6661 : ref;
var i0651 : int;
var r3662 : ref;
Block681:
	r0652 := __this;
	r1648 := $param_0;
	r2659 := $param_1;
	 goto Block682;
	 //  @line: 429
Block682:
	 goto Block685, Block683;
	 //  @line: 429
Block685:
	 //  @line: 429
	 assume ($negInt(($neref((r1648), ($null))))==1);
	 //  @line: 442
	$i5664 := 0;
	 goto Block686;
	 //  @line: 429
Block683:
	 assume ($neref((r1648), ($null))==1);
	 goto Block684;
	 //  @line: 429
Block686:
	 //  @line: 429
	i0651 := $i5664;
	 assert ($neref((r0652), ($null))==1);
	 //  @line: 430
	$r4653 := $HeapVar[r0652, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 430
	$i3654 := $refArrSize[$r4653[$arrSizeIdx]];
	 //  @line: 430
	 call i1656 := int$javaUtilEx.HashMap$indexFor$2613((i0651), ($i3654));
	 assert ($neref((r0652), ($null))==1);
	 //  @line: 437
	$r5657 := $HeapVar[r0652, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1656), (0))==1);
	 assert ($ltint((i1656), ($refArrSize[$r5657[$arrSizeIdx]]))==1);
	 //  @line: 437
	r7665 := $r5657[i1656];
	 goto Block688;
	 //  @line: 429
Block684:
	 assert ($neref((r1648), ($null))==1);
	 //  @line: 429
	 call $i2649 := int$java.lang.Object$hashCode$31((r1648));
	 goto Block687;
	 //  @line: 437
Block688:
	 goto Block689, Block691;
	 //  @line: 429
Block687:
	 //  @line: 429
	 call $i5664 := int$javaUtilEx.HashMap$hash$2612(($i2649));
	 goto Block686;
	 //  @line: 437
Block689:
	 assume ($eqref((r7665), ($null))==1);
	 goto Block690;
	 //  @line: 437
Block691:
	 //  @line: 437
	 assume ($negInt(($eqref((r7665), ($null))))==1);
	 assert ($neref((r7665), ($null))==1);
	 //  @line: 439
	$i4660 := $HeapVar[r7665, int$javaUtilEx.HashMap$Entry$hash0];
	 goto Block692;
	 //  @line: 446
Block690:
	 assert ($neref((r0652), ($null))==1);
	 //  @line: 446
	 call void$javaUtilEx.HashMap$createEntry$2635((r0652), (i0651), (r1648), (r2659), (i1656));
	 goto Block707;
	 //  @line: 439
Block692:
	 goto Block693, Block695;
	 //  @line: 447
Block707:
	 return;
	 //  @line: 439
Block693:
	 assume ($neint(($i4660), (i0651))==1);
	 goto Block694;
	 //  @line: 439
Block695:
	 //  @line: 439
	 assume ($negInt(($neint(($i4660), (i0651))))==1);
	 assert ($neref((r7665), ($null))==1);
	 //  @line: 437
	$r6661 := $HeapVar[r7665, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 //  @line: 437
	r3662 := $r6661;
	 goto Block696;
	 //  @line: 437
Block694:
	 assert ($neref((r7665), ($null))==1);
	 //  @line: 437
	r7665 := $HeapVar[r7665, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block706;
	 //  @line: 437
Block696:
	 goto Block697, Block699;
	 //  @line: 437
Block706:
	 goto Block688;
	 //  @line: 437
Block697:
	 assume ($eqref(($r6661), (r1648))==1);
	 goto Block698;
	 //  @line: 437
Block699:
	 //  @line: 437
	 assume ($negInt(($eqref(($r6661), (r1648))))==1);
	 goto Block700;
	 //  @line: 441
Block698:
	 assert ($neref((r7665), ($null))==1);
	 //  @line: 441
	$HeapVar[r7665, java.lang.Object$javaUtilEx.HashMap$Entry$value310] := r2659;
	 return;
	 //  @line: 442
Block700:
	 goto Block702, Block701;
	 //  @line: 442
Block702:
	 //  @line: 442
	 assume ($negInt(($eqref((r1648), ($null))))==1);
	 assert ($neref((r1648), ($null))==1);
	 //  @line: 437
	 call $z0663 := boolean$java.lang.Object$equals$32((r1648), (r3662));
	 goto Block703;
	 //  @line: 442
Block701:
	 assume ($eqref((r1648), ($null))==1);
	 goto Block694;
	 //  @line: 437
Block703:
	 goto Block704, Block705;
	 //  @line: 437
Block704:
	 assume ($eqint(($z0663), (0))==1);
	 goto Block694;
	 //  @line: 437
Block705:
	 //  @line: 437
	 assume ($negInt(($eqint(($z0663), (0))))==1);
	 goto Block698;
}


	 //  @line: 658
// <javaUtilEx.HashMap: boolean containsNullValue()>
procedure boolean$javaUtilEx.HashMap$containsNullValue$2632(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r2805 : ref;
var i1806 : int;
var $i0803 : int;
var r3807 : ref;
var r0800 : ref;
var r1801 : [int]ref;
Block857:
	r0800 := __this;
	 assert ($neref((r0800), ($null))==1);
	 //  @line: 659
	r1801 := $HeapVar[r0800, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 660
	i1806 := 0;
	 goto Block858;
	 //  @line: 660
Block858:
	 //  @line: 660
	$i0803 := $refArrSize[r1801[$arrSizeIdx]];
	 goto Block859;
	 //  @line: 660
Block859:
	 goto Block860, Block862;
	 //  @line: 660
Block860:
	 assume ($geint((i1806), ($i0803))==1);
	 goto Block861;
	 //  @line: 660
Block862:
	 //  @line: 660
	 assume ($negInt(($geint((i1806), ($i0803))))==1);
	 assert ($geint((i1806), (0))==1);
	 assert ($ltint((i1806), ($refArrSize[r1801[$arrSizeIdx]]))==1);
	 //  @line: 661
	r3807 := r1801[i1806];
	 goto Block863;
	 //  @line: 664
Block861:
	 //  @line: 664
	__ret := 0;
	 return;
	 //  @line: 661
Block863:
	 goto Block866, Block864;
	 //  @line: 661
Block866:
	 //  @line: 661
	 assume ($negInt(($eqref((r3807), ($null))))==1);
	 assert ($neref((r3807), ($null))==1);
	 //  @line: 662
	$r2805 := $HeapVar[r3807, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 goto Block867;
	 //  @line: 661
Block864:
	 assume ($eqref((r3807), ($null))==1);
	 goto Block865;
	 //  @line: 662
Block867:
	 goto Block868, Block870;
	 //  @line: 660
Block865:
	 //  @line: 660
	i1806 := $addint((i1806), (1));
	 goto Block872;
	 //  @line: 662
Block868:
	 assume ($neref(($r2805), ($null))==1);
	 goto Block869;
	 //  @line: 662
Block870:
	 //  @line: 662
	 assume ($negInt(($neref(($r2805), ($null))))==1);
	 //  @line: 663
	__ret := 1;
	 return;
	 //  @line: 660
Block872:
	 goto Block858;
	 //  @line: 661
Block869:
	 assert ($neref((r3807), ($null))==1);
	 //  @line: 661
	r3807 := $HeapVar[r3807, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block871;
	 //  @line: 661
Block871:
	 goto Block863;
}


	 //  @line: 710
// <javaUtilEx.HashMap$Entry: java.lang.Object getValue()>
procedure java.lang.Object$javaUtilEx.HashMap$Entry$getValue$2645(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0873 : ref;
var $r1874 : ref;
Block924:
	r0873 := __this;
	 assert ($neref((r0873), ($null))==1);
	 //  @line: 711
	$r1874 := $HeapVar[r0873, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 //  @line: 711
	__ret := $r1874;
	 return;
}


	 //  @line: 487
// <javaUtilEx.HashMap: void transfer(javaUtilEx.HashMap$Entry[])>
procedure void$javaUtilEx.HashMap$transfer$2625(__this : ref, $param_0 : [int]ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r3692 : ref;
var i1695 : int;
var r2686 : [int]ref;
var i4697 : int;
var r5698 : ref;
var r0685 : ref;
var $i2690 : int;
var r1687 : [int]ref;
var i0688 : int;
var $r4696 : ref;
var $i3693 : int;
Block721:
	r0685 := __this;
	r1687 := $param_0;
	 assert ($neref((r0685), ($null))==1);
	 //  @line: 488
	r2686 := $HeapVar[r0685, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 489
	i0688 := $refArrSize[r1687[$arrSizeIdx]];
	 //  @line: 490
	i4697 := 0;
	 goto Block722;
	 //  @line: 490
Block722:
	 //  @line: 490
	$i2690 := $refArrSize[r2686[$arrSizeIdx]];
	 goto Block723;
	 //  @line: 490
Block723:
	 goto Block726, Block724;
	 //  @line: 490
Block726:
	 //  @line: 490
	 assume ($negInt(($geint((i4697), ($i2690))))==1);
	 assert ($geint((i4697), (0))==1);
	 assert ($ltint((i4697), ($refArrSize[r2686[$arrSizeIdx]]))==1);
	 //  @line: 491
	r5698 := r2686[i4697];
	 goto Block727;
	 //  @line: 490
Block724:
	 assume ($geint((i4697), ($i2690))==1);
	 goto Block725;
	 //  @line: 492
Block727:
	 goto Block728, Block730;
	 //  @line: 503
Block725:
	 return;
	 //  @line: 492
Block728:
	 assume ($eqref((r5698), ($null))==1);
	 goto Block729;
	 //  @line: 492
Block730:
	 //  @line: 492
	 assume ($negInt(($eqref((r5698), ($null))))==1);
	 assert ($geint((i4697), (0))==1);
	 assert ($ltint((i4697), ($refArrSize[r2686[$arrSizeIdx]]))==1);
	 //  @line: 493
	r2686[i4697] := $null;
	 goto Block731;
	 //  @line: 490
Block729:
	 //  @line: 490
	i4697 := $addint((i4697), (1));
	 goto Block722;
	 //  @line: 495
Block731:
	 assert ($neref((r5698), ($null))==1);
	 //  @line: 495
	r3692 := $HeapVar[r5698, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 assert ($neref((r5698), ($null))==1);
	 //  @line: 496
	$i3693 := $HeapVar[r5698, int$javaUtilEx.HashMap$Entry$hash0];
	 //  @line: 496
	 call i1695 := int$javaUtilEx.HashMap$indexFor$2613(($i3693), (i0688));
	 assert ($geint((i1695), (0))==1);
	 assert ($ltint((i1695), ($refArrSize[r1687[$arrSizeIdx]]))==1);
	 //  @line: 497
	$r4696 := r1687[i1695];
	 assert ($neref((r5698), ($null))==1);
	 //  @line: 497
	$HeapVar[r5698, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311] := $r4696;
	 assert ($geint((i1695), (0))==1);
	 assert ($ltint((i1695), ($refArrSize[r1687[$arrSizeIdx]]))==1);
	 //  @line: 498
	r1687[i1695] := r5698;
	 //  @line: 499
	r5698 := r3692;
	 goto Block732;
	 //  @line: 500
Block732:
	 goto Block734, Block733;
	 //  @line: 500
Block734:
	 //  @line: 500
	 assume ($negInt(($neref((r5698), ($null))))==1);
	 goto Block729;
	 //  @line: 500
Block733:
	 assume ($neref((r5698), ($null))==1);
	 goto Block731;
}


	 //  @line: 606
// <javaUtilEx.AbstractMap$SimpleEntry: void <init>(java.lang.Object,java.lang.Object)>
procedure void$javaUtilEx.AbstractMap$SimpleEntry$$la$init$ra$$2586(__this : ref, $param_0 : ref, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r1414 : ref;
var r2415 : ref;
var r0413 : ref;
Block444:
	r0413 := __this;
	r1414 := $param_0;
	r2415 := $param_1;
	 assert ($neref((r0413), ($null))==1);
	 //  @line: 607
	 call void$java.lang.Object$$la$init$ra$$28((r0413));
	 assert ($neref((r0413), ($null))==1);
	 //  @line: 608
	$HeapVar[r0413, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303] := r1414;
	 assert ($neref((r0413), ($null))==1);
	 //  @line: 609
	$HeapVar[r0413, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304] := r2415;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqintarray($param00 : [int]int, $param11 : [int]int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $lereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 319
// <javaUtilEx.AbstractCollection: java.lang.String toString()>
procedure java.lang.String$javaUtilEx.AbstractCollection$toString$2240(__this : ref) returns (__ret : ref)
  modifies $stringSize;
  requires ($neref((__this), ($null))==1);
 {
var r1894 : ref;
var $r1083 : ref;
var $r1387 : ref;
var $r1286 : ref;
var $r879 : ref;
var $r573 : ref;
var $r472 : ref;
var r168 : ref;
var $r1793 : ref;
var $r982 : ref;
var $r1488 : ref;
var r1591 : ref;
var $r371 : ref;
var r1995 : ref;
var $r778 : ref;
var r276 : ref;
var r1692 : ref;
var $z181 : int;
var $r1184 : ref;
var r066 : ref;
var $z069 : int;
var $r677 : ref;
Block112:
	r066 := __this;
	 assert ($neref((r066), ($null))==1);
	 //  @line: 320
	 call r168 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r066));
	 assert ($neref((r168), ($null))==1);
	 //  @line: 321
	 call $z069 := boolean$javaUtilEx.Iterator$hasNext$2254((r168));
	 goto Block113;
	 //  @line: 321
Block113:
	 goto Block116, Block114;
	 //  @line: 321
Block116:
	 //  @line: 321
	 assume ($negInt(($neint(($z069), (0))))==1);
	$stringSize[$fresh1] := 2;
	 //  @line: 322
	__ret := $fresh1;
	 return;
	 //  @line: 321
Block114:
	 assume ($neint(($z069), (0))==1);
	 goto Block115;
	 //  @line: 324
Block115:
	$stringSize[$fresh2] := 0;
	 //  @line: 324
	r1591 := $fresh2;
	 goto Block117;
	 //  @line: 325
Block117:
	 //  @line: 325
	$r371 := $newvariable((118));
	 assume ($neref(($newvariable((118))), ($null))==1);
	 assert ($neref(($r371), ($null))==1);
	 //  @line: 325
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r371));
	 assert ($neref(($r371), ($null))==1);
	 //  @line: 325
	 call $r472 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r371), (r1591));
	$stringSize[$fresh3] := 1;
	 assert ($neref(($r472), ($null))==1);
	 //  @line: 325
	 call $r573 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r472), ($fresh3));
	 assert ($neref(($r573), ($null))==1);
	 //  @line: 325
	 call r1692 := java.lang.String$java.lang.StringBuilder$toString$2299(($r573));
	 goto Block119;
	 //  @line: 327
Block119:
	 assert ($neref((r168), ($null))==1);
	 //  @line: 327
	 call r276 := java.lang.Object$javaUtilEx.Iterator$next$2255((r168));
	 //  @line: 328
	$r677 := $newvariable((120));
	 assume ($neref(($newvariable((120))), ($null))==1);
	 assert ($neref(($r677), ($null))==1);
	 //  @line: 328
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r677));
	 assert ($neref(($r677), ($null))==1);
	 //  @line: 328
	 call $r778 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r677), (r1692));
	 goto Block121;
	 //  @line: 328
Block121:
	 goto Block122, Block124;
	 //  @line: 328
Block122:
	 assume ($neref((r276), (r066))==1);
	 goto Block123;
	 //  @line: 328
Block124:
	 //  @line: 328
	 assume ($negInt(($neref((r276), (r066))))==1);
	$stringSize[$fresh4] := 17;
	 //  @line: 331
	$r1793 := $fresh4;
	 goto Block125;
	 //  @line: 331
Block123:
	 //  @line: 331
	$r1793 := r276;
	 goto Block125;
	 //  @line: 328
Block125:
	 assert ($neref(($r778), ($null))==1);
	 //  @line: 328
	 call $r879 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265(($r778), ($r1793));
	 goto Block126;
	 //  @line: 328
Block126:
	 assert ($neref(($r879), ($null))==1);
	 //  @line: 328
	 call r1894 := java.lang.String$java.lang.StringBuilder$toString$2299(($r879));
	 assert ($neref((r168), ($null))==1);
	 //  @line: 329
	 call $z181 := boolean$javaUtilEx.Iterator$hasNext$2254((r168));
	 goto Block127;
	 //  @line: 329
Block127:
	 goto Block128, Block130;
	 //  @line: 329
Block128:
	 assume ($neint(($z181), (0))==1);
	 goto Block129;
	 //  @line: 329
Block130:
	 //  @line: 329
	 assume ($negInt(($neint(($z181), (0))))==1);
	 //  @line: 330
	$r1286 := $newvariable((131));
	 assume ($neref(($newvariable((131))), ($null))==1);
	 assert ($neref(($r1286), ($null))==1);
	 //  @line: 330
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r1286));
	 assert ($neref(($r1286), ($null))==1);
	 //  @line: 330
	 call $r1387 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r1286), (r1894));
	$stringSize[$fresh5] := 1;
	 assert ($neref(($r1387), ($null))==1);
	 //  @line: 330
	 call $r1488 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r1387), ($fresh5));
	 assert ($neref(($r1488), ($null))==1);
	 //  @line: 330
	 call r1995 := java.lang.String$java.lang.StringBuilder$toString$2299(($r1488));
	 //  @line: 331
	__ret := r1995;
	 return;
	 //  @line: 333
Block129:
	 //  @line: 333
	$r982 := $newvariable((132));
	 assume ($neref(($newvariable((132))), ($null))==1);
	 goto Block133;
	 //  @line: 333
Block133:
	 assert ($neref(($r982), ($null))==1);
	 //  @line: 333
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r982));
	 assert ($neref(($r982), ($null))==1);
	 //  @line: 333
	 call $r1083 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r982), (r1894));
	$stringSize[$fresh6] := 2;
	 assert ($neref(($r1083), ($null))==1);
	 //  @line: 333
	 call $r1184 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r1083), ($fresh6));
	 assert ($neref(($r1184), ($null))==1);
	 //  @line: 333
	 call r1692 := java.lang.String$java.lang.StringBuilder$toString$2299(($r1184));
	 goto Block119;
}


// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



// <javaUtilEx.Map: javaUtilEx.Set entrySet()>
procedure javaUtilEx.Set$javaUtilEx.Map$entrySet$2544(__this : ref) returns (__ret : ref);



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $intarrtoref($param00 : [int]int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $subreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 227
// <javaUtilEx.AbstractMap: java.lang.Object remove(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.AbstractMap$remove$2506(__this : ref, $param_0 : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r11289 : ref;
var r1276 : ref;
var r8286 : ref;
var $r3272 : ref;
var r9287 : ref;
var $z1282 : int;
var $z2283 : int;
var $r7285 : ref;
var $r4280 : ref;
var r0271 : ref;
var $r6284 : ref;
var r2274 : ref;
var r10288 : ref;
var $z0279 : int;
var $r5281 : ref;
Block289:
	r0271 := __this;
	r1276 := $param_0;
	 assert ($neref((r0271), ($null))==1);
	 //  @line: 228
	 call $r3272 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0271));
	 assert ($neref(($r3272), ($null))==1);
	 //  @line: 228
	 call r2274 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r3272));
	 //  @line: 229
	r8286 := $null;
	 goto Block290;
	 //  @line: 230
Block290:
	 goto Block291, Block293;
	 //  @line: 230
Block291:
	 assume ($neref((r1276), ($null))==1);
	 goto Block292;
	 //  @line: 230
Block293:
	 //  @line: 230
	 assume ($negInt(($neref((r1276), ($null))))==1);
	 goto Block294;
	 //  @line: 237
Block292:
	 goto Block305, Block306;
	 //  @line: 231
Block294:
	 goto Block295, Block297;
	 //  @line: 237
Block305:
	 assume ($neref((r8286), ($null))==1);
	 goto Block296;
	 //  @line: 237
Block306:
	 //  @line: 237
	 assume ($negInt(($neref((r8286), ($null))))==1);
	 goto Block307;
	 //  @line: 231
Block295:
	 assume ($neref((r8286), ($null))==1);
	 goto Block296;
	 //  @line: 231
Block297:
	 //  @line: 231
	 assume ($negInt(($neref((r8286), ($null))))==1);
	 assert ($neref((r2274), ($null))==1);
	 //  @line: 245
	 call $z2283 := boolean$javaUtilEx.Iterator$hasNext$2254((r2274));
	 goto Block298;
	 //  @line: 244
Block296:
	 //  @line: 244
	r11289 := $null;
	 goto Block315;
	 //  @line: 249
Block307:
	 assert ($neref((r2274), ($null))==1);
	 //  @line: 249
	 call $z0279 := boolean$javaUtilEx.Iterator$hasNext$2254((r2274));
	 goto Block308;
	 //  @line: 245
Block298:
	 goto Block299, Block300;
	 //  @line: 245
Block315:
	 goto Block316, Block318;
	 //  @line: 249
Block308:
	 goto Block310, Block309;
	 //  @line: 245
Block299:
	 assume ($eqint(($z2283), (0))==1);
	 goto Block296;
	 //  @line: 245
Block300:
	 //  @line: 245
	 assume ($negInt(($eqint(($z2283), (0))))==1);
	 assert ($neref((r2274), ($null))==1);
	 //  @line: 232
	 call $r6284 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2274));
	 //  @line: 232
	r9287 := $r6284;
	 assert ($neref((r9287), ($null))==1);
	 //  @line: 233
	 call $r7285 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r9287));
	 goto Block301;
	 //  @line: 245
Block316:
	 assume ($eqref((r8286), ($null))==1);
	 goto Block317;
	 //  @line: 245
Block318:
	 //  @line: 245
	 assume ($negInt(($eqref((r8286), ($null))))==1);
	 assert ($neref((r8286), ($null))==1);
	 //  @line: 246
	 call r11289 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r8286));
	 assert ($neref((r2274), ($null))==1);
	 //  @line: 247
	 call void$javaUtilEx.Iterator$remove$2256((r2274));
	 goto Block317;
	 //  @line: 249
Block310:
	 //  @line: 249
	 assume ($negInt(($eqint(($z0279), (0))))==1);
	 assert ($neref((r2274), ($null))==1);
	 //  @line: 238
	 call $r4280 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2274));
	 //  @line: 238
	r10288 := $r4280;
	 assert ($neref((r10288), ($null))==1);
	 //  @line: 239
	 call $r5281 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r10288));
	 assert ($neref((r1276), ($null))==1);
	 //  @line: 239
	 call $z1282 := boolean$java.lang.Object$equals$32((r1276), ($r5281));
	 goto Block311;
	 //  @line: 249
Block309:
	 assume ($eqint(($z0279), (0))==1);
	 goto Block296;
	 //  @line: 233
Block301:
	 goto Block304, Block302;
	 //  @line: 249
Block317:
	 //  @line: 249
	__ret := r11289;
	 return;
	 //  @line: 239
Block311:
	 goto Block312, Block314;
	 //  @line: 233
Block304:
	 //  @line: 233
	 assume ($negInt(($neref(($r7285), ($null))))==1);
	 //  @line: 234
	r8286 := r9287;
	 goto Block303;
	 //  @line: 233
Block302:
	 assume ($neref(($r7285), ($null))==1);
	 goto Block303;
	 //  @line: 239
Block312:
	 assume ($eqint(($z1282), (0))==1);
	 goto Block313;
	 //  @line: 239
Block314:
	 //  @line: 239
	 assume ($negInt(($eqint(($z1282), (0))))==1);
	 //  @line: 240
	r8286 := r10288;
	 goto Block313;
	 //  @line: 235
Block303:
	 goto Block294;
	 //  @line: 241
Block313:
	 goto Block292;
}


// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



	 //  @line: 823
// <javaUtilEx.HashMap$HashIterator: void remove()>
procedure void$javaUtilEx.HashMap$HashIterator$remove$2770(__this : ref) returns ($Exep0 : ref, $Exep1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $i21115 : int;
var $i11109 : int;
var $r51112 : ref;
var $r41110 : ref;
var $r21106 : ref;
var $r71114 : ref;
var $r31107 : ref;
var r01105 : ref;
var r11111 : ref;
var $r81116 : ref;
var $r91117 : ref;
var $i01108 : int;

 //temp local variables 
var $freshlocal2 : ref;

	 //  @line: 823
Block1144:
	$Exep1 := $null;
	$Exep0 := $null;
	 goto Block1145;
Block1145:
	r01105 := __this;
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 824
	$r21106 := $HeapVar[r01105, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$current319];
	 goto Block1146;
	 //  @line: 824
Block1146:
	 goto Block1147, Block1149;
	 //  @line: 824
Block1147:
	 assume ($neref(($r21106), ($null))==1);
	 goto Block1148;
	 //  @line: 824
Block1149:
	 //  @line: 824
	 assume ($negInt(($neref(($r21106), ($null))))==1);
	 //  @line: 825
	$r91117 := $newvariable((1150));
	 assume ($neref(($newvariable((1150))), ($null))==1);
	 assert ($neref(($r91117), ($null))==1);
	 //  @line: 825
	 call void$javaUtilEx.IllegalStateException$$la$init$ra$$2773(($r91117));
	 goto Block1151;
	 //  @line: 826
Block1148:
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 826
	$r31107 := $HeapVar[r01105, javaUtilEx.HashMap$javaUtilEx.HashMap$HashIterator$this$0320];
	 goto Block1152;
	 //  @line: 824
Block1151:
	$Exep0 := $r91117;
	 return;
	 //  @line: 826
Block1152:
	 assert ($neref(($r31107), ($null))==1);
	 //  @line: 826
	$i11109 := $HeapVar[$r31107, int$javaUtilEx.HashMap$modCount0];
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 826
	$i01108 := $HeapVar[r01105, int$javaUtilEx.HashMap$HashIterator$expectedModCount0];
	 goto Block1153;
	 //  @line: 826
Block1153:
	 goto Block1154, Block1156;
	 //  @line: 826
Block1154:
	 assume ($eqint(($i11109), ($i01108))==1);
	 goto Block1155;
	 //  @line: 826
Block1156:
	 //  @line: 826
	 assume ($negInt(($eqint(($i11109), ($i01108))))==1);
	 //  @line: 827
	$r81116 := $newvariable((1157));
	 assume ($neref(($newvariable((1157))), ($null))==1);
	 assert ($neref(($r81116), ($null))==1);
	 //  @line: 827
	 call void$javaUtilEx.ConcurrentModificationException$$la$init$ra$$2602(($r81116));
	 goto Block1158;
	 //  @line: 828
Block1155:
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 828
	$r41110 := $HeapVar[r01105, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$current319];
	 goto Block1159;
	 //  @line: 826
Block1158:
	$Exep1 := $r81116;
	 return;
	 //  @line: 828
Block1159:
	 assert ($neref(($r41110), ($null))==1);
	 //  @line: 828
	r11111 := $HeapVar[$r41110, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 829
	$HeapVar[r01105, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$current319] := $null;
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 830
	$r51112 := $HeapVar[r01105, javaUtilEx.HashMap$javaUtilEx.HashMap$HashIterator$this$0320];
	 assert ($neref(($r51112), ($null))==1);
	 //  @line: 830
	 call $freshlocal2 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$removeEntryForKey$2628(($r51112), (r11111));
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 831
	$r71114 := $HeapVar[r01105, javaUtilEx.HashMap$javaUtilEx.HashMap$HashIterator$this$0320];
	 assert ($neref(($r71114), ($null))==1);
	 //  @line: 831
	$i21115 := $HeapVar[$r71114, int$javaUtilEx.HashMap$modCount0];
	 assert ($neref((r01105), ($null))==1);
	 //  @line: 831
	$HeapVar[r01105, int$javaUtilEx.HashMap$HashIterator$expectedModCount0] := $i21115;
	 return;
}


	 //  @line: 292
// <javaUtilEx.HashMap: boolean isEmpty()>
procedure boolean$javaUtilEx.HashMap$isEmpty$2615(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0570 : ref;
var $z0573 : int;
var $i0571 : int;
Block577:
	r0570 := __this;
	 assert ($neref((r0570), ($null))==1);
	 //  @line: 293
	$i0571 := $HeapVar[r0570, int$javaUtilEx.HashMap$size0];
	 goto Block578;
	 //  @line: 293
Block578:
	 goto Block581, Block579;
	 //  @line: 293
Block581:
	 //  @line: 293
	 assume ($negInt(($neint(($i0571), (0))))==1);
	 //  @line: 293
	$z0573 := 1;
	 goto Block582;
	 //  @line: 293
Block579:
	 assume ($neint(($i0571), (0))==1);
	 goto Block580;
	 //  @line: 293
Block582:
	 //  @line: 293
	__ret := $z0573;
	 return;
	 //  @line: 293
Block580:
	 //  @line: 293
	$z0573 := 0;
	 goto Block582;
}


	 //  @line: 385
// <javaUtilEx.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>
procedure java.lang.Object$javaUtilEx.HashMap$put$2620(__this : ref, $param_0 : ref, $param_1 : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r6627 : [int]ref;
var r0622 : ref;
var $i3624 : int;
var r9638 : ref;
var r2631 : ref;
var $i6632 : int;
var $i4629 : int;
var r3634 : ref;
var r1618 : ref;
var $r7633 : ref;
var i0621 : int;
var i1626 : int;
var $z0636 : int;
var r4635 : ref;
var $r8637 : ref;
var $r5623 : [int]ref;
var $i5630 : int;
var $i2619 : int;
Block647:
	r0622 := __this;
	r1618 := $param_0;
	r2631 := $param_1;
	 goto Block648;
	 //  @line: 386
Block648:
	 goto Block649, Block651;
	 //  @line: 386
Block649:
	 assume ($neref((r1618), ($null))==1);
	 goto Block650;
	 //  @line: 386
Block651:
	 //  @line: 386
	 assume ($negInt(($neref((r1618), ($null))))==1);
	 assert ($neref((r0622), ($null))==1);
	 //  @line: 387
	 call $r8637 := java.lang.Object$javaUtilEx.HashMap$putForNullKey$2621((r0622), (r2631));
	 //  @line: 387
	__ret := $r8637;
	 return;
	 //  @line: 388
Block650:
	 assert ($neref((r1618), ($null))==1);
	 //  @line: 388
	 call $i2619 := int$java.lang.Object$hashCode$31((r1618));
	 goto Block652;
	 //  @line: 388
Block652:
	 //  @line: 388
	 call i0621 := int$javaUtilEx.HashMap$hash$2612(($i2619));
	 assert ($neref((r0622), ($null))==1);
	 //  @line: 389
	$r5623 := $HeapVar[r0622, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 389
	$i3624 := $refArrSize[$r5623[$arrSizeIdx]];
	 //  @line: 389
	 call i1626 := int$javaUtilEx.HashMap$indexFor$2613((i0621), ($i3624));
	 assert ($neref((r0622), ($null))==1);
	 //  @line: 390
	$r6627 := $HeapVar[r0622, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1626), (0))==1);
	 assert ($ltint((i1626), ($refArrSize[$r6627[$arrSizeIdx]]))==1);
	 //  @line: 390
	r9638 := $r6627[i1626];
	 goto Block653;
	 //  @line: 390
Block653:
	 goto Block654, Block656;
	 //  @line: 390
Block654:
	 assume ($eqref((r9638), ($null))==1);
	 goto Block655;
	 //  @line: 390
Block656:
	 //  @line: 390
	 assume ($negInt(($eqref((r9638), ($null))))==1);
	 assert ($neref((r9638), ($null))==1);
	 //  @line: 392
	$i6632 := $HeapVar[r9638, int$javaUtilEx.HashMap$Entry$hash0];
	 goto Block657;
	 //  @line: 400
Block655:
	 assert ($neref((r0622), ($null))==1);
	 //  @line: 400
	$i4629 := $HeapVar[r0622, int$javaUtilEx.HashMap$modCount0];
	 goto Block669;
	 //  @line: 392
Block657:
	 goto Block660, Block658;
	 //  @line: 400
Block669:
	 //  @line: 400
	$i5630 := $addint(($i4629), (1));
	 assert ($neref((r0622), ($null))==1);
	 //  @line: 400
	$HeapVar[r0622, int$javaUtilEx.HashMap$modCount0] := $i5630;
	 assert ($neref((r0622), ($null))==1);
	 //  @line: 401
	 call void$javaUtilEx.HashMap$addEntry$2634((r0622), (i0621), (r1618), (r2631), (i1626));
	 //  @line: 402
	__ret := $null;
	 return;
	 //  @line: 392
Block660:
	 //  @line: 392
	 assume ($negInt(($neint(($i6632), (i0621))))==1);
	 assert ($neref((r9638), ($null))==1);
	 //  @line: 390
	$r7633 := $HeapVar[r9638, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 //  @line: 390
	r3634 := $r7633;
	 goto Block661;
	 //  @line: 392
Block658:
	 assume ($neint(($i6632), (i0621))==1);
	 goto Block659;
	 //  @line: 390
Block661:
	 goto Block662, Block664;
	 //  @line: 390
Block659:
	 assert ($neref((r9638), ($null))==1);
	 //  @line: 390
	r9638 := $HeapVar[r9638, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block668;
	 //  @line: 390
Block662:
	 assume ($eqref(($r7633), (r1618))==1);
	 goto Block663;
	 //  @line: 390
Block664:
	 //  @line: 390
	 assume ($negInt(($eqref(($r7633), (r1618))))==1);
	 assert ($neref((r1618), ($null))==1);
	 //  @line: 396
	 call $z0636 := boolean$java.lang.Object$equals$32((r1618), (r3634));
	 goto Block665;
	 //  @line: 390
Block668:
	 goto Block653;
	 //  @line: 393
Block663:
	 assert ($neref((r9638), ($null))==1);
	 //  @line: 393
	r4635 := $HeapVar[r9638, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 assert ($neref((r9638), ($null))==1);
	 //  @line: 394
	$HeapVar[r9638, java.lang.Object$javaUtilEx.HashMap$Entry$value310] := r2631;
	 assert ($neref((r9638), ($null))==1);
	 //  @line: 395
	 call void$javaUtilEx.HashMap$Entry$recordAccess$2650((r9638), (r0622));
	 //  @line: 396
	__ret := r4635;
	 return;
	 //  @line: 396
Block665:
	 goto Block666, Block667;
	 //  @line: 396
Block666:
	 assume ($eqint(($z0636), (0))==1);
	 goto Block659;
	 //  @line: 396
Block667:
	 //  @line: 396
	 assume ($negInt(($eqint(($z0636), (0))))==1);
	 goto Block663;
}


	 //  @line: 331
// <javaUtilEx.AbstractMap$1$1: java.lang.Object next()>
procedure java.lang.Object$javaUtilEx.AbstractMap$1$1$next$2485(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r4117 : ref;
var $r3116 : ref;
var $r2115 : ref;
var $r1114 : ref;
var r0113 : ref;
Block140:
	r0113 := __this;
	 assert ($neref((r0113), ($null))==1);
	 //  @line: 332
	$r1114 := $HeapVar[r0113, javaUtilEx.Iterator$javaUtilEx.AbstractMap$1$1$i295];
	 assert ($neref(($r1114), ($null))==1);
	 //  @line: 332
	 call $r2115 := java.lang.Object$javaUtilEx.Iterator$next$2255(($r1114));
	 //  @line: 332
	$r3116 := $r2115;
	 assert ($neref(($r3116), ($null))==1);
	 //  @line: 332
	 call $r4117 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547(($r3116));
	 //  @line: 332
	__ret := $r4117;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// <java.lang.StringBuilder: java.lang.String toString()>
procedure java.lang.String$java.lang.StringBuilder$toString$2299(__this : ref) returns (__ret : ref);



// <java.lang.Class: java.lang.Class getComponentType()>
procedure java.lang.Class$java.lang.Class$getComponentType$467(__this : ref) returns (__ret : ref);



// <javaUtilEx.AbstractMap: javaUtilEx.Set entrySet()>
procedure javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511(__this : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 408
// <javaUtilEx.HashMap: java.lang.Object putForNullKey(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.HashMap$putForNullKey$2621(__this : ref, $param_0 : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r5647 : ref;
var $r3640 : [int]ref;
var $i0642 : int;
var $r4645 : ref;
var $i1643 : int;
var r0639 : ref;
var r2646 : ref;
var r1644 : ref;
Block670:
	r0639 := __this;
	r1644 := $param_0;
	 assert ($neref((r0639), ($null))==1);
	 //  @line: 409
	$r3640 := $HeapVar[r0639, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((0), (0))==1);
	 assert ($ltint((0), ($refArrSize[$r3640[$arrSizeIdx]]))==1);
	 //  @line: 409
	r5647 := $r3640[0];
	 goto Block671;
	 //  @line: 409
Block671:
	 goto Block672, Block674;
	 //  @line: 409
Block672:
	 assume ($eqref((r5647), ($null))==1);
	 goto Block673;
	 //  @line: 409
Block674:
	 //  @line: 409
	 assume ($negInt(($eqref((r5647), ($null))))==1);
	 assert ($neref((r5647), ($null))==1);
	 //  @line: 410
	$r4645 := $HeapVar[r5647, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 goto Block675;
	 //  @line: 417
Block673:
	 assert ($neref((r0639), ($null))==1);
	 //  @line: 417
	$i0642 := $HeapVar[r0639, int$javaUtilEx.HashMap$modCount0];
	 goto Block680;
	 //  @line: 410
Block675:
	 goto Block676, Block678;
	 //  @line: 417
Block680:
	 //  @line: 417
	$i1643 := $addint(($i0642), (1));
	 assert ($neref((r0639), ($null))==1);
	 //  @line: 417
	$HeapVar[r0639, int$javaUtilEx.HashMap$modCount0] := $i1643;
	 assert ($neref((r0639), ($null))==1);
	 //  @line: 418
	 call void$javaUtilEx.HashMap$addEntry$2634((r0639), (0), ($null), (r1644), (0));
	 //  @line: 419
	__ret := $null;
	 return;
	 //  @line: 410
Block676:
	 assume ($neref(($r4645), ($null))==1);
	 goto Block677;
	 //  @line: 410
Block678:
	 //  @line: 410
	 assume ($negInt(($neref(($r4645), ($null))))==1);
	 assert ($neref((r5647), ($null))==1);
	 //  @line: 411
	r2646 := $HeapVar[r5647, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 assert ($neref((r5647), ($null))==1);
	 //  @line: 412
	$HeapVar[r5647, java.lang.Object$javaUtilEx.HashMap$Entry$value310] := r1644;
	 assert ($neref((r5647), ($null))==1);
	 //  @line: 413
	 call void$javaUtilEx.HashMap$Entry$recordAccess$2650((r5647), (r0639));
	 //  @line: 414
	__ret := r2646;
	 return;
	 //  @line: 409
Block677:
	 assert ($neref((r5647), ($null))==1);
	 //  @line: 409
	r5647 := $HeapVar[r5647, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block679;
	 //  @line: 409
Block679:
	 goto Block671;
}


// <javaUtilEx.AbstractCollection: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229(__this : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 673
// <javaUtilEx.HashMap: java.lang.Object clone()>
procedure java.lang.Object$javaUtilEx.HashMap$clone$2633(__this : ref) returns (__ret : ref)
  modifies $refArrSize, $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r3811 : [int]ref;
var $r4813 : [int]ref;
var r0809 : ref;
var $r2810 : ref;
var $i0812 : int;
var $r5814 : ref;
var r6816 : ref;

 //temp local variables 
var $caughtEx0 : ref;
var $caughtEx1 : ref;

Block873:
	$caughtEx1 := $null;
	$caughtEx0 := $null;
	r0809 := __this;
	 //  @line: 674
	r6816 := $null;
	 goto Block874;
	 //  @line: 676
Block874:
	 assert ($neref((r0809), ($null))==1);
	 //  @line: 676
	 call $r2810, $caughtEx0 := java.lang.Object$javaUtilEx.AbstractMap$clone$2515((r0809));
	 goto Block875, Block877;
	 //  @line: 676
Block875:
	 assume ($neref(($caughtEx0), ($null))==1);
	$caughtEx1 := $caughtEx0;
	 goto Block876;
	 //  @line: 676
Block877:
	 assume ($eqref(($caughtEx0), ($null))==1);
	 goto Block878;
	 //  @line: 687
Block876:
	 //  @line: 687
	$r5814 := $caughtEx1;
	 goto Block880;
	 //  @line: 676
Block878:
	 //  @line: 676
	r6816 := $r2810;
	 goto Block879;
	 //  @line: 680
Block880:
	 assert ($neref((r0809), ($null))==1);
	 //  @line: 680
	$r3811 := $HeapVar[r0809, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 goto Block881;
	 //  @line: 679
Block879:
	 goto Block880;
	 //  @line: 680
Block881:
	 //  @line: 680
	$i0812 := $refArrSize[$r3811[$arrSizeIdx]];
	 //  @line: 680
	$r4813 := $reftorefarr(($newvariable((882))));
	$refArrSize[$reftorefarr(($newvariable((882))))[$arrSizeIdx]] := $i0812;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((882))))), ($refArrNull))))==1);
	 assert ($neref((r6816), ($null))==1);
	 //  @line: 680
	$HeapVar[r6816, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307] := $r4813;
	 assert ($neref((r6816), ($null))==1);
	 //  @line: 681
	$HeapVar[r6816, javaUtilEx.Set$javaUtilEx.HashMap$entrySet308] := $null;
	 assert ($neref((r6816), ($null))==1);
	 //  @line: 682
	$HeapVar[r6816, int$javaUtilEx.HashMap$modCount0] := 0;
	 assert ($neref((r6816), ($null))==1);
	 //  @line: 683
	$HeapVar[r6816, int$javaUtilEx.HashMap$size0] := 0;
	 assert ($neref((r6816), ($null))==1);
	 //  @line: 684
	 call void$javaUtilEx.HashMap$init$2611((r6816));
	 assert ($neref((r6816), ($null))==1);
	 //  @line: 685
	 call void$javaUtilEx.HashMap$putAllForCreate$2623((r6816), (r0809));
	 //  @line: 687
	__ret := r6816;
	 return;
}


	 //  @line: 359
// <javaUtilEx.HashMap: javaUtilEx.HashMap$Entry getEntry(java.lang.Object)>
procedure javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$getEntry$2619(__this : ref, $param_0 : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $i3610 : int;
var $z0615 : int;
var $r5613 : ref;
var $i2608 : int;
var r2614 : ref;
var $i5616 : int;
var $i4612 : int;
var r6617 : ref;
var $r3607 : [int]ref;
var r0606 : ref;
var $i1603 : int;
var r1602 : ref;
var i0605 : int;
var $r4609 : [int]ref;
Block621:
	r0606 := __this;
	r1602 := $param_0;
	 goto Block622;
	 //  @line: 360
Block622:
	 goto Block625, Block623;
	 //  @line: 360
Block625:
	 //  @line: 360
	 assume ($negInt(($neref((r1602), ($null))))==1);
	 //  @line: 367
	$i5616 := 0;
	 goto Block626;
	 //  @line: 360
Block623:
	 assume ($neref((r1602), ($null))==1);
	 goto Block624;
	 //  @line: 360
Block626:
	 //  @line: 360
	i0605 := $i5616;
	 assert ($neref((r0606), ($null))==1);
	 //  @line: 361
	$r4609 := $HeapVar[r0606, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($neref((r0606), ($null))==1);
	 //  @line: 361
	$r3607 := $HeapVar[r0606, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 361
	$i2608 := $refArrSize[$r3607[$arrSizeIdx]];
	 //  @line: 361
	 call $i3610 := int$javaUtilEx.HashMap$indexFor$2613((i0605), ($i2608));
	 assert ($geint(($i3610), (0))==1);
	 assert ($ltint(($i3610), ($refArrSize[$r4609[$arrSizeIdx]]))==1);
	 //  @line: 361
	r6617 := $r4609[$i3610];
	 goto Block628;
	 //  @line: 360
Block624:
	 assert ($neref((r1602), ($null))==1);
	 //  @line: 360
	 call $i1603 := int$java.lang.Object$hashCode$31((r1602));
	 goto Block627;
	 //  @line: 362
Block628:
	 goto Block631, Block629;
	 //  @line: 360
Block627:
	 //  @line: 360
	 call $i5616 := int$javaUtilEx.HashMap$hash$2612(($i1603));
	 goto Block626;
	 //  @line: 362
Block631:
	 //  @line: 362
	 assume ($negInt(($eqref((r6617), ($null))))==1);
	 assert ($neref((r6617), ($null))==1);
	 //  @line: 365
	$i4612 := $HeapVar[r6617, int$javaUtilEx.HashMap$Entry$hash0];
	 goto Block632;
	 //  @line: 362
Block629:
	 assume ($eqref((r6617), ($null))==1);
	 goto Block630;
	 //  @line: 365
Block632:
	 goto Block633, Block635;
	 //  @line: 369
Block630:
	 //  @line: 369
	__ret := $null;
	 return;
	 //  @line: 365
Block633:
	 assume ($neint(($i4612), (i0605))==1);
	 goto Block634;
	 //  @line: 365
Block635:
	 //  @line: 365
	 assume ($negInt(($neint(($i4612), (i0605))))==1);
	 assert ($neref((r6617), ($null))==1);
	 //  @line: 362
	$r5613 := $HeapVar[r6617, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 //  @line: 362
	r2614 := $r5613;
	 goto Block636;
	 //  @line: 363
Block634:
	 assert ($neref((r6617), ($null))==1);
	 //  @line: 363
	r6617 := $HeapVar[r6617, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block646;
	 //  @line: 362
Block636:
	 goto Block639, Block637;
	 //  @line: 363
Block646:
	 goto Block628;
	 //  @line: 362
Block639:
	 //  @line: 362
	 assume ($negInt(($eqref(($r5613), (r1602))))==1);
	 goto Block640;
	 //  @line: 362
Block637:
	 assume ($eqref(($r5613), (r1602))==1);
	 goto Block638;
	 //  @line: 367
Block640:
	 goto Block642, Block641;
	 //  @line: 367
Block638:
	 //  @line: 367
	__ret := r6617;
	 return;
	 //  @line: 367
Block642:
	 //  @line: 367
	 assume ($negInt(($eqref((r1602), ($null))))==1);
	 assert ($neref((r1602), ($null))==1);
	 //  @line: 363
	 call $z0615 := boolean$java.lang.Object$equals$32((r1602), (r2614));
	 goto Block643;
	 //  @line: 367
Block641:
	 assume ($eqref((r1602), ($null))==1);
	 goto Block634;
	 //  @line: 363
Block643:
	 goto Block644, Block645;
	 //  @line: 363
Block644:
	 assume ($eqint(($z0615), (0))==1);
	 goto Block634;
	 //  @line: 363
Block645:
	 //  @line: 363
	 assume ($negInt(($eqint(($z0615), (0))))==1);
	 goto Block638;
}


// <javaUtilEx.AbstractCollection: int size()>
procedure int$javaUtilEx.AbstractCollection$size$2230(__this : ref) returns (__ret : int);



	 //  @line: 52
// <javaUtilEx.IllegalArgumentException: void <init>(java.lang.String)>
procedure void$javaUtilEx.IllegalArgumentException$$la$init$ra$$2755(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r01044 : ref;
var r11045 : ref;
Block1079:
	r01044 := __this;
	r11045 := $param_0;
	 assert ($neref((r01044), ($null))==1);
	 //  @line: 53
	 call void$java.lang.RuntimeException$$la$init$ra$$761((r01044), (r11045));
	 return;
}


	 //  @line: 835
// <javaUtilEx.HashMap$ValueIterator: void <init>(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$ValueIterator$$la$init$ra$$2758(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r11052 : ref;
var r01051 : ref;
Block1082:
	r01051 := __this;
	r11052 := $param_0;
	 assert ($neref((r01051), ($null))==1);
	 //  @line: 836
	$HeapVar[r01051, javaUtilEx.HashMap$javaUtilEx.HashMap$ValueIterator$this$0316] := r11052;
	 assert ($neref((r01051), ($null))==1);
	 //  @line: 836
	 call void$javaUtilEx.HashMap$HashIterator$$la$init$ra$$2767((r01051), (r11052));
	 return;
}


	 //  @line: 698
// <javaUtilEx.HashMap$Entry: void <init>(int,java.lang.Object,java.lang.Object,javaUtilEx.HashMap$Entry)>
procedure void$javaUtilEx.HashMap$Entry$$la$init$ra$$2643(__this : ref, $param_0 : int, $param_1 : ref, $param_2 : ref, $param_3 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r2867 : ref;
var r3868 : ref;
var i0870 : int;
var r1869 : ref;
var r0866 : ref;
Block922:
	r0866 := __this;
	i0870 := $param_0;
	r1869 := $param_1;
	r2867 := $param_2;
	r3868 := $param_3;
	 assert ($neref((r0866), ($null))==1);
	 //  @line: 699
	 call void$java.lang.Object$$la$init$ra$$28((r0866));
	 assert ($neref((r0866), ($null))==1);
	 //  @line: 700
	$HeapVar[r0866, java.lang.Object$javaUtilEx.HashMap$Entry$value310] := r2867;
	 assert ($neref((r0866), ($null))==1);
	 //  @line: 701
	$HeapVar[r0866, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311] := r3868;
	 assert ($neref((r0866), ($null))==1);
	 //  @line: 702
	$HeapVar[r0866, java.lang.Object$javaUtilEx.HashMap$Entry$key309] := r1869;
	 assert ($neref((r0866), ($null))==1);
	 //  @line: 703
	$HeapVar[r0866, int$javaUtilEx.HashMap$Entry$hash0] := i0870;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqrealarray($param00 : [int]realVar, $param11 : [int]realVar) returns (__ret : int);



	 //  @line: 25
// <javaUtilEx.Content: void <init>(int)>
procedure void$javaUtilEx.Content$$la$init$ra$$2604(__this : ref, $param_0 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var i0507 : int;
var r0506 : ref;
Block517:
	r0506 := __this;
	i0507 := $param_0;
	 assert ($neref((r0506), ($null))==1);
	 //  @line: 26
	 call void$java.lang.Object$$la$init$ra$$28((r0506));
	 assert ($neref((r0506), ($null))==1);
	 //  @line: 27
	$HeapVar[r0506, int$javaUtilEx.Content$val0] := i0507;
	 return;
}


	 //  @line: 883
// <javaUtilEx.HashMap: javaUtilEx.Set keySet()>
procedure javaUtilEx.Set$javaUtilEx.HashMap$keySet$2639(__this : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r1850 : ref;
var r3853 : ref;
var $r2852 : ref;
var r0849 : ref;
Block897:
	r0849 := __this;
	 assert ($neref((r0849), ($null))==1);
	 //  @line: 884
	r1850 := $HeapVar[r0849, javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298];
	 goto Block898;
	 //  @line: 885
Block898:
	 goto Block899, Block901;
	 //  @line: 885
Block899:
	 assume ($eqref((r1850), ($null))==1);
	 goto Block900;
	 //  @line: 885
Block901:
	 //  @line: 885
	 assume ($negInt(($eqref((r1850), ($null))))==1);
	 //  @line: 885
	$r2852 := r1850;
	 goto Block902;
	 //  @line: 885
Block900:
	 //  @line: 885
	r3853 := $newvariable((903));
	 assume ($neref(($newvariable((903))), ($null))==1);
	 goto Block904;
	 //  @line: 885
Block902:
	 //  @line: 885
	__ret := $r2852;
	 return;
Block904:
	$r2852 := r3853;
	 assert ($neref((r3853), ($null))==1);
	 //  @line: 885
	 call void$javaUtilEx.HashMap$KeySet$$la$init$ra$$2741((r3853), (r0849), ($null));
	 assert ($neref((r0849), ($null))==1);
	 //  @line: 885
	$HeapVar[r0849, javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298] := r3853;
	 goto Block902;
}


// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 417
// <javaUtilEx.AbstractMap$2: int size()>
procedure int$javaUtilEx.AbstractMap$2$size$2582(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0401 : ref;
var $r1402 : ref;
var $i0403 : int;
Block440:
	r0401 := __this;
	 assert ($neref((r0401), ($null))==1);
	 //  @line: 418
	$r1402 := $HeapVar[r0401, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$2$this$0302];
	 assert ($neref(($r1402), ($null))==1);
	 //  @line: 418
	 call $i0403 := int$javaUtilEx.AbstractMap$size$2500(($r1402));
	 //  @line: 418
	__ret := $i0403;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 323
// <javaUtilEx.AbstractMap$1$1: void <init>(javaUtilEx.AbstractMap$1)>
procedure void$javaUtilEx.AbstractMap$1$1$$la$init$ra$$2483(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r1105 : ref;
var r0104 : ref;
var $r2106 : ref;
var $r5109 : ref;
var $r3107 : ref;
var $r4108 : ref;
Block138:
	r0104 := __this;
	r1105 := $param_0;
	 assert ($neref((r0104), ($null))==1);
	 //  @line: 324
	$HeapVar[r0104, javaUtilEx.AbstractMap$1$javaUtilEx.AbstractMap$1$1$this$1296] := r1105;
	 assert ($neref((r0104), ($null))==1);
	 //  @line: 324
	 call void$java.lang.Object$$la$init$ra$$28((r0104));
	 assert ($neref((r0104), ($null))==1);
	 //  @line: 325
	$r2106 := $HeapVar[r0104, javaUtilEx.AbstractMap$1$javaUtilEx.AbstractMap$1$1$this$1296];
	 assert ($neref(($r2106), ($null))==1);
	 //  @line: 325
	$r3107 := $HeapVar[$r2106, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r3107), ($null))==1);
	 //  @line: 325
	 call $r4108 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511(($r3107));
	 assert ($neref(($r4108), ($null))==1);
	 //  @line: 325
	 call $r5109 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r4108));
	 assert ($neref((r0104), ($null))==1);
	 //  @line: 325
	$HeapVar[r0104, javaUtilEx.Iterator$javaUtilEx.AbstractMap$1$1$i295] := $r5109;
	 return;
}


	 //  @line: 396
// <javaUtilEx.AbstractMap: javaUtilEx.Collection values()>
procedure javaUtilEx.Collection$javaUtilEx.AbstractMap$values$2510(__this : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r3310 : ref;
var $r1308 : ref;
var $r2309 : ref;
var r0307 : ref;
Block337:
	r0307 := __this;
	 assert ($neref((r0307), ($null))==1);
	 //  @line: 397
	$r1308 := $HeapVar[r0307, javaUtilEx.Collection$javaUtilEx.AbstractMap$values299];
	 goto Block338;
	 //  @line: 397
Block338:
	 goto Block341, Block339;
	 //  @line: 397
Block341:
	 //  @line: 397
	 assume ($negInt(($neref(($r1308), ($null))))==1);
	 //  @line: 398
	$r3310 := $newvariable((342));
	 assume ($neref(($newvariable((342))), ($null))==1);
	 assert ($neref(($r3310), ($null))==1);
	 //  @line: 398
	 call void$javaUtilEx.AbstractMap$2$$la$init$ra$$2580(($r3310), (r0307));
	 assert ($neref((r0307), ($null))==1);
	 //  @line: 398
	$HeapVar[r0307, javaUtilEx.Collection$javaUtilEx.AbstractMap$values299] := $r3310;
	 goto Block340;
	 //  @line: 397
Block339:
	 assume ($neref(($r1308), ($null))==1);
	 goto Block340;
	 //  @line: 434
Block340:
	 assert ($neref((r0307), ($null))==1);
	 //  @line: 434
	$r2309 := $HeapVar[r0307, javaUtilEx.Collection$javaUtilEx.AbstractMap$values299];
	 //  @line: 434
	__ret := $r2309;
	 return;
}


	 //  @line: 826
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: int hashCode()>
procedure int$javaUtilEx.AbstractMap$SimpleImmutableEntry$hashCode$2600(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r2486 : ref;
var r0484 : ref;
var $r4489 : ref;
var $r3488 : ref;
var $i0491 : int;
var $r1485 : ref;
var $i2494 : int;
var $i1493 : int;
Block500:
	r0484 := __this;
	 assert ($neref((r0484), ($null))==1);
	 //  @line: 827
	$r1485 := $HeapVar[r0484, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305];
	 goto Block501;
	 //  @line: 827
Block501:
	 goto Block504, Block502;
	 //  @line: 827
Block504:
	 //  @line: 827
	 assume ($negInt(($neref(($r1485), ($null))))==1);
	 //  @line: 827
	$i1493 := 0;
	 goto Block505;
	 //  @line: 827
Block502:
	 assume ($neref(($r1485), ($null))==1);
	 goto Block503;
	 //  @line: 827
Block505:
	 assert ($neref((r0484), ($null))==1);
	 //  @line: 827
	$r3488 := $HeapVar[r0484, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306];
	 goto Block507;
	 //  @line: 827
Block503:
	 assert ($neref((r0484), ($null))==1);
	 //  @line: 827
	$r2486 := $HeapVar[r0484, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305];
	 goto Block506;
	 //  @line: 827
Block507:
	 goto Block508, Block510;
	 //  @line: 827
Block506:
	 assert ($neref(($r2486), ($null))==1);
	 //  @line: 827
	 call $i1493 := int$java.lang.Object$hashCode$31(($r2486));
	 goto Block505;
	 //  @line: 827
Block508:
	 assume ($neref(($r3488), ($null))==1);
	 goto Block509;
	 //  @line: 827
Block510:
	 //  @line: 827
	 assume ($negInt(($neref(($r3488), ($null))))==1);
	 //  @line: 827
	$i2494 := 0;
	 goto Block511;
	 //  @line: 827
Block509:
	 assert ($neref((r0484), ($null))==1);
	 //  @line: 827
	$r4489 := $HeapVar[r0484, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306];
	 goto Block512;
	 //  @line: 827
Block511:
	 //  @line: 827
	$i0491 := $xorint(($i1493), ($i2494));
	 //  @line: 827
	__ret := $i0491;
	 return;
	 //  @line: 827
Block512:
	 assert ($neref(($r4489), ($null))==1);
	 //  @line: 827
	 call $i2494 := int$java.lang.Object$hashCode$31(($r4489));
	 goto Block511;
}


	 //  @line: 92
// <javaUtilEx.IllegalStateException: void <init>(java.lang.Throwable)>
procedure void$javaUtilEx.IllegalStateException$$la$init$ra$$2776(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r11128 : ref;
var r01127 : ref;
Block1165:
	r01127 := __this;
	r11128 := $param_0;
	 assert ($neref((r01127), ($null))==1);
	 //  @line: 93
	 call void$java.lang.RuntimeException$$la$init$ra$$763((r01127), (r11128));
	 return;
}


// <javaUtilEx.Map: java.lang.Object get(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.Map$get$2537(__this : ref, $param_0 : ref) returns (__ret : ref);



	 //  @line: 321
// <javaUtilEx.AbstractMap$1: void <init>(javaUtilEx.AbstractMap)>
procedure void$javaUtilEx.AbstractMap$1$$la$init$ra$$2487(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0120 : ref;
var r1121 : ref;
Block142:
	r0120 := __this;
	r1121 := $param_0;
	 assert ($neref((r0120), ($null))==1);
	 //  @line: 322
	$HeapVar[r0120, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297] := r1121;
	 assert ($neref((r0120), ($null))==1);
	 //  @line: 322
	 call void$javaUtilEx.AbstractSet$$la$init$ra$$2495((r0120));
	 return;
}


	 //  @line: 973
// <javaUtilEx.HashMap: javaUtilEx.Set entrySet()>
procedure javaUtilEx.Set$javaUtilEx.HashMap$entrySet$2641(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0859 : ref;
var $r1860 : ref;
Block913:
	r0859 := __this;
	 assert ($neref((r0859), ($null))==1);
	 //  @line: 974
	 call $r1860 := javaUtilEx.Set$javaUtilEx.HashMap$entrySet0$2642((r0859));
	 //  @line: 974
	__ret := $r1860;
	 return;
}


	 //  @line: 912
// <javaUtilEx.HashMap$KeySet: java.lang.Object[] toArray(java.lang.Object[])>
procedure java.lang.Object$lp$$rp$$javaUtilEx.HashMap$KeySet$toArray$2740(__this : ref, $param_0 : [int]ref) returns (__ret : [int]ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r2965 : ref;
var r9970 : [int]ref;
var r1963 : [int]ref;
var $z0967 : int;
var r10971 : [int]ref;
var $r5959 : ref;
var i2972 : int;
var $i1968 : int;
var $r7962 : [int]ref;
var $r8969 : ref;
var $r6961 : ref;
var $r3956 : ref;
var $i0960 : int;
var $r4957 : ref;
var r0958 : ref;

 //temp local variables 
var $caughtEx1 : ref;

	 //  @line: 912
Block1011:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block1012;
Block1012:
	r0958 := __this;
	r9970 := $param_0;
	 assert ($neref(($refarrtoref((r9970))), ($null))==1);
	 //  @line: 913
	 call $r3956 := java.lang.Class$java.lang.Object$getClass$30(($refarrtoref((r9970))));
	 assert ($neref(($r3956), ($null))==1);
	 //  @line: 913
	 call $r4957 := java.lang.Class$java.lang.Class$getComponentType$467(($r3956));
	 assert ($neref((r0958), ($null))==1);
	 //  @line: 913
	$r5959 := $HeapVar[r0958, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313];
	 assert ($neref(($r5959), ($null))==1);
	 //  @line: 913
	$i0960 := $HeapVar[$r5959, int$javaUtilEx.HashMap$size0];
	 //  @line: 913
	 call $r6961, $caughtEx1 := java.lang.Object$java.lang.reflect.Array$newInstance$2553(($r4957), ($i0960));
	 goto Block1013, Block1015;
Block1013:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block1014;
Block1015:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block1016;
Block1014:
	$Exep0 := $caughtEx1;
	 return;
Block1016:
	 //  @line: 913
	$r7962 := $reftorefarr(($r6961));
	 //  @line: 913
	r10971 := $r7962;
	 //  @line: 915
	r1963 := r10971;
	 assert ($neref((r0958), ($null))==1);
	 //  @line: 916
	 call r2965 := javaUtilEx.Iterator$javaUtilEx.HashMap$KeySet$iterator$2734((r0958));
	 //  @line: 917
	i2972 := 0;
	 goto Block1017;
	 //  @line: 918
Block1017:
	 assert ($neref((r2965), ($null))==1);
	 //  @line: 918
	 call $z0967 := boolean$javaUtilEx.Iterator$hasNext$2254((r2965));
	 goto Block1018;
	 //  @line: 918
Block1018:
	 goto Block1021, Block1019;
	 //  @line: 918
Block1021:
	 //  @line: 918
	 assume ($negInt(($eqint(($z0967), (0))))==1);
	 //  @line: 919
	$i1968 := i2972;
	 //  @line: 919
	i2972 := $addint((i2972), (1));
	 assert ($neref((r2965), ($null))==1);
	 //  @line: 919
	 call $r8969 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2965));
	 assert ($geint(($i1968), (0))==1);
	 assert ($ltint(($i1968), ($refArrSize[r1963[$arrSizeIdx]]))==1);
	 //  @line: 919
	r1963[$i1968] := $r8969;
	 goto Block1017;
	 //  @line: 918
Block1019:
	 assume ($eqint(($z0967), (0))==1);
	 goto Block1020;
	 //  @line: 920
Block1020:
	 //  @line: 920
	__ret := r10971;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $gtint(x : int, y : int) returns (__ret : int) {
if (x > y) then 1 else 0
}


	 //  @line: 983
// <javaUtilEx.HashMap$EntrySet: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.HashMap$EntrySet$iterator$2743(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1979 : ref;
var $r2980 : ref;
var r0978 : ref;
Block1024:
	r0978 := __this;
	 assert ($neref((r0978), ($null))==1);
	 //  @line: 984
	$r1979 := $HeapVar[r0978, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314];
	 assert ($neref(($r1979), ($null))==1);
	 //  @line: 984
	 call $r2980 := javaUtilEx.Iterator$javaUtilEx.HashMap$newEntryIterator$2638(($r1979));
	 //  @line: 984
	__ret := $r2980;
	 return;
}


// <javaUtilEx.Map$Entry: java.lang.Object getValue()>
procedure java.lang.Object$javaUtilEx.Map$Entry$getValue$2548(__this : ref) returns (__ret : ref);



	 //  @line: 756
// <javaUtilEx.HashMap$Entry: void recordRemoval(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$Entry$recordRemoval$2651(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r1914 : ref;
var r0913 : ref;
Block969:
	r0913 := __this;
	r1914 := $param_0;
	 return;
}


// <java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>
procedure void$java.lang.RuntimeException$$la$init$ra$$762(__this : ref, $param_0 : ref, $param_1 : ref);



	 //  @line: 41
// <javaUtilEx.UnsupportedOperationException: void <init>()>
procedure void$javaUtilEx.UnsupportedOperationException$$la$init$ra$$2257(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r096 : ref;
Block134:
	r096 := __this;
	 assert ($neref((r096), ($null))==1);
	 //  @line: 42
	 call void$java.lang.RuntimeException$$la$init$ra$$760((r096));
	 return;
}


	 //  @line: 327
// <javaUtilEx.AbstractMap$1$1: boolean hasNext()>
procedure boolean$javaUtilEx.AbstractMap$1$1$hasNext$2484(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z0112 : int;
var $r1111 : ref;
var r0110 : ref;
Block139:
	r0110 := __this;
	 assert ($neref((r0110), ($null))==1);
	 //  @line: 328
	$r1111 := $HeapVar[r0110, javaUtilEx.Iterator$javaUtilEx.AbstractMap$1$1$i295];
	 assert ($neref(($r1111), ($null))==1);
	 //  @line: 328
	 call $z0112 := boolean$javaUtilEx.Iterator$hasNext$2254(($r1111));
	 //  @line: 328
	__ret := $z0112;
	 return;
}


	 //  @line: 98
// <javaUtilEx.AbstractCollection: boolean contains(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractCollection$contains$2232(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z213 : int;
var $r414 : ref;
var $z112 : int;
var $r311 : ref;
var r06 : ref;
var r19 : ref;
var $z010 : int;
var r28 : ref;
Block23:
	r06 := __this;
	r19 := $param_0;
	 assert ($neref((r06), ($null))==1);
	 //  @line: 99
	 call r28 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r06));
	 goto Block24;
	 //  @line: 100
Block24:
	 goto Block27, Block25;
	 //  @line: 100
Block27:
	 //  @line: 100
	 assume ($negInt(($neref((r19), ($null))))==1);
	 goto Block28;
	 //  @line: 100
Block25:
	 assume ($neref((r19), ($null))==1);
	 goto Block26;
	 //  @line: 101
Block28:
	 assert ($neref((r28), ($null))==1);
	 //  @line: 101
	 call $z213 := boolean$javaUtilEx.Iterator$hasNext$2254((r28));
	 goto Block29;
	 //  @line: 105
Block26:
	 assert ($neref((r28), ($null))==1);
	 //  @line: 105
	 call $z010 := boolean$javaUtilEx.Iterator$hasNext$2254((r28));
	 goto Block36;
	 //  @line: 101
Block29:
	 goto Block30, Block32;
	 //  @line: 105
Block36:
	 goto Block38, Block37;
	 //  @line: 101
Block30:
	 assume ($eqint(($z213), (0))==1);
	 goto Block31;
	 //  @line: 101
Block32:
	 //  @line: 101
	 assume ($negInt(($eqint(($z213), (0))))==1);
	 assert ($neref((r28), ($null))==1);
	 //  @line: 102
	 call $r414 := java.lang.Object$javaUtilEx.Iterator$next$2255((r28));
	 goto Block33;
	 //  @line: 105
Block38:
	 //  @line: 105
	 assume ($negInt(($eqint(($z010), (0))))==1);
	 assert ($neref((r28), ($null))==1);
	 //  @line: 106
	 call $r311 := java.lang.Object$javaUtilEx.Iterator$next$2255((r28));
	 assert ($neref((r19), ($null))==1);
	 //  @line: 106
	 call $z112 := boolean$java.lang.Object$equals$32((r19), ($r311));
	 goto Block39;
	 //  @line: 105
Block37:
	 assume ($eqint(($z010), (0))==1);
	 goto Block31;
	 //  @line: 109
Block31:
	 //  @line: 109
	__ret := 0;
	 return;
	 //  @line: 102
Block33:
	 goto Block35, Block34;
	 //  @line: 106
Block39:
	 goto Block40, Block41;
	 //  @line: 102
Block35:
	 //  @line: 102
	 assume ($negInt(($neref(($r414), ($null))))==1);
	 //  @line: 103
	__ret := 1;
	 return;
	 //  @line: 102
Block34:
	 assume ($neref(($r414), ($null))==1);
	 goto Block28;
	 //  @line: 106
Block40:
	 assume ($eqint(($z112), (0))==1);
	 goto Block26;
	 //  @line: 106
Block41:
	 //  @line: 106
	 assume ($negInt(($eqint(($z112), (0))))==1);
	 //  @line: 107
	__ret := 1;
	 return;
}


	 //  @line: 429
// <javaUtilEx.AbstractMap$2: boolean contains(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$2$contains$2585(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0409 : ref;
var r1410 : ref;
var $r2411 : ref;
var $z0412 : int;
Block443:
	r0409 := __this;
	r1410 := $param_0;
	 assert ($neref((r0409), ($null))==1);
	 //  @line: 430
	$r2411 := $HeapVar[r0409, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$2$this$0302];
	 assert ($neref(($r2411), ($null))==1);
	 //  @line: 430
	 call $z0412 := boolean$javaUtilEx.AbstractMap$containsValue$2502(($r2411), (r1410));
	 //  @line: 430
	__ret := $z0412;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqreal(x : realVar, y : realVar) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 617
// <javaUtilEx.AbstractMap$SimpleEntry: void <init>(javaUtilEx.Map$Entry)>
procedure void$javaUtilEx.AbstractMap$SimpleEntry$$la$init$ra$$2587(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0416 : ref;
var r1417 : ref;
var $r2418 : ref;
var $r3419 : ref;
Block445:
	r0416 := __this;
	r1417 := $param_0;
	 assert ($neref((r0416), ($null))==1);
	 //  @line: 618
	 call void$java.lang.Object$$la$init$ra$$28((r0416));
	 assert ($neref((r1417), ($null))==1);
	 //  @line: 619
	 call $r2418 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r1417));
	 assert ($neref((r0416), ($null))==1);
	 //  @line: 619
	$HeapVar[r0416, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303] := $r2418;
	 assert ($neref((r1417), ($null))==1);
	 //  @line: 620
	 call $r3419 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r1417));
	 assert ($neref((r0416), ($null))==1);
	 //  @line: 620
	$HeapVar[r0416, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304] := $r3419;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $divint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 334
// <javaUtilEx.HashMap: java.lang.Object getForNullKey()>
procedure java.lang.Object$javaUtilEx.HashMap$getForNullKey$2617(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r3595 : ref;
var $r2594 : ref;
var r4596 : ref;
var r0591 : ref;
var $r1592 : [int]ref;
Block605:
	r0591 := __this;
	 assert ($neref((r0591), ($null))==1);
	 //  @line: 335
	$r1592 := $HeapVar[r0591, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((0), (0))==1);
	 assert ($ltint((0), ($refArrSize[$r1592[$arrSizeIdx]]))==1);
	 //  @line: 335
	r4596 := $r1592[0];
	 goto Block606;
	 //  @line: 335
Block606:
	 goto Block607, Block609;
	 //  @line: 335
Block607:
	 assume ($eqref((r4596), ($null))==1);
	 goto Block608;
	 //  @line: 335
Block609:
	 //  @line: 335
	 assume ($negInt(($eqref((r4596), ($null))))==1);
	 assert ($neref((r4596), ($null))==1);
	 //  @line: 336
	$r2594 := $HeapVar[r4596, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 goto Block610;
	 //  @line: 339
Block608:
	 //  @line: 339
	__ret := $null;
	 return;
	 //  @line: 336
Block610:
	 goto Block613, Block611;
	 //  @line: 336
Block613:
	 //  @line: 336
	 assume ($negInt(($neref(($r2594), ($null))))==1);
	 assert ($neref((r4596), ($null))==1);
	 //  @line: 337
	$r3595 := $HeapVar[r4596, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 //  @line: 337
	__ret := $r3595;
	 return;
	 //  @line: 336
Block611:
	 assume ($neref(($r2594), ($null))==1);
	 goto Block612;
	 //  @line: 335
Block612:
	 assert ($neref((r4596), ($null))==1);
	 //  @line: 335
	r4596 := $HeapVar[r4596, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block614;
	 //  @line: 335
Block614:
	 goto Block606;
}


	 //  @line: 855
// <javaUtilEx.HashMap: javaUtilEx.Iterator newKeyIterator()>
procedure javaUtilEx.Iterator$javaUtilEx.HashMap$newKeyIterator$2636(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0844 : ref;
var $r1843 : ref;
Block891:
	r0844 := __this;
	 //  @line: 856
	$r1843 := $newvariable((892));
	 assume ($neref(($newvariable((892))), ($null))==1);
	 assert ($neref(($r1843), ($null))==1);
	 //  @line: 856
	 call void$javaUtilEx.HashMap$KeyIterator$$la$init$ra$$2753(($r1843), (r0844), ($null));
	 //  @line: 856
	__ret := $r1843;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $leint(x : int, y : int) returns (__ret : int) {
if (x <= y) then 1 else 0
}


	 //  @line: 889
// <javaUtilEx.HashMap$KeySet: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.HashMap$KeySet$iterator$2734(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0926 : ref;
var $r2928 : ref;
var $r1927 : ref;
Block994:
	r0926 := __this;
	 assert ($neref((r0926), ($null))==1);
	 //  @line: 890
	$r1927 := $HeapVar[r0926, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313];
	 assert ($neref(($r1927), ($null))==1);
	 //  @line: 890
	 call $r2928 := javaUtilEx.Iterator$javaUtilEx.HashMap$newKeyIterator$2636(($r1927));
	 //  @line: 890
	__ret := $r2928;
	 return;
}


	 //  @line: 399
// <javaUtilEx.AbstractMap$2$1: void <init>(javaUtilEx.AbstractMap$2)>
procedure void$javaUtilEx.AbstractMap$2$1$$la$init$ra$$2576(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r5386 : ref;
var $r2383 : ref;
var $r4385 : ref;
var r1382 : ref;
var $r3384 : ref;
var r0381 : ref;
Block433:
	r0381 := __this;
	r1382 := $param_0;
	 assert ($neref((r0381), ($null))==1);
	 //  @line: 400
	$HeapVar[r0381, javaUtilEx.AbstractMap$2$javaUtilEx.AbstractMap$2$1$this$1301] := r1382;
	 assert ($neref((r0381), ($null))==1);
	 //  @line: 400
	 call void$java.lang.Object$$la$init$ra$$28((r0381));
	 assert ($neref((r0381), ($null))==1);
	 //  @line: 401
	$r2383 := $HeapVar[r0381, javaUtilEx.AbstractMap$2$javaUtilEx.AbstractMap$2$1$this$1301];
	 assert ($neref(($r2383), ($null))==1);
	 //  @line: 401
	$r3384 := $HeapVar[$r2383, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$2$this$0302];
	 assert ($neref(($r3384), ($null))==1);
	 //  @line: 401
	 call $r4385 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511(($r3384));
	 assert ($neref(($r4385), ($null))==1);
	 //  @line: 401
	 call $r5386 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r4385));
	 assert ($neref((r0381), ($null))==1);
	 //  @line: 401
	$HeapVar[r0381, javaUtilEx.Iterator$javaUtilEx.AbstractMap$2$1$i300] := $r5386;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 887
// <javaUtilEx.HashMap$KeySet: void <init>(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$KeySet$$la$init$ra$$2733(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0924 : ref;
var r1925 : ref;
Block993:
	r0924 := __this;
	r1925 := $param_0;
	 assert ($neref((r0924), ($null))==1);
	 //  @line: 888
	$HeapVar[r0924, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313] := r1925;
	 assert ($neref((r0924), ($null))==1);
	 //  @line: 888
	 call void$javaUtilEx.AbstractSet$$la$init$ra$$2495((r0924));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $orreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// <java.lang.Object: boolean equals(java.lang.Object)>
procedure boolean$java.lang.Object$equals$32(__this : ref, $param_0 : ref) returns (__ret : int);



	 //  @line: 44
// <javaUtilEx.NoSuchElementException: void <init>()>
procedure void$javaUtilEx.NoSuchElementException$$la$init$ra$$2771(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01118 : ref;
Block1160:
	r01118 := __this;
	 assert ($neref((r01118), ($null))==1);
	 //  @line: 45
	 call void$java.lang.RuntimeException$$la$init$ra$$760((r01118));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $modref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 563
// <javaUtilEx.HashMap: javaUtilEx.HashMap$Entry removeEntryForKey(java.lang.Object)>
procedure javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$removeEntryForKey$2628(__this : ref, $param_0 : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $z0751 : int;
var r8753 : ref;
var $i5746 : int;
var $i9752 : int;
var $i2731 : int;
var i0733 : int;
var $i7748 : int;
var $r5739 : [int]ref;
var r2742 : ref;
var i1738 : int;
var r0734 : ref;
var $i3736 : int;
var $i8749 : int;
var $r6744 : ref;
var $r7750 : [int]ref;
var r9754 : ref;
var r3745 : ref;
var $i6747 : int;
var r1730 : ref;
var $r4735 : [int]ref;
var $i4743 : int;
Block767:
	r0734 := __this;
	r1730 := $param_0;
	 goto Block768;
	 //  @line: 564
Block768:
	 goto Block771, Block769;
	 //  @line: 564
Block771:
	 //  @line: 564
	 assume ($negInt(($neref((r1730), ($null))))==1);
	 //  @line: 576
	$i9752 := 0;
	 goto Block772;
	 //  @line: 564
Block769:
	 assume ($neref((r1730), ($null))==1);
	 goto Block770;
	 //  @line: 564
Block772:
	 //  @line: 564
	i0733 := $i9752;
	 assert ($neref((r0734), ($null))==1);
	 //  @line: 565
	$r4735 := $HeapVar[r0734, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 565
	$i3736 := $refArrSize[$r4735[$arrSizeIdx]];
	 //  @line: 565
	 call i1738 := int$javaUtilEx.HashMap$indexFor$2613((i0733), ($i3736));
	 assert ($neref((r0734), ($null))==1);
	 //  @line: 566
	$r5739 := $HeapVar[r0734, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1738), (0))==1);
	 assert ($ltint((i1738), ($refArrSize[$r5739[$arrSizeIdx]]))==1);
	 //  @line: 566
	r8753 := $r5739[i1738];
	 //  @line: 567
	r9754 := r8753;
	 goto Block774;
	 //  @line: 564
Block770:
	 assert ($neref((r1730), ($null))==1);
	 //  @line: 564
	 call $i2731 := int$java.lang.Object$hashCode$31((r1730));
	 goto Block773;
	 //  @line: 569
Block774:
	 goto Block775, Block777;
	 //  @line: 564
Block773:
	 //  @line: 564
	 call $i9752 := int$javaUtilEx.HashMap$hash$2612(($i2731));
	 goto Block772;
	 //  @line: 569
Block775:
	 assume ($eqref((r9754), ($null))==1);
	 goto Block776;
	 //  @line: 569
Block777:
	 //  @line: 569
	 assume ($negInt(($eqref((r9754), ($null))))==1);
	 assert ($neref((r9754), ($null))==1);
	 //  @line: 570
	r2742 := $HeapVar[r9754, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 assert ($neref((r9754), ($null))==1);
	 //  @line: 572
	$i4743 := $HeapVar[r9754, int$javaUtilEx.HashMap$Entry$hash0];
	 goto Block778;
	 //  @line: 587
Block776:
	 //  @line: 587
	__ret := r9754;
	 return;
	 //  @line: 572
Block778:
	 goto Block779, Block781;
	 //  @line: 572
Block779:
	 assume ($neint(($i4743), (i0733))==1);
	 goto Block780;
	 //  @line: 572
Block781:
	 //  @line: 572
	 assume ($negInt(($neint(($i4743), (i0733))))==1);
	 assert ($neref((r9754), ($null))==1);
	 //  @line: 569
	$r6744 := $HeapVar[r9754, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 //  @line: 569
	r3745 := $r6744;
	 goto Block782;
	 //  @line: 583
Block780:
	 //  @line: 583
	r8753 := r9754;
	 goto Block798;
	 //  @line: 569
Block782:
	 goto Block783, Block785;
	 //  @line: 584
Block798:
	 //  @line: 584
	r9754 := r2742;
	 goto Block774;
	 //  @line: 569
Block783:
	 assume ($eqref(($r6744), (r1730))==1);
	 goto Block784;
	 //  @line: 569
Block785:
	 //  @line: 569
	 assume ($negInt(($eqref(($r6744), (r1730))))==1);
	 goto Block786;
	 //  @line: 574
Block784:
	 assert ($neref((r0734), ($null))==1);
	 //  @line: 574
	$i5746 := $HeapVar[r0734, int$javaUtilEx.HashMap$modCount0];
	 //  @line: 574
	$i6747 := $addint(($i5746), (1));
	 assert ($neref((r0734), ($null))==1);
	 //  @line: 574
	$HeapVar[r0734, int$javaUtilEx.HashMap$modCount0] := $i6747;
	 assert ($neref((r0734), ($null))==1);
	 //  @line: 575
	$i7748 := $HeapVar[r0734, int$javaUtilEx.HashMap$size0];
	 //  @line: 575
	$i8749 := $subint(($i7748), (1));
	 assert ($neref((r0734), ($null))==1);
	 //  @line: 575
	$HeapVar[r0734, int$javaUtilEx.HashMap$size0] := $i8749;
	 goto Block792;
	 //  @line: 581
Block786:
	 goto Block788, Block787;
	 //  @line: 576
Block792:
	 goto Block795, Block793;
	 //  @line: 581
Block788:
	 //  @line: 581
	 assume ($negInt(($eqref((r1730), ($null))))==1);
	 assert ($neref((r1730), ($null))==1);
	 //  @line: 585
	 call $z0751 := boolean$java.lang.Object$equals$32((r1730), (r3745));
	 goto Block789;
	 //  @line: 581
Block787:
	 assume ($eqref((r1730), ($null))==1);
	 goto Block780;
	 //  @line: 576
Block795:
	 //  @line: 576
	 assume ($negInt(($neref((r8753), (r9754))))==1);
	 assert ($neref((r0734), ($null))==1);
	 //  @line: 577
	$r7750 := $HeapVar[r0734, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1738), (0))==1);
	 assert ($ltint((i1738), ($refArrSize[$r7750[$arrSizeIdx]]))==1);
	 //  @line: 577
	$r7750[i1738] := r2742;
	 goto Block796;
	 //  @line: 576
Block793:
	 assume ($neref((r8753), (r9754))==1);
	 goto Block794;
	 //  @line: 585
Block789:
	 goto Block790, Block791;
	 //  @line: 580
Block796:
	 assert ($neref((r9754), ($null))==1);
	 //  @line: 580
	 call void$javaUtilEx.HashMap$Entry$recordRemoval$2651((r9754), (r0734));
	 goto Block797;
	 //  @line: 579
Block794:
	 assert ($neref((r8753), ($null))==1);
	 //  @line: 579
	$HeapVar[r8753, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311] := r2742;
	 goto Block796;
	 //  @line: 585
Block790:
	 assume ($eqint(($z0751), (0))==1);
	 goto Block780;
	 //  @line: 585
Block791:
	 //  @line: 585
	 assume ($negInt(($eqint(($z0751), (0))))==1);
	 goto Block784;
	 //  @line: 581
Block797:
	 //  @line: 581
	__ret := r9754;
	 return;
}


	 //  @line: 901
// <javaUtilEx.HashMap$KeySet: void clear()>
procedure void$javaUtilEx.HashMap$KeySet$clear$2738(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0942 : ref;
var $r1943 : ref;
Block1003:
	r0942 := __this;
	 assert ($neref((r0942), ($null))==1);
	 //  @line: 902
	$r1943 := $HeapVar[r0942, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313];
	 assert ($neref(($r1943), ($null))==1);
	 //  @line: 902
	 call void$javaUtilEx.HashMap$clear$2630(($r1943));
	 return;
}


	 //  @line: 221
// <javaUtilEx.HashMap: void <init>()>
procedure void$javaUtilEx.HashMap$$la$init$ra$$2609(__this : ref)
  modifies $refArrSize, $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r1544 : [int]ref;
var r0543 : ref;
Block565:
	r0543 := __this;
	 assert ($neref((r0543), ($null))==1);
	 //  @line: 222
	 call void$javaUtilEx.AbstractMap$$la$init$ra$$2499((r0543));
	 assert ($neref((r0543), ($null))==1);
	 //  @line: 868
	$HeapVar[r0543, javaUtilEx.Set$javaUtilEx.HashMap$entrySet308] := $null;
	 assert ($neref((r0543), ($null))==1);
	 //  @line: 223
	$HeapVar[r0543, float$javaUtilEx.HashMap$loadFactor0] := $fresh13;
	 assert ($neref((r0543), ($null))==1);
	 //  @line: 224
	$HeapVar[r0543, int$javaUtilEx.HashMap$threshold0] := 12;
	 //  @line: 225
	$r1544 := $reftorefarr(($newvariable((566))));
	$refArrSize[$reftorefarr(($newvariable((566))))[$arrSizeIdx]] := 16;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((566))))), ($refArrNull))))==1);
	 assert ($neref((r0543), ($null))==1);
	 //  @line: 225
	$HeapVar[r0543, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307] := $r1544;
	 assert ($neref((r0543), ($null))==1);
	 //  @line: 226
	 call void$javaUtilEx.HashMap$init$2611((r0543));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $nereal(x : realVar, y : realVar) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 85
// <javaUtilEx.AbstractSet: boolean equals(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractSet$equals$2496(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z0176 : int;
var $r4183 : ref;
var $z1180 : int;
var r1174 : ref;
var r0175 : ref;
var r2177 : ref;
var $i0178 : int;
var $r3181 : ref;
var $i1179 : int;

 //temp local variables 
var $caughtEx1 : ref;
var $caughtEx0 : ref;

Block169:
	$caughtEx1 := $null;
	$caughtEx0 := $null;
	r0175 := __this;
	r1174 := $param_0;
	 goto Block170;
	 //  @line: 86
Block170:
	 goto Block173, Block171;
	 //  @line: 86
Block173:
	 //  @line: 86
	 assume ($negInt(($neref((r1174), (r0175))))==1);
	 //  @line: 87
	__ret := 1;
	 return;
	 //  @line: 86
Block171:
	 assume ($neref((r1174), (r0175))==1);
	 goto Block172;
	 //  @line: 89
Block172:
	 //  @line: 89
	$z0176 := $instanceof((r1174), (javaUtilEx.Set));
	 goto Block174;
	 //  @line: 89
Block174:
	 goto Block177, Block175;
	 //  @line: 89
Block177:
	 //  @line: 89
	 assume ($negInt(($neint(($z0176), (0))))==1);
	 //  @line: 90
	__ret := 0;
	 return;
	 //  @line: 89
Block175:
	 assume ($neint(($z0176), (0))==1);
	 goto Block176;
	 //  @line: 91
Block176:
	 //  @line: 91
	r2177 := r1174;
	 goto Block178;
	 //  @line: 92
Block178:
	 assert ($neref((r2177), ($null))==1);
	 //  @line: 92
	 call $i0178 := int$javaUtilEx.Collection$size$2241((r2177));
	 assert ($neref((r0175), ($null))==1);
	 //  @line: 92
	 call $i1179 := int$javaUtilEx.AbstractCollection$size$2230((r0175));
	 goto Block179;
	 //  @line: 92
Block179:
	 goto Block180, Block182;
	 //  @line: 92
Block180:
	 assume ($eqint(($i0178), ($i1179))==1);
	 goto Block181;
	 //  @line: 92
Block182:
	 //  @line: 92
	 assume ($negInt(($eqint(($i0178), ($i1179))))==1);
	 //  @line: 93
	__ret := 0;
	 return;
	 //  @line: 95
Block181:
	 assert ($neref((r0175), ($null))==1);
	 //  @line: 95
	 call $z1180 := boolean$javaUtilEx.AbstractCollection$containsAll$2235((r0175), (r2177));
	 goto Block183;
	 //  @line: 95
Block183:
	 //  @line: 95
	__ret := $z1180;
	 return;
}


	 //  @line: 782
// <javaUtilEx.HashMap: void createEntry(int,java.lang.Object,java.lang.Object,int)>
procedure void$javaUtilEx.HashMap$createEntry$2635(__this : ref, $param_0 : int, $param_1 : ref, $param_2 : ref, $param_3 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var i1833 : int;
var $r6840 : [int]ref;
var r3835 : ref;
var $r5836 : ref;
var i0837 : int;
var $r4834 : [int]ref;
var r2839 : ref;
var $i2841 : int;
var $i3842 : int;
var r1838 : ref;
var r0832 : ref;
Block889:
	r0832 := __this;
	i0837 := $param_0;
	r1838 := $param_1;
	r2839 := $param_2;
	i1833 := $param_3;
	 assert ($neref((r0832), ($null))==1);
	 //  @line: 783
	$r4834 := $HeapVar[r0832, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1833), (0))==1);
	 assert ($ltint((i1833), ($refArrSize[$r4834[$arrSizeIdx]]))==1);
	 //  @line: 783
	r3835 := $r4834[i1833];
	 assert ($neref((r0832), ($null))==1);
	 //  @line: 784
	$r6840 := $HeapVar[r0832, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 784
	$r5836 := $newvariable((890));
	 assume ($neref(($newvariable((890))), ($null))==1);
	 assert ($neref(($r5836), ($null))==1);
	 //  @line: 784
	 call void$javaUtilEx.HashMap$Entry$$la$init$ra$$2643(($r5836), (i0837), (r1838), (r2839), (r3835));
	 assert ($geint((i1833), (0))==1);
	 assert ($ltint((i1833), ($refArrSize[$r6840[$arrSizeIdx]]))==1);
	 //  @line: 784
	$r6840[i1833] := $r5836;
	 assert ($neref((r0832), ($null))==1);
	 //  @line: 785
	$i2841 := $HeapVar[r0832, int$javaUtilEx.HashMap$size0];
	 //  @line: 785
	$i3842 := $addint(($i2841), (1));
	 assert ($neref((r0832), ($null))==1);
	 //  @line: 785
	$HeapVar[r0832, int$javaUtilEx.HashMap$size0] := $i3842;
	 return;
}


	 //  @line: 943
// <javaUtilEx.HashMap$Values: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.HashMap$Values$iterator$2762(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r21063 : ref;
var $r11062 : ref;
var r01061 : ref;
Block1095:
	r01061 := __this;
	 assert ($neref((r01061), ($null))==1);
	 //  @line: 944
	$r11062 := $HeapVar[r01061, javaUtilEx.HashMap$javaUtilEx.HashMap$Values$this$0317];
	 assert ($neref(($r11062), ($null))==1);
	 //  @line: 944
	 call $r21063 := javaUtilEx.Iterator$javaUtilEx.HashMap$newValueIterator$2637(($r11062));
	 //  @line: 944
	__ret := $r21063;
	 return;
}


	 //  @line: 937
// <javaUtilEx.HashMap: javaUtilEx.Collection values()>
procedure javaUtilEx.Collection$javaUtilEx.HashMap$values$2640(__this : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r3858 : ref;
var $r2857 : ref;
var r0854 : ref;
var r1855 : ref;
Block905:
	r0854 := __this;
	 assert ($neref((r0854), ($null))==1);
	 //  @line: 938
	r1855 := $HeapVar[r0854, javaUtilEx.Collection$javaUtilEx.AbstractMap$values299];
	 goto Block906;
	 //  @line: 939
Block906:
	 goto Block907, Block909;
	 //  @line: 939
Block907:
	 assume ($eqref((r1855), ($null))==1);
	 goto Block908;
	 //  @line: 939
Block909:
	 //  @line: 939
	 assume ($negInt(($eqref((r1855), ($null))))==1);
	 //  @line: 939
	$r2857 := r1855;
	 goto Block910;
	 //  @line: 939
Block908:
	 //  @line: 939
	r3858 := $newvariable((911));
	 assume ($neref(($newvariable((911))), ($null))==1);
	 goto Block912;
	 //  @line: 939
Block910:
	 //  @line: 939
	__ret := $r2857;
	 return;
Block912:
	$r2857 := r3858;
	 assert ($neref((r3858), ($null))==1);
	 //  @line: 939
	 call void$javaUtilEx.HashMap$Values$$la$init$ra$$2766((r3858), (r0854), ($null));
	 assert ($neref((r0854), ($null))==1);
	 //  @line: 939
	$HeapVar[r0854, javaUtilEx.Collection$javaUtilEx.AbstractMap$values299] := r3858;
	 goto Block910;
}


	 //  @line: 847
// <javaUtilEx.HashMap$EntryIterator: java.lang.Object next()>
procedure java.lang.Object$javaUtilEx.HashMap$EntryIterator$next$2654(__this : ref) returns (__ret : ref, $Exep1 : ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1920 : ref;
var r0919 : ref;

 //temp local variables 
var $caughtEx2 : ref;
var $caughtEx3 : ref;

	 //  @line: 847
Block982:
	$caughtEx3 := $null;
	$caughtEx2 := $null;
	$Exep1 := $null;
	$Exep0 := $null;
	 goto Block983;
Block983:
	r0919 := __this;
	 assert ($neref((r0919), ($null))==1);
	 //  @line: 848
	 call $r1920, $caughtEx2, $caughtEx3 := javaUtilEx.Map$Entry$javaUtilEx.HashMap$EntryIterator$next$2653((r0919));
	 goto Block986, Block984;
Block986:
	 assume ($eqref(($caughtEx2), ($null))==1);
	 goto Block987;
Block984:
	 assume ($neref(($caughtEx2), ($null))==1);
	 goto Block985;
Block987:
	 goto Block988, Block990;
Block985:
	$Exep1 := $caughtEx2;
	 return;
Block988:
	 assume ($neref(($caughtEx3), ($null))==1);
	 goto Block989;
Block990:
	 assume ($eqref(($caughtEx3), ($null))==1);
	 goto Block991;
Block989:
	$Exep0 := $caughtEx3;
	 return;
Block991:
	 //  @line: 848
	__ret := $r1920;
	 return;
}


	 //  @line: 847
// <javaUtilEx.HashMap$EntryIterator: void <init>(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$EntryIterator$$la$init$ra$$2652(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r1916 : ref;
var r0915 : ref;
Block970:
	r0915 := __this;
	r1916 := $param_0;
	 assert ($neref((r0915), ($null))==1);
	 //  @line: 848
	$HeapVar[r0915, javaUtilEx.HashMap$javaUtilEx.HashMap$EntryIterator$this$0312] := r1916;
	 assert ($neref((r0915), ($null))==1);
	 //  @line: 848
	 call void$javaUtilEx.HashMap$HashIterator$$la$init$ra$$2767((r0915), (r1916));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $orref($param00 : ref, $param11 : ref) returns (__ret : int);



// <javaUtilEx.Iterator: java.lang.Object next()>
procedure java.lang.Object$javaUtilEx.Iterator$next$2255(__this : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $shlreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 72
// <javaUtilEx.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>
procedure void$javaUtilEx.IllegalArgumentException$$la$init$ra$$2756(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r11047 : ref;
var r01046 : ref;
var r21048 : ref;
Block1080:
	r01046 := __this;
	r11047 := $param_0;
	r21048 := $param_1;
	 assert ($neref((r01046), ($null))==1);
	 //  @line: 73
	 call void$java.lang.RuntimeException$$la$init$ra$$762((r01046), (r11047), (r21048));
	 return;
}


	 //  @line: 65
// <javaUtilEx.AbstractCollection: void <init>()>
procedure void$javaUtilEx.AbstractCollection$$la$init$ra$$2228(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
Block16:
	r01 := __this;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 66
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 return;
}


// <javaUtilEx.Map$Entry: java.lang.Object getKey()>
procedure java.lang.Object$javaUtilEx.Map$Entry$getKey$2547(__this : ref) returns (__ret : ref);



	 //  @line: 30
// <javaUtilEx.Content: int hashCode()>
procedure int$javaUtilEx.Content$hashCode$2605(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $i0509 : int;
var r0508 : ref;
var $i1510 : int;
Block518:
	r0508 := __this;
	 assert ($neref((r0508), ($null))==1);
	 //  @line: 31
	$i0509 := $HeapVar[r0508, int$javaUtilEx.Content$val0];
	 //  @line: 31
	$i1510 := $xorint(($i0509), (31));
	 //  @line: 31
	__ret := $i1510;
	 return;
}


	 //  @line: 283
// <javaUtilEx.HashMap: int size()>
procedure int$javaUtilEx.HashMap$size$2614(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0568 : ref;
var $i0569 : int;
Block576:
	r0568 := __this;
	 assert ($neref((r0568), ($null))==1);
	 //  @line: 284
	$i0569 := $HeapVar[r0568, int$javaUtilEx.HashMap$size0];
	 //  @line: 284
	__ret := $i0569;
	 return;
}


	 //  @line: 993
// <javaUtilEx.HashMap$EntrySet: boolean remove(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$EntrySet$remove$2745(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r2994 : ref;
var $r3995 : ref;
var r1993 : ref;
var r0992 : ref;
var $z0997 : int;
Block1039:
	r0992 := __this;
	r1993 := $param_0;
	 assert ($neref((r0992), ($null))==1);
	 //  @line: 994
	$r2994 := $HeapVar[r0992, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314];
	 assert ($neref(($r2994), ($null))==1);
	 //  @line: 994
	 call $r3995 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$removeMapping$2629(($r2994), (r1993));
	 goto Block1040;
	 //  @line: 994
Block1040:
	 goto Block1043, Block1041;
	 //  @line: 994
Block1043:
	 //  @line: 994
	 assume ($negInt(($eqref(($r3995), ($null))))==1);
	 //  @line: 994
	$z0997 := 1;
	 goto Block1044;
	 //  @line: 994
Block1041:
	 assume ($eqref(($r3995), ($null))==1);
	 goto Block1042;
	 //  @line: 994
Block1044:
	 //  @line: 994
	__ret := $z0997;
	 return;
	 //  @line: 994
Block1042:
	 //  @line: 994
	$z0997 := 0;
	 goto Block1044;
}


	 //  @line: 847
// <javaUtilEx.HashMap$EntryIterator: void <init>(javaUtilEx.HashMap,javaUtilEx.HashMap$1)>
procedure void$javaUtilEx.HashMap$EntryIterator$$la$init$ra$$2655(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r2923 : ref;
var r1922 : ref;
var r0921 : ref;
Block992:
	r0921 := __this;
	r1922 := $param_0;
	r2923 := $param_1;
	 assert ($neref((r0921), ($null))==1);
	 //  @line: 848
	 call void$javaUtilEx.HashMap$EntryIterator$$la$init$ra$$2652((r0921), (r1922));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// <javaUtilEx.Collection: boolean contains(java.lang.Object)>
procedure boolean$javaUtilEx.Collection$contains$2243(__this : ref, $param_0 : ref) returns (__ret : int);



	 //  @line: 271
// <javaUtilEx.AbstractMap: void putAll(javaUtilEx.Map)>
procedure void$javaUtilEx.AbstractMap$putAll$2507(__this : ref, $param_0 : ref) returns ($Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $r7299 : ref;
var r0297 : ref;
var $z0294 : int;
var r2293 : ref;
var r1290 : ref;
var $r5295 : ref;
var $r6298 : ref;
var $r4291 : ref;
var r3296 : ref;

 //temp local variables 
var $caughtEx1 : ref;
var $freshlocal2 : ref;

	 //  @line: 271
Block319:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block320;
Block320:
	r0297 := __this;
	r1290 := $param_0;
	 assert ($neref((r1290), ($null))==1);
	 //  @line: 272
	 call $r4291 := javaUtilEx.Set$javaUtilEx.Map$entrySet$2544((r1290));
	 assert ($neref(($r4291), ($null))==1);
	 //  @line: 272
	 call r2293 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r4291));
	 goto Block321;
	 //  @line: 273
Block321:
	 assert ($neref((r2293), ($null))==1);
	 //  @line: 273
	 call $z0294 := boolean$javaUtilEx.Iterator$hasNext$2254((r2293));
	 goto Block322;
	 //  @line: 273
Block322:
	 goto Block325, Block323;
	 //  @line: 273
Block325:
	 //  @line: 273
	 assume ($negInt(($eqint(($z0294), (0))))==1);
	 assert ($neref((r2293), ($null))==1);
	 //  @line: 274
	 call $r5295 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2293));
	 //  @line: 274
	r3296 := $r5295;
	 assert ($neref((r3296), ($null))==1);
	 //  @line: 275
	 call $r6298 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r3296));
	 assert ($neref((r3296), ($null))==1);
	 //  @line: 275
	 call $r7299 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r3296));
	 assert ($neref((r0297), ($null))==1);
	 //  @line: 275
	 call $freshlocal2, $caughtEx1 := java.lang.Object$javaUtilEx.AbstractMap$put$2505((r0297), ($r6298), ($r7299));
	 goto Block328, Block326;
	 //  @line: 273
Block323:
	 assume ($eqint(($z0294), (0))==1);
	 goto Block324;
	 //  @line: 273
Block328:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block329;
	 //  @line: 273
Block326:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block327;
	 //  @line: 277
Block324:
	 return;
	 //  @line: 273
Block329:
	 goto Block321;
	 //  @line: 273
Block327:
	$Exep0 := $caughtEx1;
	 return;
}


// <javaUtilEx.Map: boolean containsKey(java.lang.Object)>
procedure boolean$javaUtilEx.Map$containsKey$2535(__this : ref, $param_0 : ref) returns (__ret : int);



	 //  @line: 627
// <javaUtilEx.HashMap: void clear()>
procedure void$javaUtilEx.HashMap$clear$2630(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $i2787 : int;
var $i0783 : int;
var r0782 : ref;
var r1785 : [int]ref;
var $i1784 : int;
var i3788 : int;
Block829:
	r0782 := __this;
	 assert ($neref((r0782), ($null))==1);
	 //  @line: 628
	$i0783 := $HeapVar[r0782, int$javaUtilEx.HashMap$modCount0];
	 //  @line: 628
	$i1784 := $addint(($i0783), (1));
	 assert ($neref((r0782), ($null))==1);
	 //  @line: 628
	$HeapVar[r0782, int$javaUtilEx.HashMap$modCount0] := $i1784;
	 assert ($neref((r0782), ($null))==1);
	 //  @line: 629
	r1785 := $HeapVar[r0782, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 630
	i3788 := 0;
	 goto Block830;
	 //  @line: 630
Block830:
	 //  @line: 630
	$i2787 := $refArrSize[r1785[$arrSizeIdx]];
	 goto Block831;
	 //  @line: 630
Block831:
	 goto Block834, Block832;
	 //  @line: 630
Block834:
	 //  @line: 630
	 assume ($negInt(($geint((i3788), ($i2787))))==1);
	 assert ($geint((i3788), (0))==1);
	 assert ($ltint((i3788), ($refArrSize[r1785[$arrSizeIdx]]))==1);
	 //  @line: 631
	r1785[i3788] := $null;
	 //  @line: 630
	i3788 := $addint((i3788), (1));
	 goto Block830;
	 //  @line: 630
Block832:
	 assume ($geint((i3788), ($i2787))==1);
	 goto Block833;
	 //  @line: 632
Block833:
	 assert ($neref((r0782), ($null))==1);
	 //  @line: 632
	$HeapVar[r0782, int$javaUtilEx.HashMap$size0] := 0;
	 goto Block835;
	 //  @line: 633
Block835:
	 return;
}


	 //  @line: 898
// <javaUtilEx.HashMap$KeySet: boolean remove(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$KeySet$remove$2737(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z0941 : int;
var r0936 : ref;
var $r2938 : ref;
var r1937 : ref;
var $r3939 : ref;
Block997:
	r0936 := __this;
	r1937 := $param_0;
	 assert ($neref((r0936), ($null))==1);
	 //  @line: 899
	$r2938 := $HeapVar[r0936, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313];
	 assert ($neref(($r2938), ($null))==1);
	 //  @line: 899
	 call $r3939 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$removeEntryForKey$2628(($r2938), (r1937));
	 goto Block998;
	 //  @line: 899
Block998:
	 goto Block1001, Block999;
	 //  @line: 899
Block1001:
	 //  @line: 899
	 assume ($negInt(($eqref(($r3939), ($null))))==1);
	 //  @line: 899
	$z0941 := 1;
	 goto Block1002;
	 //  @line: 899
Block999:
	 assume ($eqref(($r3939), ($null))==1);
	 goto Block1000;
	 //  @line: 899
Block1002:
	 //  @line: 899
	__ret := $z0941;
	 return;
	 //  @line: 899
Block1000:
	 //  @line: 899
	$z0941 := 0;
	 goto Block1002;
}


	 //  @line: 42
// <javaUtilEx.IllegalArgumentException: void <init>()>
procedure void$javaUtilEx.IllegalArgumentException$$la$init$ra$$2754(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01043 : ref;
Block1078:
	r01043 := __this;
	 assert ($neref((r01043), ($null))==1);
	 //  @line: 43
	 call void$java.lang.RuntimeException$$la$init$ra$$760((r01043));
	 return;
}


// <javaUtilEx.Iterator: void remove()>
procedure void$javaUtilEx.Iterator$remove$2256(__this : ref);



	 //  @line: 366
// <javaUtilEx.AbstractMap$1: java.lang.Object[] toArray(java.lang.Object[])>
procedure java.lang.Object$lp$$rp$$javaUtilEx.AbstractMap$1$toArray$2494(__this : ref, $param_0 : [int]ref) returns (__ret : [int]ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r13170 : [int]ref;
var $i0156 : int;
var $r6157 : ref;
var r14171 : [int]ref;
var $r9161 : ref;
var $r10167 : ref;
var r0154 : ref;
var $i1166 : int;
var $r4153 : ref;
var r1159 : [int]ref;
var $r3152 : ref;
var $r12169 : ref;
var $r5155 : ref;
var i2172 : int;
var $r7158 : [int]ref;
var $z0165 : int;
var r2163 : ref;
var $r11168 : ref;
var $r8160 : ref;

 //temp local variables 
var $caughtEx1 : ref;

	 //  @line: 366
Block157:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block158;
Block158:
	r0154 := __this;
	r13170 := $param_0;
	 assert ($neref(($refarrtoref((r13170))), ($null))==1);
	 //  @line: 367
	 call $r3152 := java.lang.Class$java.lang.Object$getClass$30(($refarrtoref((r13170))));
	 assert ($neref(($r3152), ($null))==1);
	 //  @line: 367
	 call $r4153 := java.lang.Class$java.lang.Class$getComponentType$467(($r3152));
	 assert ($neref((r0154), ($null))==1);
	 //  @line: 367
	$r5155 := $HeapVar[r0154, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r5155), ($null))==1);
	 //  @line: 367
	 call $i0156 := int$javaUtilEx.AbstractMap$size$2500(($r5155));
	 //  @line: 367
	 call $r6157, $caughtEx1 := java.lang.Object$java.lang.reflect.Array$newInstance$2553(($r4153), ($i0156));
	 goto Block161, Block159;
Block161:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block162;
Block159:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block160;
Block162:
	 //  @line: 367
	$r7158 := $reftorefarr(($r6157));
	 //  @line: 367
	r14171 := $r7158;
	 //  @line: 369
	r1159 := r14171;
	 assert ($neref((r0154), ($null))==1);
	 //  @line: 370
	$r8160 := $HeapVar[r0154, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r8160), ($null))==1);
	 //  @line: 370
	 call $r9161 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511(($r8160));
	 assert ($neref(($r9161), ($null))==1);
	 //  @line: 370
	 call r2163 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r9161));
	 //  @line: 371
	i2172 := 0;
	 goto Block163;
Block160:
	$Exep0 := $caughtEx1;
	 return;
	 //  @line: 372
Block163:
	 assert ($neref((r2163), ($null))==1);
	 //  @line: 372
	 call $z0165 := boolean$javaUtilEx.Iterator$hasNext$2254((r2163));
	 goto Block164;
	 //  @line: 372
Block164:
	 goto Block165, Block167;
	 //  @line: 372
Block165:
	 assume ($eqint(($z0165), (0))==1);
	 goto Block166;
	 //  @line: 372
Block167:
	 //  @line: 372
	 assume ($negInt(($eqint(($z0165), (0))))==1);
	 //  @line: 373
	$i1166 := i2172;
	 //  @line: 373
	i2172 := $addint((i2172), (1));
	 assert ($neref((r2163), ($null))==1);
	 //  @line: 373
	 call $r10167 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2163));
	 //  @line: 373
	$r11168 := $r10167;
	 assert ($neref(($r11168), ($null))==1);
	 //  @line: 373
	 call $r12169 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547(($r11168));
	 assert ($geint(($i1166), (0))==1);
	 assert ($ltint(($i1166), ($refArrSize[r1159[$arrSizeIdx]]))==1);
	 //  @line: 373
	r1159[$i1166] := $r12169;
	 goto Block163;
	 //  @line: 374
Block166:
	 //  @line: 374
	__ret := r14171;
	 return;
}


	 //  @line: 952
// <javaUtilEx.HashMap$Values: void clear()>
procedure void$javaUtilEx.HashMap$Values$clear$2765(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01071 : ref;
var $r11072 : ref;
Block1098:
	r01071 := __this;
	 assert ($neref((r01071), ($null))==1);
	 //  @line: 953
	$r11072 := $HeapVar[r01071, javaUtilEx.HashMap$javaUtilEx.HashMap$Values$this$0317];
	 assert ($neref(($r11072), ($null))==1);
	 //  @line: 953
	 call void$javaUtilEx.HashMap$clear$2630(($r11072));
	 return;
}


	 //  @line: 238
// <javaUtilEx.HashMap: void <init>(javaUtilEx.Map)>
procedure void$javaUtilEx.HashMap$$la$init$ra$$2610(__this : ref, $param_0 : ref) returns ($Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $i3552 : int;
var $f0548 : realVar;
var $i1550 : int;
var $i2551 : int;
var $f1549 : realVar;
var $i0547 : int;
var r0545 : ref;
var r1546 : ref;

 //temp local variables 
var $caughtEx1 : ref;

	 //  @line: 238
Block567:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block568;
Block568:
	r0545 := __this;
	r1546 := $param_0;
	 assert ($neref((r1546), ($null))==1);
	 //  @line: 239
	 call $i0547 := int$javaUtilEx.Map$size$2533((r1546));
	 //  @line: 239
	$f0548 := $inttoreal(($i0547));
	 //  @line: 239
	$f1549 := $divreal(($f0548), ($fresh13));
	 //  @line: 239
	$i1550 := $realtoint(($f1549));
	 //  @line: 239
	$i2551 := $addint(($i1550), (1));
	 //  @line: 239
	 call $i3552 := int$java.lang.Math$max$2700(($i2551), (16));
	 assert ($neref((r0545), ($null))==1);
	 //  @line: 239
	 call $caughtEx1 := void$javaUtilEx.HashMap$$la$init$ra$$2607((r0545), ($i3552), ($fresh13));
	 goto Block571, Block569;
Block571:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block572;
Block569:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block570;
Block572:
	 assert ($neref((r0545), ($null))==1);
	 //  @line: 241
	 call void$javaUtilEx.HashMap$putAllForCreate$2623((r0545), (r1546));
	 return;
Block570:
	$Exep0 := $caughtEx1;
	 return;
}


	 //  @line: 43
// <javaUtilEx.IllegalStateException: void <init>()>
procedure void$javaUtilEx.IllegalStateException$$la$init$ra$$2773(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01121 : ref;
Block1162:
	r01121 := __this;
	 assert ($neref((r01121), ($null))==1);
	 //  @line: 44
	 call void$java.lang.RuntimeException$$la$init$ra$$760((r01121));
	 return;
}


	 //  @line: 892
// <javaUtilEx.HashMap$KeySet: int size()>
procedure int$javaUtilEx.HashMap$KeySet$size$2735(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0929 : ref;
var $r1930 : ref;
var $i0931 : int;
Block995:
	r0929 := __this;
	 assert ($neref((r0929), ($null))==1);
	 //  @line: 893
	$r1930 := $HeapVar[r0929, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313];
	 assert ($neref(($r1930), ($null))==1);
	 //  @line: 893
	$i0931 := $HeapVar[$r1930, int$javaUtilEx.HashMap$size0];
	 //  @line: 893
	__ret := $i0931;
	 return;
}


	 //  @line: 166
// <javaUtilEx.AbstractSet: boolean removeAll(javaUtilEx.Collection)>
procedure boolean$javaUtilEx.AbstractSet$removeAll$2498(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r3207 : ref;
var $r2203 : ref;
var $z3208 : int;
var r5211 : ref;
var $z0202 : int;
var $z2206 : int;
var r0196 : ref;
var $i0197 : int;
var z4209 : int;
var r4210 : ref;
var $i1199 : int;
var $z1204 : int;
var r1198 : ref;
Block196:
	r0196 := __this;
	r1198 := $param_0;
	 //  @line: 167
	z4209 := 0;
	 assert ($neref((r0196), ($null))==1);
	 //  @line: 169
	 call $i0197 := int$javaUtilEx.AbstractCollection$size$2230((r0196));
	 assert ($neref((r1198), ($null))==1);
	 //  @line: 169
	 call $i1199 := int$javaUtilEx.Collection$size$2241((r1198));
	 goto Block197;
	 //  @line: 169
Block197:
	 goto Block198, Block200;
	 //  @line: 169
Block198:
	 assume ($leint(($i0197), ($i1199))==1);
	 goto Block199;
	 //  @line: 169
Block200:
	 //  @line: 169
	 assume ($negInt(($leint(($i0197), ($i1199))))==1);
	 assert ($neref((r1198), ($null))==1);
	 //  @line: 170
	 call r4210 := javaUtilEx.Iterator$javaUtilEx.Collection$iterator$2244((r1198));
	 goto Block201;
	 //  @line: 173
Block199:
	 assert ($neref((r0196), ($null))==1);
	 //  @line: 173
	 call r5211 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r0196));
	 goto Block207;
	 //  @line: 170
Block201:
	 assert ($neref((r4210), ($null))==1);
	 //  @line: 170
	 call $z2206 := boolean$javaUtilEx.Iterator$hasNext$2254((r4210));
	 goto Block202;
	 //  @line: 173
Block207:
	 assert ($neref((r5211), ($null))==1);
	 //  @line: 173
	 call $z0202 := boolean$javaUtilEx.Iterator$hasNext$2254((r5211));
	 goto Block208;
	 //  @line: 170
Block202:
	 goto Block203, Block205;
	 //  @line: 173
Block208:
	 goto Block210, Block209;
	 //  @line: 170
Block203:
	 assume ($eqint(($z2206), (0))==1);
	 goto Block204;
	 //  @line: 170
Block205:
	 //  @line: 170
	 assume ($negInt(($eqint(($z2206), (0))))==1);
	 assert ($neref((r4210), ($null))==1);
	 //  @line: 171
	 call $r3207 := java.lang.Object$javaUtilEx.Iterator$next$2255((r4210));
	 assert ($neref((r0196), ($null))==1);
	 //  @line: 171
	 call $z3208 := boolean$javaUtilEx.AbstractCollection$remove$2234((r0196), ($r3207));
	 //  @line: 171
	z4209 := $orint((z4209), ($z3208));
	 goto Block201;
	 //  @line: 173
Block210:
	 //  @line: 173
	 assume ($negInt(($eqint(($z0202), (0))))==1);
	 assert ($neref((r5211), ($null))==1);
	 //  @line: 174
	 call $r2203 := java.lang.Object$javaUtilEx.Iterator$next$2255((r5211));
	 assert ($neref((r1198), ($null))==1);
	 //  @line: 174
	 call $z1204 := boolean$javaUtilEx.Collection$contains$2243((r1198), ($r2203));
	 goto Block211;
	 //  @line: 173
Block209:
	 assume ($eqint(($z0202), (0))==1);
	 goto Block206;
	 //  @line: 170
Block204:
	 goto Block206;
	 //  @line: 174
Block211:
	 goto Block212, Block213;
	 //  @line: 180
Block206:
	 //  @line: 180
	__ret := z4209;
	 return;
	 //  @line: 174
Block212:
	 assume ($eqint(($z1204), (0))==1);
	 goto Block207;
	 //  @line: 174
Block213:
	 //  @line: 174
	 assume ($negInt(($eqint(($z1204), (0))))==1);
	 assert ($neref((r5211), ($null))==1);
	 //  @line: 175
	 call void$javaUtilEx.Iterator$remove$2256((r5211));
	 //  @line: 176
	z4209 := 1;
	 goto Block207;
}


// <javaUtilEx.Map: int size()>
procedure int$javaUtilEx.Map$size$2533(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addint(x : int, y : int) returns (__ret : int) {
(x + y)
}


	 //  @line: 55
// <javaUtilEx.NoSuchElementException: void <init>(java.lang.String)>
procedure void$javaUtilEx.NoSuchElementException$$la$init$ra$$2772(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r11120 : ref;
var r01119 : ref;
Block1161:
	r01119 := __this;
	r11120 := $param_0;
	 assert ($neref((r01119), ($null))==1);
	 //  @line: 56
	 call void$java.lang.RuntimeException$$la$init$ra$$761((r01119), (r11120));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 553
// <javaUtilEx.HashMap: java.lang.Object remove(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.HashMap$remove$2627(__this : ref, $param_0 : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0724 : ref;
var $r3729 : ref;
var r1725 : ref;
var r2727 : ref;
Block761:
	r0724 := __this;
	r1725 := $param_0;
	 assert ($neref((r0724), ($null))==1);
	 //  @line: 554
	 call r2727 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$removeEntryForKey$2628((r0724), (r1725));
	 goto Block762;
	 //  @line: 555
Block762:
	 goto Block763, Block765;
	 //  @line: 555
Block763:
	 assume ($neref((r2727), ($null))==1);
	 goto Block764;
	 //  @line: 555
Block765:
	 //  @line: 555
	 assume ($negInt(($neref((r2727), ($null))))==1);
	 //  @line: 555
	$r3729 := $null;
	 goto Block766;
	 //  @line: 555
Block764:
	 assert ($neref((r2727), ($null))==1);
	 //  @line: 555
	$r3729 := $HeapVar[r2727, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 goto Block766;
	 //  @line: 555
Block766:
	 //  @line: 555
	__ret := $r3729;
	 return;
}


	 //  @line: 349
// <javaUtilEx.AbstractMap$1: void clear()>
procedure void$javaUtilEx.AbstractMap$1$clear$2491(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0130 : ref;
var $r1131 : ref;
Block147:
	r0130 := __this;
	 assert ($neref((r0130), ($null))==1);
	 //  @line: 350
	$r1131 := $HeapVar[r0130, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r1131), ($null))==1);
	 //  @line: 350
	 call void$javaUtilEx.AbstractMap$clear$2508(($r1131));
	 return;
}


	 //  @line: 202
// <javaUtilEx.AbstractMap: java.lang.Object put(java.lang.Object,java.lang.Object)>
procedure java.lang.Object$javaUtilEx.AbstractMap$put$2505(__this : ref, $param_0 : ref, $param_1 : ref) returns (__ret : ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r2270 : ref;
var r1269 : ref;
var r0268 : ref;
var $r3267 : ref;

 //temp local variables 

	 //  @line: 202
Block285:
	$Exep0 := $null;
	 goto Block286;
Block286:
	r0268 := __this;
	r1269 := $param_0;
	r2270 := $param_1;
	 //  @line: 203
	$r3267 := $newvariable((287));
	 assume ($neref(($newvariable((287))), ($null))==1);
	 assert ($neref(($r3267), ($null))==1);
	 //  @line: 203
	 call void$javaUtilEx.UnsupportedOperationException$$la$init$ra$$2257(($r3267));
	 goto Block288;
Block288:
	$Exep0 := $r3267;
	 return;
}


	 //  @line: 181
// <javaUtilEx.AbstractCollection: boolean containsAll(javaUtilEx.Collection)>
procedure boolean$javaUtilEx.AbstractCollection$containsAll$2235(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r229 : ref;
var $z030 : int;
var $r332 : ref;
var r031 : ref;
var $z133 : int;
var r127 : ref;
Block65:
	r031 := __this;
	r127 := $param_0;
	 assert ($neref((r127), ($null))==1);
	 //  @line: 182
	 call r229 := javaUtilEx.Iterator$javaUtilEx.Collection$iterator$2244((r127));
	 goto Block66;
	 //  @line: 183
Block66:
	 assert ($neref((r229), ($null))==1);
	 //  @line: 183
	 call $z030 := boolean$javaUtilEx.Iterator$hasNext$2254((r229));
	 goto Block67;
	 //  @line: 183
Block67:
	 goto Block68, Block70;
	 //  @line: 183
Block68:
	 assume ($eqint(($z030), (0))==1);
	 goto Block69;
	 //  @line: 183
Block70:
	 //  @line: 183
	 assume ($negInt(($eqint(($z030), (0))))==1);
	 assert ($neref((r229), ($null))==1);
	 //  @line: 184
	 call $r332 := java.lang.Object$javaUtilEx.Iterator$next$2255((r229));
	 assert ($neref((r031), ($null))==1);
	 //  @line: 184
	 call $z133 := boolean$javaUtilEx.AbstractCollection$contains$2232((r031), ($r332));
	 goto Block71;
	 //  @line: 186
Block69:
	 //  @line: 186
	__ret := 1;
	 return;
	 //  @line: 184
Block71:
	 goto Block72, Block73;
	 //  @line: 184
Block72:
	 assume ($neint(($z133), (0))==1);
	 goto Block66;
	 //  @line: 184
Block73:
	 //  @line: 184
	 assume ($negInt(($neint(($z133), (0))))==1);
	 //  @line: 185
	__ret := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 350
// <javaUtilEx.HashMap: boolean containsKey(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$containsKey$2618(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z0601 : int;
var r0597 : ref;
var $r2599 : ref;
var r1598 : ref;
Block615:
	r0597 := __this;
	r1598 := $param_0;
	 assert ($neref((r0597), ($null))==1);
	 //  @line: 351
	 call $r2599 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$getEntry$2619((r0597), (r1598));
	 goto Block616;
	 //  @line: 351
Block616:
	 goto Block617, Block619;
	 //  @line: 351
Block617:
	 assume ($eqref(($r2599), ($null))==1);
	 goto Block618;
	 //  @line: 351
Block619:
	 //  @line: 351
	 assume ($negInt(($eqref(($r2599), ($null))))==1);
	 //  @line: 351
	$z0601 := 1;
	 goto Block620;
	 //  @line: 351
Block618:
	 //  @line: 351
	$z0601 := 0;
	 goto Block620;
	 //  @line: 351
Block620:
	 //  @line: 351
	__ret := $z0601;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $neint(x : int, y : int) returns (__ret : int) {
if (x != y) then 1 else 0
}


// <java.lang.StringBuilder: void <init>()>
procedure void$java.lang.StringBuilder$$la$init$ra$$2261(__this : ref);



	 //  @line: 949
// <javaUtilEx.HashMap$Values: boolean contains(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$Values$contains$2764(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r11068 : ref;
var $r21069 : ref;
var r01067 : ref;
var $z01070 : int;
Block1097:
	r01067 := __this;
	r11068 := $param_0;
	 assert ($neref((r01067), ($null))==1);
	 //  @line: 950
	$r21069 := $HeapVar[r01067, javaUtilEx.HashMap$javaUtilEx.HashMap$Values$this$0317];
	 assert ($neref(($r21069), ($null))==1);
	 //  @line: 950
	 call $z01070 := boolean$javaUtilEx.HashMap$containsValue$2631(($r21069), (r11068));
	 //  @line: 950
	__ret := $z01070;
	 return;
}


	 //  @line: 67
// <javaUtilEx.AbstractMap: boolean access$000(java.lang.Object,java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$access$000$2517($param_0 : ref, $param_1 : ref) returns (__ret : int) {
var r0378 : ref;
var $z0380 : int;
var r1379 : ref;
Block432:
	r0378 := $param_0;
	r1379 := $param_1;
	 //  @line: 68
	 call $z0380 := boolean$javaUtilEx.AbstractMap$eq$2516((r0378), (r1379));
	 //  @line: 68
	__ret := $z0380;
	 return;
}


	 //  @line: 747
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: void <init>(javaUtilEx.Map$Entry)>
procedure void$javaUtilEx.AbstractMap$SimpleImmutableEntry$$la$init$ra$$2595(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r3464 : ref;
var $r2463 : ref;
var r1462 : ref;
var r0461 : ref;
Block479:
	r0461 := __this;
	r1462 := $param_0;
	 assert ($neref((r0461), ($null))==1);
	 //  @line: 748
	 call void$java.lang.Object$$la$init$ra$$28((r0461));
	 assert ($neref((r1462), ($null))==1);
	 //  @line: 749
	 call $r2463 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r1462));
	 assert ($neref((r0461), ($null))==1);
	 //  @line: 749
	$HeapVar[r0461, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305] := $r2463;
	 assert ($neref((r1462), ($null))==1);
	 //  @line: 750
	 call $r3464 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r1462));
	 assert ($neref((r0461), ($null))==1);
	 //  @line: 750
	$HeapVar[r0461, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306] := $r3464;
	 return;
}


	 //  @line: 941
// <javaUtilEx.HashMap$Values: void <init>(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$Values$$la$init$ra$$2761(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r11060 : ref;
var r01059 : ref;
Block1094:
	r01059 := __this;
	r11060 := $param_0;
	 assert ($neref((r01059), ($null))==1);
	 //  @line: 942
	$HeapVar[r01059, javaUtilEx.HashMap$javaUtilEx.HashMap$Values$this$0317] := r11060;
	 assert ($neref((r01059), ($null))==1);
	 //  @line: 942
	 call void$javaUtilEx.AbstractCollection$$la$init$ra$$2228((r01059));
	 return;
}


	 //  @line: 185
// <javaUtilEx.HashMap: void <init>(int,float)>
procedure void$javaUtilEx.HashMap$$la$init$ra$$2607(__this : ref, $param_0 : int, $param_1 : realVar) returns ($Exep0 : ref)
  modifies $stringSize, $refArrSize, $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $b0522 : int;
var $r1523 : ref;
var $r10537 : ref;
var i2539 : int;
var $r3525 : ref;
var $r11538 : ref;
var $r2524 : ref;
var $i1532 : int;
var i3540 : int;
var $r8535 : ref;
var f0521 : realVar;
var $r6533 : [int]ref;
var r0519 : ref;
var $r7534 : ref;
var $r9536 : ref;
var $f1530 : realVar;
var $z0528 : int;
var $r5527 : ref;
var $r4526 : ref;
var $f2531 : realVar;

 //temp local variables 

	 //  @line: 185
Block529:
	$Exep0 := $null;
	 goto Block530;
Block530:
	r0519 := __this;
	i2539 := $param_0;
	f0521 := $param_1;
	 assert ($neref((r0519), ($null))==1);
	 //  @line: 186
	 call void$javaUtilEx.AbstractMap$$la$init$ra$$2499((r0519));
	 assert ($neref((r0519), ($null))==1);
	 //  @line: 868
	$HeapVar[r0519, javaUtilEx.Set$javaUtilEx.HashMap$entrySet308] := $null;
	 goto Block531;
	 //  @line: 187
Block531:
	 goto Block534, Block532;
	 //  @line: 187
Block534:
	 //  @line: 187
	 assume ($negInt(($geint((i2539), (0))))==1);
	 //  @line: 188
	$r7534 := $newvariable((535));
	 assume ($neref(($newvariable((535))), ($null))==1);
	 //  @line: 188
	$r8535 := $newvariable((536));
	 assume ($neref(($newvariable((536))), ($null))==1);
	 assert ($neref(($r8535), ($null))==1);
	 //  @line: 188
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r8535));
	$stringSize[$fresh10] := 26;
	 assert ($neref(($r8535), ($null))==1);
	 //  @line: 188
	 call $r9536 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r8535), ($fresh10));
	 assert ($neref(($r9536), ($null))==1);
	 //  @line: 188
	 call $r10537 := java.lang.StringBuilder$java.lang.StringBuilder$append$2274(($r9536), (i2539));
	 assert ($neref(($r10537), ($null))==1);
	 //  @line: 188
	 call $r11538 := java.lang.String$java.lang.StringBuilder$toString$2299(($r10537));
	 assert ($neref(($r7534), ($null))==1);
	 //  @line: 188
	 call void$javaUtilEx.IllegalArgumentException$$la$init$ra$$2755(($r7534), ($r11538));
	 goto Block537;
	 //  @line: 187
Block532:
	 assume ($geint((i2539), (0))==1);
	 goto Block533;
	 //  @line: 187
Block537:
	$Exep0 := $r7534;
	 return;
	 //  @line: 190
Block533:
	 goto Block538, Block540;
	 //  @line: 190
Block538:
	 assume ($leint((i2539), (1073741824))==1);
	 goto Block539;
	 //  @line: 190
Block540:
	 //  @line: 190
	 assume ($negInt(($leint((i2539), (1073741824))))==1);
	 goto Block541;
	 //  @line: 192
Block539:
	 //  @line: 192
	$b0522 := $cmpreal((f0521), ($fresh11));
	 goto Block542;
	 //  @line: 191
Block541:
	 //  @line: 191
	i2539 := 1073741824;
	 goto Block539;
	 //  @line: 192
Block542:
	 goto Block543, Block545;
	 //  @line: 192
Block543:
	 assume ($leint(($b0522), (0))==1);
	 goto Block544;
	 //  @line: 192
Block545:
	 //  @line: 192
	 assume ($negInt(($leint(($b0522), (0))))==1);
	 //  @line: 193
	 call $z0528 := boolean$java.lang.Float$isNaN$718((f0521));
	 goto Block546;
	 //  @line: 193
Block544:
	 //  @line: 193
	$r1523 := $newvariable((550));
	 assume ($neref(($newvariable((550))), ($null))==1);
	 //  @line: 193
	$r2524 := $newvariable((551));
	 assume ($neref(($newvariable((551))), ($null))==1);
	 assert ($neref(($r2524), ($null))==1);
	 //  @line: 193
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r2524));
	$stringSize[$fresh12] := 21;
	 assert ($neref(($r2524), ($null))==1);
	 //  @line: 193
	 call $r3525 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r2524), ($fresh12));
	 assert ($neref(($r3525), ($null))==1);
	 //  @line: 193
	 call $r4526 := java.lang.StringBuilder$java.lang.StringBuilder$append$2276(($r3525), (f0521));
	 assert ($neref(($r4526), ($null))==1);
	 //  @line: 193
	 call $r5527 := java.lang.String$java.lang.StringBuilder$toString$2299(($r4526));
	 assert ($neref(($r1523), ($null))==1);
	 //  @line: 193
	 call void$javaUtilEx.IllegalArgumentException$$la$init$ra$$2755(($r1523), ($r5527));
	 goto Block552;
	 //  @line: 193
Block546:
	 goto Block549, Block547;
	 //  @line: 193
Block552:
	$Exep0 := $r1523;
	 return;
	 //  @line: 193
Block549:
	 //  @line: 193
	 assume ($negInt(($eqint(($z0528), (0))))==1);
	 goto Block544;
	 //  @line: 193
Block547:
	 assume ($eqint(($z0528), (0))==1);
	 goto Block548;
	 //  @line: 197
Block548:
	 //  @line: 197
	i3540 := 1;
	 goto Block553;
	 //  @line: 198
Block553:
	 goto Block556, Block554;
	 //  @line: 198
Block556:
	 //  @line: 198
	 assume ($negInt(($geint((i3540), (i2539))))==1);
	 //  @line: 199
	i3540 := $shlint((i3540), (1));
	 goto Block553;
	 //  @line: 198
Block554:
	 assume ($geint((i3540), (i2539))==1);
	 goto Block555;
	 //  @line: 201
Block555:
	 assert ($neref((r0519), ($null))==1);
	 //  @line: 201
	$HeapVar[r0519, float$javaUtilEx.HashMap$loadFactor0] := f0521;
	 goto Block557;
	 //  @line: 202
Block557:
	 //  @line: 202
	$f1530 := $inttoreal((i3540));
	 //  @line: 202
	$f2531 := $mulreal(($f1530), (f0521));
	 //  @line: 202
	$i1532 := $realtoint(($f2531));
	 assert ($neref((r0519), ($null))==1);
	 //  @line: 202
	$HeapVar[r0519, int$javaUtilEx.HashMap$threshold0] := $i1532;
	 //  @line: 203
	$r6533 := $reftorefarr(($newvariable((558))));
	$refArrSize[$reftorefarr(($newvariable((558))))[$arrSizeIdx]] := i3540;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((558))))), ($refArrNull))))==1);
	 assert ($neref((r0519), ($null))==1);
	 //  @line: 203
	$HeapVar[r0519, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307] := $r6533;
	 assert ($neref((r0519), ($null))==1);
	 //  @line: 204
	 call void$javaUtilEx.HashMap$init$2611((r0519));
	 return;
}


	 //  @line: 108
// <javaUtilEx.AbstractMap: boolean containsValue(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$containsValue$2502(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r6231 : ref;
var $r3221 : ref;
var r0220 : ref;
var $r4226 : ref;
var r2223 : ref;
var r9234 : ref;
var r8233 : ref;
var $z1229 : int;
var $z2230 : int;
var $r7232 : ref;
var $r5228 : ref;
var r1224 : ref;
var $z0225 : int;
Block222:
	r0220 := __this;
	r1224 := $param_0;
	 assert ($neref((r0220), ($null))==1);
	 //  @line: 109
	 call $r3221 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0220));
	 assert ($neref(($r3221), ($null))==1);
	 //  @line: 109
	 call r2223 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r3221));
	 goto Block223;
	 //  @line: 110
Block223:
	 goto Block226, Block224;
	 //  @line: 110
Block226:
	 //  @line: 110
	 assume ($negInt(($neref((r1224), ($null))))==1);
	 goto Block227;
	 //  @line: 110
Block224:
	 assume ($neref((r1224), ($null))==1);
	 goto Block225;
	 //  @line: 111
Block227:
	 assert ($neref((r2223), ($null))==1);
	 //  @line: 111
	 call $z2230 := boolean$javaUtilEx.Iterator$hasNext$2254((r2223));
	 goto Block228;
	 //  @line: 117
Block225:
	 assert ($neref((r2223), ($null))==1);
	 //  @line: 117
	 call $z0225 := boolean$javaUtilEx.Iterator$hasNext$2254((r2223));
	 goto Block236;
	 //  @line: 111
Block228:
	 goto Block231, Block229;
	 //  @line: 117
Block236:
	 goto Block238, Block237;
	 //  @line: 111
Block231:
	 //  @line: 111
	 assume ($negInt(($eqint(($z2230), (0))))==1);
	 assert ($neref((r2223), ($null))==1);
	 //  @line: 112
	 call $r6231 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2223));
	 //  @line: 112
	r8233 := $r6231;
	 assert ($neref((r8233), ($null))==1);
	 //  @line: 113
	 call $r7232 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r8233));
	 goto Block232;
	 //  @line: 111
Block229:
	 assume ($eqint(($z2230), (0))==1);
	 goto Block230;
	 //  @line: 117
Block238:
	 //  @line: 117
	 assume ($negInt(($eqint(($z0225), (0))))==1);
	 assert ($neref((r2223), ($null))==1);
	 //  @line: 118
	 call $r4226 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2223));
	 //  @line: 118
	r9234 := $r4226;
	 assert ($neref((r9234), ($null))==1);
	 //  @line: 119
	 call $r5228 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r9234));
	 assert ($neref((r1224), ($null))==1);
	 //  @line: 119
	 call $z1229 := boolean$java.lang.Object$equals$32((r1224), ($r5228));
	 goto Block239;
	 //  @line: 117
Block237:
	 assume ($eqint(($z0225), (0))==1);
	 goto Block230;
	 //  @line: 113
Block232:
	 goto Block233, Block235;
	 //  @line: 123
Block230:
	 //  @line: 123
	__ret := 0;
	 return;
	 //  @line: 119
Block239:
	 goto Block242, Block240;
	 //  @line: 113
Block233:
	 assume ($neref(($r7232), ($null))==1);
	 goto Block234;
	 //  @line: 113
Block235:
	 //  @line: 113
	 assume ($negInt(($neref(($r7232), ($null))))==1);
	 //  @line: 114
	__ret := 1;
	 return;
	 //  @line: 119
Block242:
	 //  @line: 119
	 assume ($negInt(($eqint(($z1229), (0))))==1);
	 //  @line: 120
	__ret := 1;
	 return;
	 //  @line: 119
Block240:
	 assume ($eqint(($z1229), (0))==1);
	 goto Block241;
	 //  @line: 115
Block234:
	 goto Block227;
	 //  @line: 121
Block241:
	 goto Block225;
}


	 //  @line: 946
// <javaUtilEx.HashMap$Values: int size()>
procedure int$javaUtilEx.HashMap$Values$size$2763(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r01064 : ref;
var $i01066 : int;
var $r11065 : ref;
Block1096:
	r01064 := __this;
	 assert ($neref((r01064), ($null))==1);
	 //  @line: 947
	$r11065 := $HeapVar[r01064, javaUtilEx.HashMap$javaUtilEx.HashMap$Values$this$0317];
	 assert ($neref(($r11065), ($null))==1);
	 //  @line: 947
	$i01066 := $HeapVar[$r11065, int$javaUtilEx.HashMap$size0];
	 //  @line: 947
	__ret := $i01066;
	 return;
}


// <javaUtilEx.Set: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(__this : ref) returns (__ret : ref);



	 //  @line: 170
// <javaUtilEx.AbstractMap: java.lang.Object get(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.AbstractMap$get$2504(__this : ref, $param_0 : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r1254 : ref;
var $r5258 : ref;
var $r4256 : ref;
var r10265 : ref;
var $z1259 : int;
var $r6260 : ref;
var $z2261 : int;
var $r7262 : ref;
var r11266 : ref;
var r0250 : ref;
var $r9264 : ref;
var $r8263 : ref;
var $z0255 : int;
var $r3251 : ref;
var r2253 : ref;
Block264:
	r0250 := __this;
	r1254 := $param_0;
	 assert ($neref((r0250), ($null))==1);
	 //  @line: 171
	 call $r3251 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0250));
	 assert ($neref(($r3251), ($null))==1);
	 //  @line: 171
	 call r2253 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r3251));
	 goto Block265;
	 //  @line: 172
Block265:
	 goto Block268, Block266;
	 //  @line: 172
Block268:
	 //  @line: 172
	 assume ($negInt(($neref((r1254), ($null))))==1);
	 goto Block269;
	 //  @line: 172
Block266:
	 assume ($neref((r1254), ($null))==1);
	 goto Block267;
	 //  @line: 173
Block269:
	 assert ($neref((r2253), ($null))==1);
	 //  @line: 173
	 call $z2261 := boolean$javaUtilEx.Iterator$hasNext$2254((r2253));
	 goto Block270;
	 //  @line: 179
Block267:
	 assert ($neref((r2253), ($null))==1);
	 //  @line: 179
	 call $z0255 := boolean$javaUtilEx.Iterator$hasNext$2254((r2253));
	 goto Block278;
	 //  @line: 173
Block270:
	 goto Block271, Block273;
	 //  @line: 179
Block278:
	 goto Block280, Block279;
	 //  @line: 173
Block271:
	 assume ($eqint(($z2261), (0))==1);
	 goto Block272;
	 //  @line: 173
Block273:
	 //  @line: 173
	 assume ($negInt(($eqint(($z2261), (0))))==1);
	 assert ($neref((r2253), ($null))==1);
	 //  @line: 174
	 call $r7262 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2253));
	 //  @line: 174
	r10265 := $r7262;
	 assert ($neref((r10265), ($null))==1);
	 //  @line: 175
	 call $r8263 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r10265));
	 goto Block274;
	 //  @line: 179
Block280:
	 //  @line: 179
	 assume ($negInt(($eqint(($z0255), (0))))==1);
	 assert ($neref((r2253), ($null))==1);
	 //  @line: 180
	 call $r4256 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2253));
	 //  @line: 180
	r11266 := $r4256;
	 assert ($neref((r11266), ($null))==1);
	 //  @line: 181
	 call $r5258 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r11266));
	 assert ($neref((r1254), ($null))==1);
	 //  @line: 181
	 call $z1259 := boolean$java.lang.Object$equals$32((r1254), ($r5258));
	 goto Block281;
	 //  @line: 179
Block279:
	 assume ($eqint(($z0255), (0))==1);
	 goto Block272;
	 //  @line: 185
Block272:
	 //  @line: 185
	__ret := $null;
	 return;
	 //  @line: 175
Block274:
	 goto Block275, Block277;
	 //  @line: 181
Block281:
	 goto Block282, Block284;
	 //  @line: 175
Block275:
	 assume ($neref(($r8263), ($null))==1);
	 goto Block276;
	 //  @line: 175
Block277:
	 //  @line: 175
	 assume ($negInt(($neref(($r8263), ($null))))==1);
	 assert ($neref((r10265), ($null))==1);
	 //  @line: 176
	 call $r9264 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r10265));
	 //  @line: 176
	__ret := $r9264;
	 return;
	 //  @line: 181
Block282:
	 assume ($eqint(($z1259), (0))==1);
	 goto Block283;
	 //  @line: 181
Block284:
	 //  @line: 181
	 assume ($negInt(($eqint(($z1259), (0))))==1);
	 assert ($neref((r11266), ($null))==1);
	 //  @line: 182
	 call $r6260 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r11266));
	 //  @line: 182
	__ret := $r6260;
	 return;
	 //  @line: 177
Block276:
	 goto Block269;
	 //  @line: 183
Block283:
	 goto Block267;
}


// <java.lang.RuntimeException: void <init>()>
procedure void$java.lang.RuntimeException$$la$init$ra$$760(__this : ref);



	 //  @line: 271
// <javaUtilEx.AbstractCollection: boolean retainAll(javaUtilEx.Collection)>
procedure boolean$javaUtilEx.AbstractCollection$retainAll$2238(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r255 : ref;
var z260 : int;
var $z056 : int;
var r053 : ref;
var r157 : ref;
var $z159 : int;
var $r358 : ref;
Block97:
	r053 := __this;
	r157 := $param_0;
	 //  @line: 272
	z260 := 0;
	 assert ($neref((r053), ($null))==1);
	 //  @line: 273
	 call r255 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r053));
	 goto Block98;
	 //  @line: 274
Block98:
	 assert ($neref((r255), ($null))==1);
	 //  @line: 274
	 call $z056 := boolean$javaUtilEx.Iterator$hasNext$2254((r255));
	 goto Block99;
	 //  @line: 274
Block99:
	 goto Block100, Block102;
	 //  @line: 274
Block100:
	 assume ($eqint(($z056), (0))==1);
	 goto Block101;
	 //  @line: 274
Block102:
	 //  @line: 274
	 assume ($negInt(($eqint(($z056), (0))))==1);
	 assert ($neref((r255), ($null))==1);
	 //  @line: 275
	 call $r358 := java.lang.Object$javaUtilEx.Iterator$next$2255((r255));
	 assert ($neref((r157), ($null))==1);
	 //  @line: 275
	 call $z159 := boolean$javaUtilEx.Collection$contains$2243((r157), ($r358));
	 goto Block103;
	 //  @line: 280
Block101:
	 //  @line: 280
	__ret := z260;
	 return;
	 //  @line: 275
Block103:
	 goto Block104, Block105;
	 //  @line: 275
Block104:
	 assume ($neint(($z159), (0))==1);
	 goto Block98;
	 //  @line: 275
Block105:
	 //  @line: 275
	 assume ($negInt(($neint(($z159), (0))))==1);
	 assert ($neref((r255), ($null))==1);
	 //  @line: 276
	 call void$javaUtilEx.Iterator$remove$2256((r255));
	 //  @line: 277
	z260 := 1;
	 goto Block98;
}


// <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
procedure java.lang.StringBuilder$java.lang.StringBuilder$append$2273(__this : ref, $param_0 : int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $eqrefarray($param00 : [int]ref, $param11 : [int]ref) returns (__ret : int);



	 //  @line: 904
// <javaUtilEx.HashMap$KeySet: java.lang.Object[] toArray()>
procedure java.lang.Object$lp$$rp$$javaUtilEx.HashMap$KeySet$toArray$2739(__this : ref) returns (__ret : [int]ref)
  modifies $refArrSize;
  requires ($neref((__this), ($null))==1);
 {
var r2949 : ref;
var r1947 : [int]ref;
var $i1952 : int;
var $z0951 : int;
var $r4953 : ref;
var $r3945 : ref;
var i2954 : int;
var r0944 : ref;
var $i0946 : int;
Block1004:
	r0944 := __this;
	 assert ($neref((r0944), ($null))==1);
	 //  @line: 905
	$r3945 := $HeapVar[r0944, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313];
	 assert ($neref(($r3945), ($null))==1);
	 //  @line: 905
	$i0946 := $HeapVar[$r3945, int$javaUtilEx.HashMap$size0];
	 //  @line: 905
	r1947 := $reftorefarr(($newvariable((1005))));
	$refArrSize[$reftorefarr(($newvariable((1005))))[$arrSizeIdx]] := $i0946;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((1005))))), ($refArrNull))))==1);
	 assert ($neref((r0944), ($null))==1);
	 //  @line: 906
	 call r2949 := javaUtilEx.Iterator$javaUtilEx.HashMap$KeySet$iterator$2734((r0944));
	 //  @line: 907
	i2954 := 0;
	 goto Block1006;
	 //  @line: 908
Block1006:
	 assert ($neref((r2949), ($null))==1);
	 //  @line: 908
	 call $z0951 := boolean$javaUtilEx.Iterator$hasNext$2254((r2949));
	 goto Block1007;
	 //  @line: 908
Block1007:
	 goto Block1008, Block1010;
	 //  @line: 908
Block1008:
	 assume ($eqint(($z0951), (0))==1);
	 goto Block1009;
	 //  @line: 908
Block1010:
	 //  @line: 908
	 assume ($negInt(($eqint(($z0951), (0))))==1);
	 //  @line: 909
	$i1952 := i2954;
	 //  @line: 909
	i2954 := $addint((i2954), (1));
	 assert ($neref((r2949), ($null))==1);
	 //  @line: 909
	 call $r4953 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2949));
	 assert ($geint(($i1952), (0))==1);
	 assert ($ltint(($i1952), ($refArrSize[r1947[$arrSizeIdx]]))==1);
	 //  @line: 909
	r1947[$i1952] := $r4953;
	 goto Block1006;
	 //  @line: 910
Block1009:
	 //  @line: 910
	__ret := r1947;
	 return;
}


// <java.lang.Object: java.lang.Object clone()>
procedure java.lang.Object$java.lang.Object$clone$33(__this : ref) returns (__ret : ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {

 //temp local variables 

Block414:
	$Exep0 := $null;
	 return;
}


// <java.lang.RuntimeException: void <init>(java.lang.String)>
procedure void$java.lang.RuntimeException$$la$init$ra$$761(__this : ref, $param_0 : ref);



	 //  @line: 72
// <javaUtilEx.AbstractMap: void <init>()>
procedure void$javaUtilEx.AbstractMap$$la$init$ra$$2499(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0212 : ref;
Block214:
	r0212 := __this;
	 assert ($neref((r0212), ($null))==1);
	 //  @line: 73
	 call void$java.lang.Object$$la$init$ra$$28((r0212));
	 assert ($neref((r0212), ($null))==1);
	 //  @line: 302
	$HeapVar[r0212, javaUtilEx.Set$javaUtilEx.AbstractMap$keySet298] := $null;
	 assert ($neref((r0212), ($null))==1);
	 //  @line: 303
	$HeapVar[r0212, javaUtilEx.Collection$javaUtilEx.AbstractMap$values299] := $null;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 323
// <javaUtilEx.AbstractMap$1: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.AbstractMap$1$iterator$2488(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0123 : ref;
var $r1122 : ref;
Block143:
	r0123 := __this;
	 //  @line: 324
	$r1122 := $newvariable((144));
	 assume ($neref(($newvariable((144))), ($null))==1);
	 assert ($neref(($r1122), ($null))==1);
	 //  @line: 324
	 call void$javaUtilEx.AbstractMap$1$1$$la$init$ra$$2483(($r1122), (r0123));
	 //  @line: 324
	__ret := $r1122;
	 return;
}


	 //  @line: 843
// <javaUtilEx.HashMap$KeyIterator: java.lang.Object next()>
procedure java.lang.Object$javaUtilEx.HashMap$KeyIterator$next$2752(__this : ref) returns (__ret : ref, $Exep1 : ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r01037 : ref;
var $r11038 : ref;
var $r21039 : ref;

 //temp local variables 
var $caughtEx2 : ref;
var $caughtEx3 : ref;

	 //  @line: 843
Block1067:
	$caughtEx3 := $null;
	$caughtEx2 := $null;
	$Exep1 := $null;
	$Exep0 := $null;
	 goto Block1068;
Block1068:
	r01037 := __this;
	 assert ($neref((r01037), ($null))==1);
	 //  @line: 844
	 call $r11038, $caughtEx2, $caughtEx3 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$nextEntry$2769((r01037));
	 goto Block1071, Block1069;
Block1071:
	 assume ($eqref(($caughtEx2), ($null))==1);
	 goto Block1072;
Block1069:
	 assume ($neref(($caughtEx2), ($null))==1);
	 goto Block1070;
Block1072:
	 goto Block1075, Block1073;
Block1070:
	$Exep1 := $caughtEx2;
	 return;
Block1075:
	 assume ($eqref(($caughtEx3), ($null))==1);
	 goto Block1076;
Block1073:
	 assume ($neref(($caughtEx3), ($null))==1);
	 goto Block1074;
Block1076:
	 assert ($neref(($r11038), ($null))==1);
	 //  @line: 844
	 call $r21039 := java.lang.Object$javaUtilEx.HashMap$Entry$getKey$2644(($r11038));
	 //  @line: 844
	__ret := $r21039;
	 return;
Block1074:
	$Exep0 := $caughtEx3;
	 return;
}


	 //  @line: 675
// <javaUtilEx.AbstractMap$SimpleEntry: boolean equals(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$SimpleEntry$equals$2591(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0430 : ref;
var $z2436 : int;
var r1427 : ref;
var $r3431 : ref;
var r2429 : ref;
var $r4432 : ref;
var $r6435 : ref;
var $r5434 : ref;
var $z3438 : int;
var $z1433 : int;
var $z0428 : int;
Block449:
	r0430 := __this;
	r1427 := $param_0;
	 //  @line: 676
	$z0428 := $instanceof((r1427), (javaUtilEx.Map$Entry));
	 goto Block450;
	 //  @line: 676
Block450:
	 goto Block451, Block453;
	 //  @line: 676
Block451:
	 assume ($neint(($z0428), (0))==1);
	 goto Block452;
	 //  @line: 676
Block453:
	 //  @line: 676
	 assume ($negInt(($neint(($z0428), (0))))==1);
	 //  @line: 677
	__ret := 0;
	 return;
	 //  @line: 678
Block452:
	 //  @line: 678
	r2429 := r1427;
	 goto Block454;
	 //  @line: 679
Block454:
	 assert ($neref((r0430), ($null))==1);
	 //  @line: 679
	$r3431 := $HeapVar[r0430, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303];
	 assert ($neref((r2429), ($null))==1);
	 //  @line: 679
	 call $r4432 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r2429));
	 //  @line: 679
	 call $z1433 := boolean$javaUtilEx.AbstractMap$access$000$2517(($r3431), ($r4432));
	 goto Block455;
	 //  @line: 679
Block455:
	 goto Block456, Block458;
	 //  @line: 679
Block456:
	 assume ($eqint(($z1433), (0))==1);
	 goto Block457;
	 //  @line: 679
Block458:
	 //  @line: 679
	 assume ($negInt(($eqint(($z1433), (0))))==1);
	 assert ($neref((r0430), ($null))==1);
	 //  @line: 679
	$r5434 := $HeapVar[r0430, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304];
	 assert ($neref((r2429), ($null))==1);
	 //  @line: 679
	 call $r6435 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r2429));
	 //  @line: 679
	 call $z2436 := boolean$javaUtilEx.AbstractMap$access$000$2517(($r5434), ($r6435));
	 goto Block459;
	 //  @line: 679
Block457:
	 //  @line: 679
	$z3438 := 0;
	 goto Block462;
	 //  @line: 679
Block459:
	 goto Block461, Block460;
	 //  @line: 679
Block462:
	 //  @line: 679
	__ret := $z3438;
	 return;
	 //  @line: 679
Block461:
	 //  @line: 679
	 assume ($negInt(($eqint(($z2436), (0))))==1);
	 //  @line: 679
	$z3438 := 1;
	 goto Block462;
	 //  @line: 679
Block460:
	 assume ($eqint(($z2436), (0))==1);
	 goto Block457;
}


	 //  @line: 941
// <javaUtilEx.HashMap$Values: void <init>(javaUtilEx.HashMap,javaUtilEx.HashMap$1)>
procedure void$javaUtilEx.HashMap$Values$$la$init$ra$$2766(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r21075 : ref;
var r11074 : ref;
var r01073 : ref;
Block1099:
	r01073 := __this;
	r11074 := $param_0;
	r21075 := $param_1;
	 assert ($neref((r01073), ($null))==1);
	 //  @line: 942
	 call void$javaUtilEx.HashMap$Values$$la$init$ra$$2761((r01073), (r11074));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



// <javaUtilEx.Collection: int size()>
procedure int$javaUtilEx.Collection$size$2241(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqint(x : int, y : int) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 89
// <javaUtilEx.UnsupportedOperationException: void <init>(java.lang.Throwable)>
procedure void$javaUtilEx.UnsupportedOperationException$$la$init$ra$$2260(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r1103 : ref;
var r0102 : ref;
Block137:
	r0102 := __this;
	r1103 := $param_0;
	 assert ($neref((r0102), ($null))==1);
	 //  @line: 90
	 call void$java.lang.RuntimeException$$la$init$ra$$763((r0102), (r1103));
	 return;
}


	 //  @line: 4
// <javaUtilEx.juHashMapCreateClear: void main(java.lang.String[])>
procedure void$javaUtilEx.juHashMapCreateClear$main$2778($param_0 : [int]ref)
  modifies java.lang.String$lp$$rp$$javaUtilEx.Random$args321, $stringSize;
 {
var $i01131 : int;
var r01130 : [int]ref;
var r11133 : ref;
Block1167:
	r01130 := $param_0;
	 //  @line: 5
	java.lang.String$lp$$rp$$javaUtilEx.Random$args321 := r01130;
	 //  @line: 7
	 call $i01131 := int$javaUtilEx.Random$random$2781();
	 //  @line: 7
	 call r11133 := javaUtilEx.HashMap$javaUtilEx.juHashMapCreateClear$createMap$2779(($i01131));
	 assert ($neref((r11133), ($null))==1);
	 //  @line: 8
	 call void$javaUtilEx.HashMap$clear$2630((r11133));
	 return;
}


	 //  @line: 841
// <javaUtilEx.HashMap$KeyIterator: void <init>(javaUtilEx.HashMap,javaUtilEx.HashMap$1)>
procedure void$javaUtilEx.HashMap$KeyIterator$$la$init$ra$$2753(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r21042 : ref;
var r11041 : ref;
var r01040 : ref;
Block1077:
	r01040 := __this;
	r11041 := $param_0;
	r21042 := $param_1;
	 assert ($neref((r01040), ($null))==1);
	 //  @line: 842
	 call void$javaUtilEx.HashMap$KeyIterator$$la$init$ra$$2751((r01040), (r11041));
	 return;
}


	 //  @line: 207
// <javaUtilEx.AbstractCollection: boolean addAll(javaUtilEx.Collection)>
procedure boolean$javaUtilEx.AbstractCollection$addAll$2236(__this : ref, $param_0 : ref) returns (__ret : int, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r237 : ref;
var r039 : ref;
var $z141 : int;
var $r340 : ref;
var r135 : ref;
var z242 : int;
var $z038 : int;

 //temp local variables 
var $caughtEx1 : ref;

	 //  @line: 207
Block74:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block75;
Block75:
	r039 := __this;
	r135 := $param_0;
	 //  @line: 208
	z242 := 0;
	 assert ($neref((r135), ($null))==1);
	 //  @line: 209
	 call r237 := javaUtilEx.Iterator$javaUtilEx.Collection$iterator$2244((r135));
	 goto Block76;
	 //  @line: 210
Block76:
	 assert ($neref((r237), ($null))==1);
	 //  @line: 210
	 call $z038 := boolean$javaUtilEx.Iterator$hasNext$2254((r237));
	 goto Block77;
	 //  @line: 210
Block77:
	 goto Block78, Block80;
	 //  @line: 210
Block78:
	 assume ($eqint(($z038), (0))==1);
	 goto Block79;
	 //  @line: 210
Block80:
	 //  @line: 210
	 assume ($negInt(($eqint(($z038), (0))))==1);
	 assert ($neref((r237), ($null))==1);
	 //  @line: 211
	 call $r340 := java.lang.Object$javaUtilEx.Iterator$next$2255((r237));
	 assert ($neref((r039), ($null))==1);
	 //  @line: 211
	 call $z141, $caughtEx1 := boolean$javaUtilEx.AbstractCollection$add$2233((r039), ($r340));
	 goto Block83, Block81;
	 //  @line: 214
Block79:
	 //  @line: 214
	__ret := z242;
	 return;
	 //  @line: 210
Block83:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block84;
	 //  @line: 210
Block81:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block82;
	 //  @line: 210
Block84:
	 goto Block85;
	 //  @line: 210
Block82:
	$Exep0 := $caughtEx1;
	 return;
	 //  @line: 211
Block85:
	 goto Block86, Block87;
	 //  @line: 211
Block86:
	 assume ($eqint(($z141), (0))==1);
	 goto Block76;
	 //  @line: 211
Block87:
	 //  @line: 211
	 assume ($negInt(($eqint(($z141), (0))))==1);
	 //  @line: 212
	z242 := 1;
	 goto Block76;
}


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



	 //  @line: 806
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: boolean equals(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$SimpleImmutableEntry$equals$2599(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r5479 : ref;
var $r3476 : ref;
var $z2481 : int;
var $z3483 : int;
var r1472 : ref;
var $r6480 : ref;
var r0475 : ref;
var $z1478 : int;
var $z0473 : int;
var r2474 : ref;
var $r4477 : ref;
Block486:
	r0475 := __this;
	r1472 := $param_0;
	 //  @line: 807
	$z0473 := $instanceof((r1472), (javaUtilEx.Map$Entry));
	 goto Block487;
	 //  @line: 807
Block487:
	 goto Block490, Block488;
	 //  @line: 807
Block490:
	 //  @line: 807
	 assume ($negInt(($neint(($z0473), (0))))==1);
	 //  @line: 808
	__ret := 0;
	 return;
	 //  @line: 807
Block488:
	 assume ($neint(($z0473), (0))==1);
	 goto Block489;
	 //  @line: 809
Block489:
	 //  @line: 809
	r2474 := r1472;
	 goto Block491;
	 //  @line: 810
Block491:
	 assert ($neref((r0475), ($null))==1);
	 //  @line: 810
	$r3476 := $HeapVar[r0475, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305];
	 assert ($neref((r2474), ($null))==1);
	 //  @line: 810
	 call $r4477 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r2474));
	 //  @line: 810
	 call $z1478 := boolean$javaUtilEx.AbstractMap$access$000$2517(($r3476), ($r4477));
	 goto Block492;
	 //  @line: 810
Block492:
	 goto Block493, Block495;
	 //  @line: 810
Block493:
	 assume ($eqint(($z1478), (0))==1);
	 goto Block494;
	 //  @line: 810
Block495:
	 //  @line: 810
	 assume ($negInt(($eqint(($z1478), (0))))==1);
	 assert ($neref((r0475), ($null))==1);
	 //  @line: 810
	$r5479 := $HeapVar[r0475, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306];
	 assert ($neref((r2474), ($null))==1);
	 //  @line: 810
	 call $r6480 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r2474));
	 //  @line: 810
	 call $z2481 := boolean$javaUtilEx.AbstractMap$access$000$2517(($r5479), ($r6480));
	 goto Block496;
	 //  @line: 810
Block494:
	 //  @line: 810
	$z3483 := 0;
	 goto Block499;
	 //  @line: 810
Block496:
	 goto Block498, Block497;
	 //  @line: 810
Block499:
	 //  @line: 810
	__ret := $z3483;
	 return;
	 //  @line: 810
Block498:
	 //  @line: 810
	 assume ($negInt(($eqint(($z2481), (0))))==1);
	 //  @line: 810
	$z3483 := 1;
	 goto Block499;
	 //  @line: 810
Block497:
	 assume ($eqint(($z2481), (0))==1);
	 goto Block494;
}


	 //  @line: 411
// <javaUtilEx.AbstractMap$2$1: void remove()>
procedure void$javaUtilEx.AbstractMap$2$1$remove$2579(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1396 : ref;
var r0395 : ref;
Block436:
	r0395 := __this;
	 assert ($neref((r0395), ($null))==1);
	 //  @line: 412
	$r1396 := $HeapVar[r0395, javaUtilEx.Iterator$javaUtilEx.AbstractMap$2$1$i300];
	 assert ($neref(($r1396), ($null))==1);
	 //  @line: 412
	 call void$javaUtilEx.Iterator$remove$2256(($r1396));
	 return;
}


	 //  @line: 895
// <javaUtilEx.HashMap$KeySet: boolean contains(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$KeySet$contains$2736(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0932 : ref;
var $r2934 : ref;
var $z0935 : int;
var r1933 : ref;
Block996:
	r0932 := __this;
	r1933 := $param_0;
	 assert ($neref((r0932), ($null))==1);
	 //  @line: 896
	$r2934 := $HeapVar[r0932, javaUtilEx.HashMap$javaUtilEx.HashMap$KeySet$this$0313];
	 assert ($neref(($r2934), ($null))==1);
	 //  @line: 896
	 call $z0935 := boolean$javaUtilEx.HashMap$containsKey$2618(($r2934), (r1933));
	 //  @line: 896
	__ret := $z0935;
	 return;
}


	 //  @line: 51
// <javaUtilEx.UnsupportedOperationException: void <init>(java.lang.String)>
procedure void$javaUtilEx.UnsupportedOperationException$$la$init$ra$$2258(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r097 : ref;
var r198 : ref;
Block135:
	r097 := __this;
	r198 := $param_0;
	 assert ($neref((r097), ($null))==1);
	 //  @line: 52
	 call void$java.lang.RuntimeException$$la$init$ra$$761((r097), (r198));
	 return;
}


// <javaUtilEx.Iterator: boolean hasNext()>
procedure boolean$javaUtilEx.Iterator$hasNext$2254(__this : ref) returns (__ret : int);



	 //  @line: 214
// <javaUtilEx.HashMap: void <init>(int)>
procedure void$javaUtilEx.HashMap$$la$init$ra$$2608(__this : ref, $param_0 : int) returns ($Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r0541 : ref;
var i0542 : int;

 //temp local variables 
var $caughtEx1 : ref;

	 //  @line: 214
Block559:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block560;
Block560:
	r0541 := __this;
	i0542 := $param_0;
	 assert ($neref((r0541), ($null))==1);
	 //  @line: 215
	 call $caughtEx1 := void$javaUtilEx.HashMap$$la$init$ra$$2607((r0541), (i0542), ($fresh13));
	 goto Block561, Block563;
Block561:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block562;
Block563:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block564;
Block562:
	$Exep0 := $caughtEx1;
	 return;
Block564:
	 return;
}


// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 637
// <javaUtilEx.AbstractMap$SimpleEntry: java.lang.Object getValue()>
procedure java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$getValue$2589(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0422 : ref;
var $r1423 : ref;
Block447:
	r0422 := __this;
	 assert ($neref((r0422), ($null))==1);
	 //  @line: 638
	$r1423 := $HeapVar[r0422, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304];
	 //  @line: 638
	__ret := $r1423;
	 return;
}


	 //  @line: 841
// <javaUtilEx.HashMap$KeyIterator: void <init>(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$KeyIterator$$la$init$ra$$2751(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r11036 : ref;
var r01035 : ref;
Block1066:
	r01035 := __this;
	r11036 := $param_0;
	 assert ($neref((r01035), ($null))==1);
	 //  @line: 842
	$HeapVar[r01035, javaUtilEx.HashMap$javaUtilEx.HashMap$KeyIterator$this$0315] := r11036;
	 assert ($neref((r01035), ($null))==1);
	 //  @line: 842
	 call void$javaUtilEx.HashMap$HashIterator$$la$init$ra$$2767((r01035), (r11036));
	 return;
}


	 //  @line: 399
// <javaUtilEx.AbstractMap$2: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.AbstractMap$2$iterator$2581(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0400 : ref;
var $r1399 : ref;
Block438:
	r0400 := __this;
	 //  @line: 400
	$r1399 := $newvariable((439));
	 assume ($neref(($newvariable((439))), ($null))==1);
	 assert ($neref(($r1399), ($null))==1);
	 //  @line: 400
	 call void$javaUtilEx.AbstractMap$2$1$$la$init$ra$$2576(($r1399), (r0400));
	 //  @line: 400
	__ret := $r1399;
	 return;
}


	 //  @line: 407
// <javaUtilEx.AbstractMap$2$1: java.lang.Object next()>
procedure java.lang.Object$javaUtilEx.AbstractMap$2$1$next$2578(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r0390 : ref;
var $r2392 : ref;
var $r1391 : ref;
var $r4394 : ref;
var $r3393 : ref;
Block435:
	r0390 := __this;
	 assert ($neref((r0390), ($null))==1);
	 //  @line: 408
	$r1391 := $HeapVar[r0390, javaUtilEx.Iterator$javaUtilEx.AbstractMap$2$1$i300];
	 assert ($neref(($r1391), ($null))==1);
	 //  @line: 408
	 call $r2392 := java.lang.Object$javaUtilEx.Iterator$next$2255(($r1391));
	 //  @line: 408
	$r3393 := $r2392;
	 assert ($neref(($r3393), ($null))==1);
	 //  @line: 408
	 call $r4394 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548(($r3393));
	 //  @line: 408
	__ret := $r4394;
	 return;
}


	 //  @line: 986
// <javaUtilEx.HashMap$EntrySet: boolean contains(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$EntrySet$contains$2744(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r2983 : ref;
var r1981 : ref;
var $r5986 : ref;
var r0984 : ref;
var $r4985 : ref;
var r3988 : ref;
var $z1989 : int;
var $z2991 : int;
var $z0982 : int;
Block1025:
	r0984 := __this;
	r1981 := $param_0;
	 //  @line: 987
	$z0982 := $instanceof((r1981), (javaUtilEx.Map$Entry));
	 goto Block1026;
	 //  @line: 987
Block1026:
	 goto Block1027, Block1029;
	 //  @line: 987
Block1027:
	 assume ($neint(($z0982), (0))==1);
	 goto Block1028;
	 //  @line: 987
Block1029:
	 //  @line: 987
	 assume ($negInt(($neint(($z0982), (0))))==1);
	 //  @line: 988
	__ret := 0;
	 return;
	 //  @line: 989
Block1028:
	 //  @line: 989
	r2983 := r1981;
	 goto Block1030;
	 //  @line: 990
Block1030:
	 assert ($neref((r0984), ($null))==1);
	 //  @line: 990
	$r4985 := $HeapVar[r0984, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314];
	 assert ($neref((r2983), ($null))==1);
	 //  @line: 990
	 call $r5986 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r2983));
	 assert ($neref(($r4985), ($null))==1);
	 //  @line: 990
	 call r3988 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$getEntry$2619(($r4985), ($r5986));
	 goto Block1031;
	 //  @line: 991
Block1031:
	 goto Block1034, Block1032;
	 //  @line: 991
Block1034:
	 //  @line: 991
	 assume ($negInt(($eqref((r3988), ($null))))==1);
	 assert ($neref((r3988), ($null))==1);
	 //  @line: 991
	 call $z1989 := boolean$javaUtilEx.HashMap$Entry$equals$2647((r3988), (r2983));
	 goto Block1035;
	 //  @line: 991
Block1032:
	 assume ($eqref((r3988), ($null))==1);
	 goto Block1033;
	 //  @line: 991
Block1035:
	 goto Block1036, Block1037;
	 //  @line: 991
Block1033:
	 //  @line: 991
	$z2991 := 0;
	 goto Block1038;
	 //  @line: 991
Block1036:
	 assume ($eqint(($z1989), (0))==1);
	 goto Block1033;
	 //  @line: 991
Block1037:
	 //  @line: 991
	 assume ($negInt(($eqint(($z1989), (0))))==1);
	 //  @line: 991
	$z2991 := 1;
	 goto Block1038;
	 //  @line: 991
Block1038:
	 //  @line: 991
	__ret := $z2991;
	 return;
}


// <javaUtilEx.Set: int size()>
procedure int$javaUtilEx.Set$size$2518(__this : ref) returns (__ret : int);



	 //  @line: 290
// <javaUtilEx.AbstractMap: void clear()>
procedure void$javaUtilEx.AbstractMap$clear$2508(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0301 : ref;
var $r1302 : ref;
Block330:
	r0301 := __this;
	 assert ($neref((r0301), ($null))==1);
	 //  @line: 291
	 call $r1302 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0301));
	 assert ($neref(($r1302), ($null))==1);
	 //  @line: 291
	 call void$javaUtilEx.Set$clear$2530(($r1302));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 146
// <javaUtilEx.AbstractCollection: boolean remove(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractCollection$remove$2234(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r323 : ref;
var r220 : ref;
var $z124 : int;
var $r426 : ref;
var r018 : ref;
var $z022 : int;
var r121 : ref;
var $z225 : int;
Block46:
	r018 := __this;
	r121 := $param_0;
	 assert ($neref((r018), ($null))==1);
	 //  @line: 147
	 call r220 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r018));
	 goto Block47;
	 //  @line: 148
Block47:
	 goto Block50, Block48;
	 //  @line: 148
Block50:
	 //  @line: 148
	 assume ($negInt(($neref((r121), ($null))))==1);
	 goto Block51;
	 //  @line: 148
Block48:
	 assume ($neref((r121), ($null))==1);
	 goto Block49;
	 //  @line: 149
Block51:
	 assert ($neref((r220), ($null))==1);
	 //  @line: 149
	 call $z225 := boolean$javaUtilEx.Iterator$hasNext$2254((r220));
	 goto Block52;
	 //  @line: 156
Block49:
	 assert ($neref((r220), ($null))==1);
	 //  @line: 156
	 call $z022 := boolean$javaUtilEx.Iterator$hasNext$2254((r220));
	 goto Block59;
	 //  @line: 149
Block52:
	 goto Block53, Block55;
	 //  @line: 156
Block59:
	 goto Block60, Block61;
	 //  @line: 149
Block53:
	 assume ($eqint(($z225), (0))==1);
	 goto Block54;
	 //  @line: 149
Block55:
	 //  @line: 149
	 assume ($negInt(($eqint(($z225), (0))))==1);
	 assert ($neref((r220), ($null))==1);
	 //  @line: 150
	 call $r426 := java.lang.Object$javaUtilEx.Iterator$next$2255((r220));
	 goto Block56;
	 //  @line: 156
Block60:
	 assume ($eqint(($z022), (0))==1);
	 goto Block54;
	 //  @line: 156
Block61:
	 //  @line: 156
	 assume ($negInt(($eqint(($z022), (0))))==1);
	 assert ($neref((r220), ($null))==1);
	 //  @line: 157
	 call $r323 := java.lang.Object$javaUtilEx.Iterator$next$2255((r220));
	 assert ($neref((r121), ($null))==1);
	 //  @line: 157
	 call $z124 := boolean$java.lang.Object$equals$32((r121), ($r323));
	 goto Block62;
	 //  @line: 163
Block54:
	 //  @line: 163
	__ret := 0;
	 return;
	 //  @line: 150
Block56:
	 goto Block58, Block57;
	 //  @line: 157
Block62:
	 goto Block64, Block63;
	 //  @line: 150
Block58:
	 //  @line: 150
	 assume ($negInt(($neref(($r426), ($null))))==1);
	 assert ($neref((r220), ($null))==1);
	 //  @line: 151
	 call void$javaUtilEx.Iterator$remove$2256((r220));
	 //  @line: 152
	__ret := 1;
	 return;
	 //  @line: 150
Block57:
	 assume ($neref(($r426), ($null))==1);
	 goto Block51;
	 //  @line: 157
Block64:
	 //  @line: 157
	 assume ($negInt(($eqint(($z124), (0))))==1);
	 assert ($neref((r220), ($null))==1);
	 //  @line: 158
	 call void$javaUtilEx.Iterator$remove$2256((r220));
	 //  @line: 159
	__ret := 1;
	 return;
	 //  @line: 157
Block63:
	 assume ($eqint(($z124), (0))==1);
	 goto Block49;
}


// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 341
// <javaUtilEx.AbstractMap$1: int size()>
procedure int$javaUtilEx.AbstractMap$1$size$2489(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0124 : ref;
var $r1125 : ref;
var $i0126 : int;
Block145:
	r0124 := __this;
	 assert ($neref((r0124), ($null))==1);
	 //  @line: 342
	$r1125 := $HeapVar[r0124, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r1125), ($null))==1);
	 //  @line: 342
	 call $i0126 := int$javaUtilEx.AbstractMap$size$2500(($r1125));
	 //  @line: 342
	__ret := $i0126;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 570
// <javaUtilEx.AbstractMap: boolean eq(java.lang.Object,java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$eq$2516($param_0 : ref, $param_1 : ref) returns (__ret : int) {
var r0374 : ref;
var $z0377 : int;
var r1375 : ref;
Block421:
	r0374 := $param_0;
	r1375 := $param_1;
	 goto Block422;
	 //  @line: 571
Block422:
	 goto Block425, Block423;
	 //  @line: 571
Block425:
	 //  @line: 571
	 assume ($negInt(($neref((r0374), ($null))))==1);
	 goto Block426;
	 //  @line: 571
Block423:
	 assume ($neref((r0374), ($null))==1);
	 goto Block424;
	 //  @line: 571
Block426:
	 goto Block429, Block427;
	 //  @line: 571
Block424:
	 assert ($neref((r0374), ($null))==1);
	 //  @line: 571
	 call $z0377 := boolean$java.lang.Object$equals$32((r0374), (r1375));
	 goto Block430;
	 //  @line: 571
Block429:
	 //  @line: 571
	 assume ($negInt(($neref((r1375), ($null))))==1);
	 //  @line: 571
	$z0377 := 1;
	 goto Block430;
	 //  @line: 571
Block427:
	 assume ($neref((r1375), ($null))==1);
	 goto Block428;
	 //  @line: 571
Block430:
	 //  @line: 571
	__ret := $z0377;
	 return;
	 //  @line: 571
Block428:
	 //  @line: 571
	$z0377 := 0;
	 goto Block431;
	 //  @line: 571
Block431:
	 goto Block430;
}


	 //  @line: 861
// <javaUtilEx.HashMap: javaUtilEx.Iterator newEntryIterator()>
procedure javaUtilEx.Iterator$javaUtilEx.HashMap$newEntryIterator$2638(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1847 : ref;
var r0848 : ref;
Block895:
	r0848 := __this;
	 //  @line: 862
	$r1847 := $newvariable((896));
	 assume ($neref(($newvariable((896))), ($null))==1);
	 assert ($neref(($r1847), ($null))==1);
	 //  @line: 862
	 call void$javaUtilEx.HashMap$EntryIterator$$la$init$ra$$2655(($r1847), (r0848), ($null));
	 //  @line: 862
	__ret := $r1847;
	 return;
}


	 //  @line: 513
// <javaUtilEx.AbstractMap: int hashCode()>
procedure int$javaUtilEx.AbstractMap$hashCode$2513(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0337 : ref;
var $z0341 : int;
var $r3342 : ref;
var $i0344 : int;
var $r2338 : ref;
var i1345 : int;
var $r4343 : ref;
var r1340 : ref;
Block383:
	r0337 := __this;
	 //  @line: 514
	i1345 := 0;
	 assert ($neref((r0337), ($null))==1);
	 //  @line: 515
	 call $r2338 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0337));
	 assert ($neref(($r2338), ($null))==1);
	 //  @line: 515
	 call r1340 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r2338));
	 goto Block384;
	 //  @line: 516
Block384:
	 assert ($neref((r1340), ($null))==1);
	 //  @line: 516
	 call $z0341 := boolean$javaUtilEx.Iterator$hasNext$2254((r1340));
	 goto Block385;
	 //  @line: 516
Block385:
	 goto Block386, Block388;
	 //  @line: 516
Block386:
	 assume ($eqint(($z0341), (0))==1);
	 goto Block387;
	 //  @line: 516
Block388:
	 //  @line: 516
	 assume ($negInt(($eqint(($z0341), (0))))==1);
	 assert ($neref((r1340), ($null))==1);
	 //  @line: 517
	 call $r3342 := java.lang.Object$javaUtilEx.Iterator$next$2255((r1340));
	 //  @line: 517
	$r4343 := $r3342;
	 assert ($neref(($r4343), ($null))==1);
	 //  @line: 517
	 call $i0344 := int$javaUtilEx.Map$Entry$hashCode$2551(($r4343));
	 //  @line: 517
	i1345 := $addint((i1345), ($i0344));
	 goto Block384;
	 //  @line: 518
Block387:
	 //  @line: 518
	__ret := i1345;
	 return;
}


	 //  @line: 648
// <javaUtilEx.AbstractMap$SimpleEntry: java.lang.Object setValue(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$setValue$2590(__this : ref, $param_0 : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r2425 : ref;
var r1426 : ref;
var r0424 : ref;
Block448:
	r0424 := __this;
	r1426 := $param_0;
	 assert ($neref((r0424), ($null))==1);
	 //  @line: 649
	r2425 := $HeapVar[r0424, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304];
	 assert ($neref((r0424), ($null))==1);
	 //  @line: 650
	$HeapVar[r0424, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304] := r1426;
	 //  @line: 651
	__ret := r2425;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $gtref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 126
// <javaUtilEx.AbstractCollection: boolean add(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractCollection$add$2233(__this : ref, $param_0 : ref) returns (__ret : int, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $r215 : ref;
var r016 : ref;
var r117 : ref;

 //temp local variables 

	 //  @line: 126
Block42:
	$Exep0 := $null;
	 goto Block43;
Block43:
	r016 := __this;
	r117 := $param_0;
	 //  @line: 127
	$r215 := $newvariable((44));
	 assume ($neref(($newvariable((44))), ($null))==1);
	 assert ($neref(($r215), ($null))==1);
	 //  @line: 127
	 call void$javaUtilEx.UnsupportedOperationException$$la$init$ra$$2257(($r215));
	 goto Block45;
Block45:
	$Exep0 := $r215;
	 return;
}


	 //  @line: 803
// <javaUtilEx.HashMap$HashIterator: boolean hasNext()>
procedure boolean$javaUtilEx.HashMap$HashIterator$hasNext$2768(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r01086 : ref;
var $z01089 : int;
var $r11087 : ref;
Block1112:
	r01086 := __this;
	 assert ($neref((r01086), ($null))==1);
	 //  @line: 804
	$r11087 := $HeapVar[r01086, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$next318];
	 goto Block1113;
	 //  @line: 804
Block1113:
	 goto Block1114, Block1116;
	 //  @line: 804
Block1114:
	 assume ($eqref(($r11087), ($null))==1);
	 goto Block1115;
	 //  @line: 804
Block1116:
	 //  @line: 804
	 assume ($negInt(($eqref(($r11087), ($null))))==1);
	 //  @line: 804
	$z01089 := 1;
	 goto Block1117;
	 //  @line: 804
Block1115:
	 //  @line: 804
	$z01089 := 0;
	 goto Block1117;
	 //  @line: 804
Block1117:
	 //  @line: 804
	__ret := $z01089;
	 return;
}


// <java.lang.Float: boolean isNaN(float)>
procedure boolean$java.lang.Float$isNaN$718($param_0 : realVar) returns (__ret : int);



	 //  @line: 83
// <javaUtilEx.AbstractMap: int size()>
procedure int$javaUtilEx.AbstractMap$size$2500(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0213 : ref;
var $i0215 : int;
var $r1214 : ref;
Block215:
	r0213 := __this;
	 assert ($neref((r0213), ($null))==1);
	 //  @line: 84
	 call $r1214 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0213));
	 assert ($neref(($r1214), ($null))==1);
	 //  @line: 84
	 call $i0215 := int$javaUtilEx.Set$size$2518(($r1214));
	 //  @line: 84
	__ret := $i0215;
	 return;
}


	 //  @line: 887
// <javaUtilEx.HashMap$KeySet: void <init>(javaUtilEx.HashMap,javaUtilEx.HashMap$1)>
procedure void$javaUtilEx.HashMap$KeySet$$la$init$ra$$2741(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r1974 : ref;
var r0973 : ref;
var r2975 : ref;
Block1022:
	r0973 := __this;
	r1974 := $param_0;
	r2975 := $param_1;
	 assert ($neref((r0973), ($null))==1);
	 //  @line: 888
	 call void$javaUtilEx.HashMap$KeySet$$la$init$ra$$2733((r0973), (r1974));
	 return;
}


	 //  @line: 981
// <javaUtilEx.HashMap$EntrySet: void <init>(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$EntrySet$$la$init$ra$$2742(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0976 : ref;
var r1977 : ref;
Block1023:
	r0976 := __this;
	r1977 := $param_0;
	 assert ($neref((r0976), ($null))==1);
	 //  @line: 982
	$HeapVar[r0976, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314] := r1977;
	 assert ($neref((r0976), ($null))==1);
	 //  @line: 982
	 call void$javaUtilEx.AbstractSet$$la$init$ra$$2495((r0976));
	 return;
}


	 //  @line: 767
// <javaUtilEx.HashMap: void addEntry(int,java.lang.Object,java.lang.Object,int)>
procedure void$javaUtilEx.HashMap$addEntry$2634(__this : ref, $param_0 : int, $param_1 : ref, $param_2 : ref, $param_3 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r3820 : ref;
var $r5821 : ref;
var i0822 : int;
var $r6825 : [int]ref;
var r2824 : ref;
var $r4819 : [int]ref;
var r0817 : ref;
var $r7829 : [int]ref;
var $i3827 : int;
var $i4828 : int;
var $i6831 : int;
var $i2826 : int;
var r1823 : ref;
var i1818 : int;
var $i5830 : int;
Block883:
	r0817 := __this;
	i0822 := $param_0;
	r1823 := $param_1;
	r2824 := $param_2;
	i1818 := $param_3;
	 assert ($neref((r0817), ($null))==1);
	 //  @line: 768
	$r4819 := $HeapVar[r0817, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1818), (0))==1);
	 assert ($ltint((i1818), ($refArrSize[$r4819[$arrSizeIdx]]))==1);
	 //  @line: 768
	r3820 := $r4819[i1818];
	 assert ($neref((r0817), ($null))==1);
	 //  @line: 769
	$r6825 := $HeapVar[r0817, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 769
	$r5821 := $newvariable((884));
	 assume ($neref(($newvariable((884))), ($null))==1);
	 assert ($neref(($r5821), ($null))==1);
	 //  @line: 769
	 call void$javaUtilEx.HashMap$Entry$$la$init$ra$$2643(($r5821), (i0822), (r1823), (r2824), (r3820));
	 assert ($geint((i1818), (0))==1);
	 assert ($ltint((i1818), ($refArrSize[$r6825[$arrSizeIdx]]))==1);
	 //  @line: 769
	$r6825[i1818] := $r5821;
	 assert ($neref((r0817), ($null))==1);
	 //  @line: 770
	$i2826 := $HeapVar[r0817, int$javaUtilEx.HashMap$size0];
	 //  @line: 770
	$i3827 := $addint(($i2826), (1));
	 assert ($neref((r0817), ($null))==1);
	 //  @line: 770
	$HeapVar[r0817, int$javaUtilEx.HashMap$size0] := $i3827;
	 assert ($neref((r0817), ($null))==1);
	 //  @line: 770
	$i4828 := $HeapVar[r0817, int$javaUtilEx.HashMap$threshold0];
	 goto Block885;
	 //  @line: 770
Block885:
	 goto Block888, Block886;
	 //  @line: 770
Block888:
	 //  @line: 770
	 assume ($negInt(($ltint(($i2826), ($i4828))))==1);
	 assert ($neref((r0817), ($null))==1);
	 //  @line: 771
	$r7829 := $HeapVar[r0817, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 771
	$i5830 := $refArrSize[$r7829[$arrSizeIdx]];
	 //  @line: 771
	$i6831 := $mulint((2), ($i5830));
	 assert ($neref((r0817), ($null))==1);
	 //  @line: 771
	 call void$javaUtilEx.HashMap$resize$2624((r0817), ($i6831));
	 goto Block887;
	 //  @line: 770
Block886:
	 assume ($ltint(($i2826), ($i4828))==1);
	 goto Block887;
	 //  @line: 772
Block887:
	 return;
}


	 //  @line: 533
// <javaUtilEx.AbstractMap: java.lang.String toString()>
procedure java.lang.String$javaUtilEx.AbstractMap$toString$2514(__this : ref) returns (__ret : ref)
  modifies $stringSize;
  requires ($neref((__this), ($null))==1);
 {
var $z1363 : int;
var r5359 : ref;
var $r6347 : ref;
var r1349 : ref;
var r2352 : ref;
var r3355 : ref;
var r0346 : ref;
var $r7351 : ref;
var $r15366 : ref;
var $r14365 : ref;
var $r16369 : ref;
var $r9354 : ref;
var r4357 : ref;
var $z0350 : int;
var $r17370 : ref;

 //temp local variables 
var $freshlocal2 : ref;
var $freshlocal4 : ref;
var $freshlocal1 : ref;
var $freshlocal3 : ref;
var $freshlocal0 : ref;

Block389:
	r0346 := __this;
	 assert ($neref((r0346), ($null))==1);
	 //  @line: 534
	 call $r6347 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0346));
	 assert ($neref(($r6347), ($null))==1);
	 //  @line: 534
	 call r1349 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r6347));
	 assert ($neref((r1349), ($null))==1);
	 //  @line: 535
	 call $z0350 := boolean$javaUtilEx.Iterator$hasNext$2254((r1349));
	 goto Block390;
	 //  @line: 535
Block390:
	 goto Block393, Block391;
	 //  @line: 535
Block393:
	 //  @line: 535
	 assume ($negInt(($neint(($z0350), (0))))==1);
	$stringSize[$fresh7] := 2;
	 //  @line: 536
	__ret := $fresh7;
	 return;
	 //  @line: 535
Block391:
	 assume ($neint(($z0350), (0))==1);
	 goto Block392;
	 //  @line: 538
Block392:
	 //  @line: 538
	$r7351 := $newvariable((394));
	 assume ($neref(($newvariable((394))), ($null))==1);
	 goto Block395;
	 //  @line: 538
Block395:
	 assert ($neref(($r7351), ($null))==1);
	 //  @line: 538
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r7351));
	 //  @line: 538
	r2352 := $r7351;
	 assert ($neref((r2352), ($null))==1);
	 //  @line: 539
	 call $freshlocal0 := java.lang.StringBuilder$java.lang.StringBuilder$append$2273((r2352), (123));
	 goto Block396;
	 //  @line: 541
Block396:
	 assert ($neref((r1349), ($null))==1);
	 //  @line: 541
	 call $r9354 := java.lang.Object$javaUtilEx.Iterator$next$2255((r1349));
	 //  @line: 541
	r3355 := $r9354;
	 assert ($neref((r3355), ($null))==1);
	 //  @line: 542
	 call r4357 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r3355));
	 assert ($neref((r3355), ($null))==1);
	 //  @line: 543
	 call r5359 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r3355));
	 goto Block397;
	 //  @line: 544
Block397:
	 goto Block400, Block398;
	 //  @line: 544
Block400:
	 //  @line: 544
	 assume ($negInt(($neref((r4357), (r0346))))==1);
	$stringSize[$fresh8] := 10;
	 //  @line: 547
	$r16369 := $fresh8;
	 goto Block401;
	 //  @line: 544
Block398:
	 assume ($neref((r4357), (r0346))==1);
	 goto Block399;
	 //  @line: 544
Block401:
	 assert ($neref((r2352), ($null))==1);
	 //  @line: 544
	 call $freshlocal1 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265((r2352), ($r16369));
	 goto Block402;
	 //  @line: 547
Block399:
	 //  @line: 547
	$r16369 := r4357;
	 goto Block401;
	 //  @line: 545
Block402:
	 assert ($neref((r2352), ($null))==1);
	 //  @line: 545
	 call $freshlocal2 := java.lang.StringBuilder$java.lang.StringBuilder$append$2273((r2352), (61));
	 goto Block403;
	 //  @line: 546
Block403:
	 goto Block406, Block404;
	 //  @line: 546
Block406:
	 //  @line: 546
	 assume ($negInt(($neref((r5359), (r0346))))==1);
	$stringSize[$fresh8] := 10;
	 //  @line: 548
	$r17370 := $fresh8;
	 goto Block407;
	 //  @line: 546
Block404:
	 assume ($neref((r5359), (r0346))==1);
	 goto Block405;
	 //  @line: 546
Block407:
	 assert ($neref((r2352), ($null))==1);
	 //  @line: 546
	 call $freshlocal3 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265((r2352), ($r17370));
	 goto Block408;
	 //  @line: 548
Block405:
	 //  @line: 548
	$r17370 := r5359;
	 goto Block407;
	 //  @line: 547
Block408:
	 assert ($neref((r1349), ($null))==1);
	 //  @line: 547
	 call $z1363 := boolean$javaUtilEx.Iterator$hasNext$2254((r1349));
	 goto Block409;
	 //  @line: 547
Block409:
	 goto Block412, Block410;
	 //  @line: 547
Block412:
	 //  @line: 547
	 assume ($negInt(($neint(($z1363), (0))))==1);
	 assert ($neref((r2352), ($null))==1);
	 //  @line: 548
	 call $r14365 := java.lang.StringBuilder$java.lang.StringBuilder$append$2273((r2352), (125));
	 assert ($neref(($r14365), ($null))==1);
	 //  @line: 548
	 call $r15366 := java.lang.String$java.lang.StringBuilder$toString$2299(($r14365));
	 //  @line: 548
	__ret := $r15366;
	 return;
	 //  @line: 547
Block410:
	 assume ($neint(($z1363), (0))==1);
	 goto Block411;
	 //  @line: 549
Block411:
	$stringSize[$fresh6] := 2;
	 assert ($neref((r2352), ($null))==1);
	 //  @line: 549
	 call $freshlocal4 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266((r2352), ($fresh6));
	 goto Block413;
	 //  @line: 550
Block413:
	 goto Block396;
}


	 //  @line: 1002
// <javaUtilEx.HashMap$EntrySet: java.lang.Object[] toArray()>
procedure java.lang.Object$lp$$rp$$javaUtilEx.HashMap$EntrySet$toArray$2748(__this : ref) returns (__ret : [int]ref)
  modifies $refArrSize;
  requires ($neref((__this), ($null))==1);
 {
var $r31004 : ref;
var i21013 : int;
var $i11011 : int;
var $r41012 : ref;
var $z01010 : int;
var r11006 : [int]ref;
var r01003 : ref;
var $i01005 : int;
var r21008 : ref;
Block1047:
	r01003 := __this;
	 assert ($neref((r01003), ($null))==1);
	 //  @line: 1003
	$r31004 := $HeapVar[r01003, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314];
	 assert ($neref(($r31004), ($null))==1);
	 //  @line: 1003
	$i01005 := $HeapVar[$r31004, int$javaUtilEx.HashMap$size0];
	 //  @line: 1003
	r11006 := $reftorefarr(($newvariable((1048))));
	$refArrSize[$reftorefarr(($newvariable((1048))))[$arrSizeIdx]] := $i01005;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((1048))))), ($refArrNull))))==1);
	 assert ($neref((r01003), ($null))==1);
	 //  @line: 1004
	 call r21008 := javaUtilEx.Iterator$javaUtilEx.HashMap$EntrySet$iterator$2743((r01003));
	 //  @line: 1005
	i21013 := 0;
	 goto Block1049;
	 //  @line: 1006
Block1049:
	 assert ($neref((r21008), ($null))==1);
	 //  @line: 1006
	 call $z01010 := boolean$javaUtilEx.Iterator$hasNext$2254((r21008));
	 goto Block1050;
	 //  @line: 1006
Block1050:
	 goto Block1053, Block1051;
	 //  @line: 1006
Block1053:
	 //  @line: 1006
	 assume ($negInt(($eqint(($z01010), (0))))==1);
	 //  @line: 1007
	$i11011 := i21013;
	 //  @line: 1007
	i21013 := $addint((i21013), (1));
	 assert ($neref((r21008), ($null))==1);
	 //  @line: 1007
	 call $r41012 := java.lang.Object$javaUtilEx.Iterator$next$2255((r21008));
	 assert ($geint(($i11011), (0))==1);
	 assert ($ltint(($i11011), ($refArrSize[r11006[$arrSizeIdx]]))==1);
	 //  @line: 1007
	r11006[$i11011] := $r41012;
	 goto Block1049;
	 //  @line: 1006
Block1051:
	 assume ($eqint(($z01010), (0))==1);
	 goto Block1052;
	 //  @line: 1008
Block1052:
	 //  @line: 1008
	__ret := r11006;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



	 //  @line: 74
// <javaUtilEx.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>
procedure void$javaUtilEx.IllegalStateException$$la$init$ra$$2775(__this : ref, $param_0 : ref, $param_1 : ref)  requires ($neref((__this), ($null))==1);
 {
var r11125 : ref;
var r21126 : ref;
var r01124 : ref;
Block1164:
	r01124 := __this;
	r11125 := $param_0;
	r21126 := $param_1;
	 assert ($neref((r01124), ($null))==1);
	 //  @line: 75
	 call void$java.lang.RuntimeException$$la$init$ra$$762((r01124), (r11125), (r21126));
	 return;
}


	 //  @line: 298
// <javaUtilEx.AbstractCollection: void clear()>
procedure void$javaUtilEx.AbstractCollection$clear$2239(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r163 : ref;
var $z064 : int;
var r061 : ref;

 //temp local variables 
var $freshlocal0 : ref;

Block106:
	r061 := __this;
	 assert ($neref((r061), ($null))==1);
	 //  @line: 299
	 call r163 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r061));
	 goto Block107;
	 //  @line: 300
Block107:
	 assert ($neref((r163), ($null))==1);
	 //  @line: 300
	 call $z064 := boolean$javaUtilEx.Iterator$hasNext$2254((r163));
	 goto Block108;
	 //  @line: 300
Block108:
	 goto Block111, Block109;
	 //  @line: 300
Block111:
	 //  @line: 300
	 assume ($negInt(($eqint(($z064), (0))))==1);
	 assert ($neref((r163), ($null))==1);
	 //  @line: 301
	 call $freshlocal0 := java.lang.Object$javaUtilEx.Iterator$next$2255((r163));
	 assert ($neref((r163), ($null))==1);
	 //  @line: 302
	 call void$javaUtilEx.Iterator$remove$2256((r163));
	 goto Block107;
	 //  @line: 300
Block109:
	 assume ($eqint(($z064), (0))==1);
	 goto Block110;
	 //  @line: 304
Block110:
	 return;
}


// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



	 //  @line: 839
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: java.lang.String toString()>
procedure java.lang.String$javaUtilEx.AbstractMap$SimpleImmutableEntry$toString$2601(__this : ref) returns (__ret : ref)
  modifies $stringSize;
  requires ($neref((__this), ($null))==1);
 {
var $r5500 : ref;
var $r1495 : ref;
var $r3498 : ref;
var r0496 : ref;
var $r4499 : ref;
var $r2497 : ref;
var $r6501 : ref;
var $r7502 : ref;
Block513:
	r0496 := __this;
	 //  @line: 840
	$r1495 := $newvariable((514));
	 assume ($neref(($newvariable((514))), ($null))==1);
	 assert ($neref(($r1495), ($null))==1);
	 //  @line: 840
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r1495));
	 assert ($neref((r0496), ($null))==1);
	 //  @line: 840
	$r2497 := $HeapVar[r0496, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305];
	 assert ($neref(($r1495), ($null))==1);
	 //  @line: 840
	 call $r3498 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265(($r1495), ($r2497));
	$stringSize[$fresh9] := 1;
	 assert ($neref(($r3498), ($null))==1);
	 //  @line: 840
	 call $r4499 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r3498), ($fresh9));
	 assert ($neref((r0496), ($null))==1);
	 //  @line: 840
	$r5500 := $HeapVar[r0496, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306];
	 assert ($neref(($r4499), ($null))==1);
	 //  @line: 840
	 call $r6501 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265(($r4499), ($r5500));
	 assert ($neref(($r6501), ($null))==1);
	 //  @line: 840
	 call $r7502 := java.lang.String$java.lang.StringBuilder$toString$2299(($r6501));
	 //  @line: 840
	__ret := $r7502;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ltreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 421
// <javaUtilEx.AbstractMap$2: boolean isEmpty()>
procedure boolean$javaUtilEx.AbstractMap$2$isEmpty$2583(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r1405 : ref;
var r0404 : ref;
var $z0406 : int;
Block441:
	r0404 := __this;
	 assert ($neref((r0404), ($null))==1);
	 //  @line: 422
	$r1405 := $HeapVar[r0404, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$2$this$0302];
	 assert ($neref(($r1405), ($null))==1);
	 //  @line: 422
	 call $z0406 := boolean$javaUtilEx.AbstractMap$isEmpty$2501(($r1405));
	 //  @line: 422
	__ret := $z0406;
	 return;
}


	 //  @line: 54
// <javaUtilEx.IllegalStateException: void <init>(java.lang.String)>
procedure void$javaUtilEx.IllegalStateException$$la$init$ra$$2774(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r11123 : ref;
var r01122 : ref;
Block1163:
	r01122 := __this;
	r11123 := $param_0;
	 assert ($neref((r01122), ($null))==1);
	 //  @line: 55
	 call void$java.lang.RuntimeException$$la$init$ra$$761((r01122), (r11123));
	 return;
}


	 //  @line: 353
// <javaUtilEx.AbstractMap$1: boolean contains(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$1$contains$2492(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r1133 : ref;
var r0132 : ref;
var $r2134 : ref;
var $z0135 : int;
Block148:
	r0132 := __this;
	r1133 := $param_0;
	 assert ($neref((r0132), ($null))==1);
	 //  @line: 354
	$r2134 := $HeapVar[r0132, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r2134), ($null))==1);
	 //  @line: 354
	 call $z0135 := boolean$javaUtilEx.AbstractMap$containsKey$2503(($r2134), (r1133));
	 //  @line: 354
	__ret := $z0135;
	 return;
}


	 //  @line: 238
// <javaUtilEx.AbstractCollection: boolean removeAll(javaUtilEx.Collection)>
procedure boolean$javaUtilEx.AbstractCollection$removeAll$2237(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r349 : ref;
var z251 : int;
var $z047 : int;
var r044 : ref;
var r148 : ref;
var $z150 : int;
var r246 : ref;
Block88:
	r044 := __this;
	r148 := $param_0;
	 //  @line: 239
	z251 := 0;
	 assert ($neref((r044), ($null))==1);
	 //  @line: 240
	 call r246 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r044));
	 goto Block89;
	 //  @line: 241
Block89:
	 assert ($neref((r246), ($null))==1);
	 //  @line: 241
	 call $z047 := boolean$javaUtilEx.Iterator$hasNext$2254((r246));
	 goto Block90;
	 //  @line: 241
Block90:
	 goto Block91, Block93;
	 //  @line: 241
Block91:
	 assume ($eqint(($z047), (0))==1);
	 goto Block92;
	 //  @line: 241
Block93:
	 //  @line: 241
	 assume ($negInt(($eqint(($z047), (0))))==1);
	 assert ($neref((r246), ($null))==1);
	 //  @line: 242
	 call $r349 := java.lang.Object$javaUtilEx.Iterator$next$2255((r246));
	 assert ($neref((r148), ($null))==1);
	 //  @line: 242
	 call $z150 := boolean$javaUtilEx.Collection$contains$2243((r148), ($r349));
	 goto Block94;
	 //  @line: 247
Block92:
	 //  @line: 247
	__ret := z251;
	 return;
	 //  @line: 242
Block94:
	 goto Block95, Block96;
	 //  @line: 242
Block95:
	 assume ($eqint(($z150), (0))==1);
	 goto Block89;
	 //  @line: 242
Block96:
	 //  @line: 242
	 assume ($negInt(($eqint(($z150), (0))))==1);
	 assert ($neref((r246), ($null))==1);
	 //  @line: 243
	 call void$javaUtilEx.Iterator$remove$2256((r246));
	 //  @line: 244
	z251 := 1;
	 goto Block89;
}


	 //  @line: 313
// <javaUtilEx.HashMap: java.lang.Object get(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.HashMap$get$2616(__this : ref, $param_0 : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $i1575 : int;
var $i4584 : int;
var $r7589 : ref;
var $i2580 : int;
var $z0588 : int;
var r0578 : ref;
var r1574 : ref;
var $r5585 : ref;
var $i3582 : int;
var i0577 : int;
var r8590 : ref;
var r2586 : ref;
var $r4581 : [int]ref;
var $r3579 : [int]ref;
var $r6587 : ref;
Block583:
	r0578 := __this;
	r1574 := $param_0;
	 goto Block584;
	 //  @line: 314
Block584:
	 goto Block585, Block587;
	 //  @line: 314
Block585:
	 assume ($neref((r1574), ($null))==1);
	 goto Block586;
	 //  @line: 314
Block587:
	 //  @line: 314
	 assume ($negInt(($neref((r1574), ($null))))==1);
	 assert ($neref((r0578), ($null))==1);
	 //  @line: 315
	 call $r7589 := java.lang.Object$javaUtilEx.HashMap$getForNullKey$2617((r0578));
	 //  @line: 315
	__ret := $r7589;
	 return;
	 //  @line: 316
Block586:
	 assert ($neref((r1574), ($null))==1);
	 //  @line: 316
	 call $i1575 := int$java.lang.Object$hashCode$31((r1574));
	 goto Block588;
	 //  @line: 316
Block588:
	 //  @line: 316
	 call i0577 := int$javaUtilEx.HashMap$hash$2612(($i1575));
	 assert ($neref((r0578), ($null))==1);
	 //  @line: 317
	$r4581 := $HeapVar[r0578, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($neref((r0578), ($null))==1);
	 //  @line: 317
	$r3579 := $HeapVar[r0578, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 317
	$i2580 := $refArrSize[$r3579[$arrSizeIdx]];
	 //  @line: 317
	 call $i3582 := int$javaUtilEx.HashMap$indexFor$2613((i0577), ($i2580));
	 assert ($geint(($i3582), (0))==1);
	 assert ($ltint(($i3582), ($refArrSize[$r4581[$arrSizeIdx]]))==1);
	 //  @line: 317
	r8590 := $r4581[$i3582];
	 goto Block589;
	 //  @line: 318
Block589:
	 goto Block590, Block592;
	 //  @line: 318
Block590:
	 assume ($eqref((r8590), ($null))==1);
	 goto Block591;
	 //  @line: 318
Block592:
	 //  @line: 318
	 assume ($negInt(($eqref((r8590), ($null))))==1);
	 assert ($neref((r8590), ($null))==1);
	 //  @line: 321
	$i4584 := $HeapVar[r8590, int$javaUtilEx.HashMap$Entry$hash0];
	 goto Block593;
	 //  @line: 324
Block591:
	 //  @line: 324
	__ret := $null;
	 return;
	 //  @line: 321
Block593:
	 goto Block594, Block596;
	 //  @line: 321
Block594:
	 assume ($neint(($i4584), (i0577))==1);
	 goto Block595;
	 //  @line: 321
Block596:
	 //  @line: 321
	 assume ($negInt(($neint(($i4584), (i0577))))==1);
	 assert ($neref((r8590), ($null))==1);
	 //  @line: 318
	$r5585 := $HeapVar[r8590, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 //  @line: 318
	r2586 := $r5585;
	 goto Block597;
	 //  @line: 319
Block595:
	 assert ($neref((r8590), ($null))==1);
	 //  @line: 319
	r8590 := $HeapVar[r8590, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block604;
	 //  @line: 318
Block597:
	 goto Block600, Block598;
	 //  @line: 319
Block604:
	 goto Block589;
	 //  @line: 318
Block600:
	 //  @line: 318
	 assume ($negInt(($eqref(($r5585), (r1574))))==1);
	 assert ($neref((r1574), ($null))==1);
	 //  @line: 322
	 call $z0588 := boolean$java.lang.Object$equals$32((r1574), (r2586));
	 goto Block601;
	 //  @line: 318
Block598:
	 assume ($eqref(($r5585), (r1574))==1);
	 goto Block599;
	 //  @line: 322
Block601:
	 goto Block603, Block602;
	 //  @line: 322
Block599:
	 assert ($neref((r8590), ($null))==1);
	 //  @line: 322
	$r6587 := $HeapVar[r8590, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 //  @line: 322
	__ret := $r6587;
	 return;
	 //  @line: 322
Block603:
	 //  @line: 322
	 assume ($negInt(($eqint(($z0588), (0))))==1);
	 goto Block599;
	 //  @line: 322
Block602:
	 assume ($eqint(($z0588), (0))==1);
	 goto Block595;
}


// procedure is generated by joogie.
function {:inline true} $addreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $gtreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 513
// <javaUtilEx.HashMap: void putAll(javaUtilEx.Map)>
procedure void$javaUtilEx.HashMap$putAll$2626(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $r2704 : ref;
var $f0713 : realVar;
var $r8718 : [int]ref;
var r0702 : ref;
var i0701 : int;
var r10723 : ref;
var $r7717 : [int]ref;
var $i2719 : int;
var $r3708 : ref;
var $r5711 : ref;
var r9722 : ref;
var $z0707 : int;
var $f3716 : realVar;
var $r4710 : ref;
var r1699 : ref;
var $f1714 : realVar;
var $i1703 : int;
var i4721 : int;
var i3720 : int;
var $f2715 : realVar;

 //temp local variables 
var $freshlocal0 : ref;

Block735:
	r0702 := __this;
	r1699 := $param_0;
	 assert ($neref((r1699), ($null))==1);
	 //  @line: 514
	 call i0701 := int$javaUtilEx.Map$size$2533((r1699));
	 goto Block736;
	 //  @line: 515
Block736:
	 goto Block739, Block737;
	 //  @line: 515
Block739:
	 //  @line: 515
	 assume ($negInt(($neint((i0701), (0))))==1);
	 return;
	 //  @line: 515
Block737:
	 assume ($neint((i0701), (0))==1);
	 goto Block738;
	 //  @line: 527
Block738:
	 assert ($neref((r0702), ($null))==1);
	 //  @line: 527
	$i1703 := $HeapVar[r0702, int$javaUtilEx.HashMap$threshold0];
	 goto Block740;
	 //  @line: 527
Block740:
	 goto Block741, Block743;
	 //  @line: 527
Block741:
	 assume ($leint((i0701), ($i1703))==1);
	 goto Block742;
	 //  @line: 527
Block743:
	 //  @line: 527
	 assume ($negInt(($leint((i0701), ($i1703))))==1);
	 //  @line: 528
	$f1714 := $inttoreal((i0701));
	 assert ($neref((r0702), ($null))==1);
	 //  @line: 528
	$f0713 := $HeapVar[r0702, float$javaUtilEx.HashMap$loadFactor0];
	 //  @line: 528
	$f2715 := $divreal(($f1714), ($f0713));
	 //  @line: 528
	$f3716 := $addreal(($f2715), ($fresh14));
	 //  @line: 528
	i3720 := $realtoint(($f3716));
	 goto Block744;
	 //  @line: 538
Block742:
	 assert ($neref((r1699), ($null))==1);
	 //  @line: 538
	 call $r2704 := javaUtilEx.Set$javaUtilEx.Map$entrySet$2544((r1699));
	 assert ($neref(($r2704), ($null))==1);
	 //  @line: 538
	 call r9722 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r2704));
	 goto Block756;
	 //  @line: 529
Block744:
	 goto Block745, Block747;
	 //  @line: 538
Block756:
	 assert ($neref((r9722), ($null))==1);
	 //  @line: 538
	 call $z0707 := boolean$javaUtilEx.Iterator$hasNext$2254((r9722));
	 goto Block757;
	 //  @line: 529
Block745:
	 assume ($leint((i3720), (1073741824))==1);
	 goto Block746;
	 //  @line: 529
Block747:
	 //  @line: 529
	 assume ($negInt(($leint((i3720), (1073741824))))==1);
	 //  @line: 530
	i3720 := 1073741824;
	 goto Block746;
	 //  @line: 538
Block757:
	 goto Block760, Block758;
	 //  @line: 531
Block746:
	 assert ($neref((r0702), ($null))==1);
	 //  @line: 531
	$r7717 := $HeapVar[r0702, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 531
	i4721 := $refArrSize[$r7717[$arrSizeIdx]];
	 goto Block748;
	 //  @line: 538
Block760:
	 //  @line: 538
	 assume ($negInt(($eqint(($z0707), (0))))==1);
	 assert ($neref((r9722), ($null))==1);
	 //  @line: 539
	 call $r3708 := java.lang.Object$javaUtilEx.Iterator$next$2255((r9722));
	 //  @line: 539
	r10723 := $r3708;
	 assert ($neref((r10723), ($null))==1);
	 //  @line: 540
	 call $r4710 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r10723));
	 assert ($neref((r10723), ($null))==1);
	 //  @line: 540
	 call $r5711 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r10723));
	 assert ($neref((r0702), ($null))==1);
	 //  @line: 540
	 call $freshlocal0 := java.lang.Object$javaUtilEx.HashMap$put$2620((r0702), ($r4710), ($r5711));
	 goto Block756;
	 //  @line: 538
Block758:
	 assume ($eqint(($z0707), (0))==1);
	 goto Block759;
	 //  @line: 532
Block748:
	 goto Block749, Block751;
	 //  @line: 542
Block759:
	 return;
	 //  @line: 532
Block749:
	 assume ($geint((i4721), (i3720))==1);
	 goto Block750;
	 //  @line: 532
Block751:
	 //  @line: 532
	 assume ($negInt(($geint((i4721), (i3720))))==1);
	 //  @line: 533
	i4721 := $shlint((i4721), (1));
	 goto Block748;
	 //  @line: 534
Block750:
	 assert ($neref((r0702), ($null))==1);
	 //  @line: 534
	$r8718 := $HeapVar[r0702, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 goto Block752;
	 //  @line: 534
Block752:
	 //  @line: 534
	$i2719 := $refArrSize[$r8718[$arrSizeIdx]];
	 goto Block753;
	 //  @line: 534
Block753:
	 goto Block755, Block754;
	 //  @line: 534
Block755:
	 //  @line: 534
	 assume ($negInt(($leint((i4721), ($i2719))))==1);
	 assert ($neref((r0702), ($null))==1);
	 //  @line: 535
	 call void$javaUtilEx.HashMap$resize$2624((r0702), (i4721));
	 goto Block742;
	 //  @line: 534
Block754:
	 assume ($leint((i4721), ($i2719))==1);
	 goto Block742;
}


	 //  @line: 83
// <javaUtilEx.ConcurrentModificationException: void <init>(java.lang.String)>
procedure void$javaUtilEx.ConcurrentModificationException$$la$init$ra$$2603(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r0504 : ref;
var r1505 : ref;
Block516:
	r0504 := __this;
	r1505 := $param_0;
	 assert ($neref((r0504), ($null))==1);
	 //  @line: 84
	 call void$java.lang.RuntimeException$$la$init$ra$$761((r0504), (r1505));
	 return;
}


	 //  @line: 357
// <javaUtilEx.AbstractMap$1: java.lang.Object[] toArray()>
procedure java.lang.Object$lp$$rp$$javaUtilEx.AbstractMap$1$toArray$2493(__this : ref) returns (__ret : [int]ref)
  modifies $refArrSize;
  requires ($neref((__this), ($null))==1);
 {
var r0136 : ref;
var $z0145 : int;
var $r8149 : ref;
var $r5141 : ref;
var r2143 : ref;
var $r6147 : ref;
var r1139 : [int]ref;
var i2150 : int;
var $r3137 : ref;
var $i0138 : int;
var $r7148 : ref;
var $r4140 : ref;
var $i1146 : int;
Block149:
	r0136 := __this;
	 assert ($neref((r0136), ($null))==1);
	 //  @line: 358
	$r3137 := $HeapVar[r0136, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r3137), ($null))==1);
	 //  @line: 358
	 call $i0138 := int$javaUtilEx.AbstractMap$size$2500(($r3137));
	 //  @line: 358
	r1139 := $reftorefarr(($newvariable((150))));
	$refArrSize[$reftorefarr(($newvariable((150))))[$arrSizeIdx]] := $i0138;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((150))))), ($refArrNull))))==1);
	 assert ($neref((r0136), ($null))==1);
	 //  @line: 359
	$r4140 := $HeapVar[r0136, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$1$this$0297];
	 assert ($neref(($r4140), ($null))==1);
	 //  @line: 359
	 call $r5141 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511(($r4140));
	 assert ($neref(($r5141), ($null))==1);
	 //  @line: 359
	 call r2143 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r5141));
	 //  @line: 360
	i2150 := 0;
	 goto Block151;
	 //  @line: 361
Block151:
	 assert ($neref((r2143), ($null))==1);
	 //  @line: 361
	 call $z0145 := boolean$javaUtilEx.Iterator$hasNext$2254((r2143));
	 goto Block152;
	 //  @line: 361
Block152:
	 goto Block153, Block155;
	 //  @line: 361
Block153:
	 assume ($eqint(($z0145), (0))==1);
	 goto Block154;
	 //  @line: 361
Block155:
	 //  @line: 361
	 assume ($negInt(($eqint(($z0145), (0))))==1);
	 //  @line: 362
	$i1146 := i2150;
	 //  @line: 362
	i2150 := $addint((i2150), (1));
	 assert ($neref((r2143), ($null))==1);
	 //  @line: 362
	 call $r6147 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2143));
	 //  @line: 362
	$r7148 := $r6147;
	 assert ($neref(($r7148), ($null))==1);
	 //  @line: 362
	 call $r8149 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547(($r7148));
	 assert ($geint(($i1146), (0))==1);
	 assert ($ltint(($i1146), ($refArrSize[r1139[$arrSizeIdx]]))==1);
	 //  @line: 362
	r1139[$i1146] := $r8149;
	 goto Block151;
	 //  @line: 363
Block154:
	 //  @line: 363
	__ret := r1139;
	 return;
}


// <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
procedure java.lang.StringBuilder$java.lang.StringBuilder$append$2266(__this : ref, $param_0 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $newvariable($param00 : int) returns (__ret : ref);



	 //  @line: 397
// <javaUtilEx.AbstractMap$2: void <init>(javaUtilEx.AbstractMap)>
procedure void$javaUtilEx.AbstractMap$2$$la$init$ra$$2580(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r1398 : ref;
var r0397 : ref;
Block437:
	r0397 := __this;
	r1398 := $param_0;
	 assert ($neref((r0397), ($null))==1);
	 //  @line: 398
	$HeapVar[r0397, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$2$this$0302] := r1398;
	 assert ($neref((r0397), ($null))==1);
	 //  @line: 398
	 call void$javaUtilEx.AbstractCollection$$la$init$ra$$2228((r0397));
	 return;
}


	 //  @line: 740
// <javaUtilEx.HashMap$Entry: java.lang.String toString()>
procedure java.lang.String$javaUtilEx.HashMap$Entry$toString$2649(__this : ref) returns (__ret : ref)
  modifies $stringSize;
  requires ($neref((__this), ($null))==1);
 {
var $r2905 : ref;
var $r6909 : ref;
var r0904 : ref;
var $r1903 : ref;
var $r3906 : ref;
var $r4907 : ref;
var $r5908 : ref;
var $r7910 : ref;
Block966:
	r0904 := __this;
	 //  @line: 741
	$r1903 := $newvariable((967));
	 assume ($neref(($newvariable((967))), ($null))==1);
	 assert ($neref(($r1903), ($null))==1);
	 //  @line: 741
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r1903));
	 assert ($neref((r0904), ($null))==1);
	 //  @line: 741
	 call $r2905 := java.lang.Object$javaUtilEx.HashMap$Entry$getKey$2644((r0904));
	 assert ($neref(($r1903), ($null))==1);
	 //  @line: 741
	 call $r3906 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265(($r1903), ($r2905));
	$stringSize[$fresh9] := 1;
	 assert ($neref(($r3906), ($null))==1);
	 //  @line: 741
	 call $r4907 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r3906), ($fresh9));
	 assert ($neref((r0904), ($null))==1);
	 //  @line: 741
	 call $r5908 := java.lang.Object$javaUtilEx.HashMap$Entry$getValue$2645((r0904));
	 assert ($neref(($r4907), ($null))==1);
	 //  @line: 741
	 call $r6909 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265(($r4907), ($r5908));
	 assert ($neref(($r6909), ($null))==1);
	 //  @line: 741
	 call $r7910 := java.lang.String$java.lang.StringBuilder$toString$2299(($r6909));
	 //  @line: 741
	__ret := $r7910;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $geint(x : int, y : int) returns (__ret : int) {
if (x >= y) then 1 else 0
}


// <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
procedure java.lang.StringBuilder$java.lang.StringBuilder$append$2265(__this : ref, $param_0 : ref) returns (__ret : ref);



	 //  @line: 449
// <javaUtilEx.HashMap: void putAllForCreate(javaUtilEx.Map)>
procedure void$javaUtilEx.HashMap$putAllForCreate$2623(__this : ref, $param_0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $r7675 : ref;
var r0673 : ref;
var $z0670 : int;
var $r4667 : ref;
var r2669 : ref;
var r1666 : ref;
var $r5671 : ref;
var r3672 : ref;
var $r6674 : ref;
Block708:
	r0673 := __this;
	r1666 := $param_0;
	 assert ($neref((r1666), ($null))==1);
	 //  @line: 450
	 call $r4667 := javaUtilEx.Set$javaUtilEx.Map$entrySet$2544((r1666));
	 assert ($neref(($r4667), ($null))==1);
	 //  @line: 450
	 call r2669 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r4667));
	 goto Block709;
	 //  @line: 450
Block709:
	 assert ($neref((r2669), ($null))==1);
	 //  @line: 450
	 call $z0670 := boolean$javaUtilEx.Iterator$hasNext$2254((r2669));
	 goto Block710;
	 //  @line: 450
Block710:
	 goto Block711, Block713;
	 //  @line: 450
Block711:
	 assume ($eqint(($z0670), (0))==1);
	 goto Block712;
	 //  @line: 450
Block713:
	 //  @line: 450
	 assume ($negInt(($eqint(($z0670), (0))))==1);
	 assert ($neref((r2669), ($null))==1);
	 //  @line: 451
	 call $r5671 := java.lang.Object$javaUtilEx.Iterator$next$2255((r2669));
	 //  @line: 451
	r3672 := $r5671;
	 assert ($neref((r3672), ($null))==1);
	 //  @line: 452
	 call $r6674 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r3672));
	 assert ($neref((r3672), ($null))==1);
	 //  @line: 452
	 call $r7675 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r3672));
	 assert ($neref((r0673), ($null))==1);
	 //  @line: 452
	 call void$javaUtilEx.HashMap$putForCreate$2622((r0673), ($r6674), ($r7675));
	 goto Block709;
	 //  @line: 454
Block712:
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shlref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftointarr($param00 : ref) returns (__ret : [int]int);



	 //  @line: 403
// <javaUtilEx.AbstractMap$2$1: boolean hasNext()>
procedure boolean$javaUtilEx.AbstractMap$2$1$hasNext$2577(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r1388 : ref;
var $z0389 : int;
var r0387 : ref;
Block434:
	r0387 := __this;
	 assert ($neref((r0387), ($null))==1);
	 //  @line: 404
	$r1388 := $HeapVar[r0387, javaUtilEx.Iterator$javaUtilEx.AbstractMap$2$1$i300];
	 assert ($neref(($r1388), ($null))==1);
	 //  @line: 404
	 call $z0389 := boolean$javaUtilEx.Iterator$hasNext$2254(($r1388));
	 //  @line: 404
	__ret := $z0389;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// <java.lang.StringBuilder: java.lang.StringBuilder append(int)>
procedure java.lang.StringBuilder$java.lang.StringBuilder$append$2274(__this : ref, $param_0 : int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



	 //  @line: 92
// <javaUtilEx.AbstractMap: boolean isEmpty()>
procedure boolean$javaUtilEx.AbstractMap$isEmpty$2501(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z0219 : int;
var $i0217 : int;
var r0216 : ref;
Block216:
	r0216 := __this;
	 assert ($neref((r0216), ($null))==1);
	 //  @line: 93
	 call $i0217 := int$javaUtilEx.AbstractMap$size$2500((r0216));
	 goto Block217;
	 //  @line: 93
Block217:
	 goto Block220, Block218;
	 //  @line: 93
Block220:
	 //  @line: 93
	 assume ($negInt(($neint(($i0217), (0))))==1);
	 //  @line: 93
	$z0219 := 1;
	 goto Block221;
	 //  @line: 93
Block218:
	 assume ($neint(($i0217), (0))==1);
	 goto Block219;
	 //  @line: 93
Block221:
	 //  @line: 93
	__ret := $z0219;
	 return;
	 //  @line: 93
Block219:
	 //  @line: 93
	$z0219 := 0;
	 goto Block221;
}


	 //  @line: 977
// <javaUtilEx.HashMap: javaUtilEx.Set entrySet0()>
procedure javaUtilEx.Set$javaUtilEx.HashMap$entrySet0$2642(__this : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r3865 : ref;
var r1862 : ref;
var $r2864 : ref;
var r0861 : ref;
Block914:
	r0861 := __this;
	 assert ($neref((r0861), ($null))==1);
	 //  @line: 978
	r1862 := $HeapVar[r0861, javaUtilEx.Set$javaUtilEx.HashMap$entrySet308];
	 goto Block915;
	 //  @line: 979
Block915:
	 goto Block916, Block918;
	 //  @line: 979
Block916:
	 assume ($eqref((r1862), ($null))==1);
	 goto Block917;
	 //  @line: 979
Block918:
	 //  @line: 979
	 assume ($negInt(($eqref((r1862), ($null))))==1);
	 //  @line: 979
	$r2864 := r1862;
	 goto Block919;
	 //  @line: 979
Block917:
	 //  @line: 979
	r3865 := $newvariable((920));
	 assume ($neref(($newvariable((920))), ($null))==1);
	 goto Block921;
	 //  @line: 979
Block919:
	 //  @line: 979
	__ret := $r2864;
	 return;
Block921:
	$r2864 := r3865;
	 assert ($neref((r3865), ($null))==1);
	 //  @line: 979
	 call void$javaUtilEx.HashMap$EntrySet$$la$init$ra$$2750((r3865), (r0861), ($null));
	 assert ($neref((r0861), ($null))==1);
	 //  @line: 979
	$HeapVar[r0861, javaUtilEx.Set$javaUtilEx.HashMap$entrySet308] := r3865;
	 goto Block919;
}


	 //  @line: 714
// <javaUtilEx.HashMap$Entry: java.lang.Object setValue(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.HashMap$Entry$setValue$2646(__this : ref, $param_0 : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r2876 : ref;
var r0875 : ref;
var r1877 : ref;
Block925:
	r0875 := __this;
	r1877 := $param_0;
	 assert ($neref((r0875), ($null))==1);
	 //  @line: 715
	r2876 := $HeapVar[r0875, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 assert ($neref((r0875), ($null))==1);
	 //  @line: 716
	$HeapVar[r0875, java.lang.Object$javaUtilEx.HashMap$Entry$value310] := r1877;
	 //  @line: 717
	__ret := r2876;
	 return;
}


	 //  @line: 735
// <javaUtilEx.HashMap$Entry: int hashCode()>
procedure int$javaUtilEx.HashMap$Entry$hashCode$2648(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0892 : ref;
var $i2902 : int;
var $i1901 : int;
var $r3896 : ref;
var $r4897 : ref;
var $i0899 : int;
var $r1893 : ref;
var $r2894 : ref;
Block953:
	r0892 := __this;
	 assert ($neref((r0892), ($null))==1);
	 //  @line: 736
	$r1893 := $HeapVar[r0892, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 goto Block954;
	 //  @line: 736
Block954:
	 goto Block955, Block957;
	 //  @line: 736
Block955:
	 assume ($neref(($r1893), ($null))==1);
	 goto Block956;
	 //  @line: 736
Block957:
	 //  @line: 736
	 assume ($negInt(($neref(($r1893), ($null))))==1);
	 //  @line: 736
	$i1901 := 0;
	 goto Block958;
	 //  @line: 736
Block956:
	 assert ($neref((r0892), ($null))==1);
	 //  @line: 736
	$r2894 := $HeapVar[r0892, java.lang.Object$javaUtilEx.HashMap$Entry$key309];
	 goto Block959;
	 //  @line: 736
Block958:
	 assert ($neref((r0892), ($null))==1);
	 //  @line: 736
	$r3896 := $HeapVar[r0892, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 goto Block960;
	 //  @line: 736
Block959:
	 assert ($neref(($r2894), ($null))==1);
	 //  @line: 736
	 call $i1901 := int$java.lang.Object$hashCode$31(($r2894));
	 goto Block958;
	 //  @line: 736
Block960:
	 goto Block963, Block961;
	 //  @line: 736
Block963:
	 //  @line: 736
	 assume ($negInt(($neref(($r3896), ($null))))==1);
	 //  @line: 736
	$i2902 := 0;
	 goto Block964;
	 //  @line: 736
Block961:
	 assume ($neref(($r3896), ($null))==1);
	 goto Block962;
	 //  @line: 736
Block964:
	 //  @line: 736
	$i0899 := $xorint(($i1901), ($i2902));
	 //  @line: 736
	__ret := $i0899;
	 return;
	 //  @line: 736
Block962:
	 assert ($neref((r0892), ($null))==1);
	 //  @line: 736
	$r4897 := $HeapVar[r0892, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 goto Block965;
	 //  @line: 736
Block965:
	 assert ($neref(($r4897), ($null))==1);
	 //  @line: 736
	 call $i2902 := int$java.lang.Object$hashCode$31(($r4897));
	 goto Block964;
}


	 //  @line: 837
// <javaUtilEx.HashMap$ValueIterator: java.lang.Object next()>
procedure java.lang.Object$javaUtilEx.HashMap$ValueIterator$next$2759(__this : ref) returns (__ret : ref, $Exep1 : ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var $r21055 : ref;
var $r11054 : ref;
var r01053 : ref;

 //temp local variables 
var $caughtEx3 : ref;
var $caughtEx2 : ref;

	 //  @line: 837
Block1083:
	$caughtEx3 := $null;
	$caughtEx2 := $null;
	$Exep1 := $null;
	$Exep0 := $null;
	 goto Block1084;
Block1084:
	r01053 := __this;
	 assert ($neref((r01053), ($null))==1);
	 //  @line: 838
	 call $r11054, $caughtEx2, $caughtEx3 := javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$nextEntry$2769((r01053));
	 goto Block1085, Block1087;
Block1085:
	 assume ($neref(($caughtEx2), ($null))==1);
	 goto Block1086;
Block1087:
	 assume ($eqref(($caughtEx2), ($null))==1);
	 goto Block1088;
Block1086:
	$Exep1 := $caughtEx2;
	 return;
Block1088:
	 goto Block1089, Block1091;
Block1089:
	 assume ($neref(($caughtEx3), ($null))==1);
	 goto Block1090;
Block1091:
	 assume ($eqref(($caughtEx3), ($null))==1);
	 goto Block1092;
Block1090:
	$Exep0 := $caughtEx3;
	 return;
Block1092:
	 assert ($neref(($r11054), ($null))==1);
	 //  @line: 838
	$r21055 := $HeapVar[$r11054, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 //  @line: 838
	__ret := $r21055;
	 return;
}


	 //  @line: 266
// <javaUtilEx.HashMap: int hash(int)>
procedure int$javaUtilEx.HashMap$hash$2612($param_0 : int) returns (__ret : int) {
var i7562 : int;
var $i4559 : int;
var $i2557 : int;
var $i5560 : int;
var $i3558 : int;
var $i1556 : int;
var $i6561 : int;
var $i0555 : int;
var i8563 : int;
Block574:
	i7562 := $param_0;
	 //  @line: 267
	$i1556 := $ushrint((i7562), (20));
	 //  @line: 267
	$i0555 := $ushrint((i7562), (12));
	 //  @line: 267
	$i2557 := $xorint(($i1556), ($i0555));
	 //  @line: 267
	i8563 := $xorint((i7562), ($i2557));
	 //  @line: 268
	$i3558 := $ushrint((i8563), (7));
	 //  @line: 268
	$i5560 := $xorint((i8563), ($i3558));
	 //  @line: 268
	$i4559 := $ushrint((i8563), (4));
	 //  @line: 268
	$i6561 := $xorint(($i5560), ($i4559));
	 //  @line: 268
	__ret := $i6561;
	 return;
}


	 //  @line: 11
// <javaUtilEx.juHashMapCreateClear: javaUtilEx.HashMap createMap(int)>
procedure javaUtilEx.HashMap$javaUtilEx.juHashMapCreateClear$createMap$2779($param_0 : int) returns (__ret : ref) {
var r01135 : ref;
var $r41137 : ref;
var $i11141 : int;
var r21142 : ref;
var $r51140 : ref;
var $r31134 : ref;
var $i01138 : int;
var i21144 : int;
var r11139 : ref;

 //temp local variables 
var $freshlocal0 : ref;

Block1168:
	i21144 := $param_0;
	 //  @line: 12
	$r31134 := $newvariable((1169));
	 assume ($neref(($newvariable((1169))), ($null))==1);
	 assert ($neref(($r31134), ($null))==1);
	 //  @line: 12
	 call void$javaUtilEx.HashMap$$la$init$ra$$2609(($r31134));
	 //  @line: 12
	r01135 := $r31134;
	 goto Block1170;
	 //  @line: 13
Block1170:
	 goto Block1171, Block1173;
	 //  @line: 13
Block1171:
	 assume ($leint((i21144), (0))==1);
	 goto Block1172;
	 //  @line: 13
Block1173:
	 //  @line: 13
	 assume ($negInt(($leint((i21144), (0))))==1);
	 //  @line: 14
	$r41137 := $newvariable((1174));
	 assume ($neref(($newvariable((1174))), ($null))==1);
	 //  @line: 14
	 call $i01138 := int$javaUtilEx.Random$random$2781();
	 assert ($neref(($r41137), ($null))==1);
	 //  @line: 14
	 call void$javaUtilEx.Content$$la$init$ra$$2604(($r41137), ($i01138));
	 //  @line: 14
	r11139 := $r41137;
	 //  @line: 15
	$r51140 := $newvariable((1175));
	 assume ($neref(($newvariable((1175))), ($null))==1);
	 //  @line: 15
	 call $i11141 := int$javaUtilEx.Random$random$2781();
	 assert ($neref(($r51140), ($null))==1);
	 //  @line: 15
	 call void$javaUtilEx.Content$$la$init$ra$$2604(($r51140), ($i11141));
	 //  @line: 15
	r21142 := $r51140;
	 assert ($neref((r01135), ($null))==1);
	 //  @line: 16
	 call $freshlocal0 := java.lang.Object$javaUtilEx.HashMap$put$2620((r01135), (r11139), (r21142));
	 //  @line: 17
	i21144 := $addint((i21144), (-1));
	 goto Block1170;
	 //  @line: 19
Block1172:
	 //  @line: 19
	__ret := r01135;
	 return;
}


	 //  @line: 62
// <javaUtilEx.AbstractSet: void <init>()>
procedure void$javaUtilEx.AbstractSet$$la$init$ra$$2495(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0173 : ref;
Block168:
	r0173 := __this;
	 assert ($neref((r0173), ($null))==1);
	 //  @line: 63
	 call void$javaUtilEx.AbstractCollection$$la$init$ra$$2228((r0173));
	 return;
}


// <javaUtilEx.Collection: javaUtilEx.Iterator iterator()>
procedure javaUtilEx.Iterator$javaUtilEx.Collection$iterator$2244(__this : ref) returns (__ret : ref);



	 //  @line: 736
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: void <init>(java.lang.Object,java.lang.Object)>
procedure void$javaUtilEx.AbstractMap$SimpleImmutableEntry$$la$init$ra$$2594(__this : ref, $param_0 : ref, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r0458 : ref;
var r1459 : ref;
var r2460 : ref;
Block478:
	r0458 := __this;
	r1459 := $param_0;
	r2460 := $param_1;
	 assert ($neref((r0458), ($null))==1);
	 //  @line: 737
	 call void$java.lang.Object$$la$init$ra$$28((r0458));
	 assert ($neref((r0458), ($null))==1);
	 //  @line: 738
	$HeapVar[r0458, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$key305] := r1459;
	 assert ($neref((r0458), ($null))==1);
	 //  @line: 739
	$HeapVar[r0458, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306] := r2460;
	 return;
}


	 //  @line: 695
// <javaUtilEx.AbstractMap$SimpleEntry: int hashCode()>
procedure int$javaUtilEx.AbstractMap$SimpleEntry$hashCode$2592(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r2441 : ref;
var $r1440 : ref;
var $i0446 : int;
var r0439 : ref;
var $i1448 : int;
var $r4444 : ref;
var $r3443 : ref;
var $i2449 : int;
Block463:
	r0439 := __this;
	 assert ($neref((r0439), ($null))==1);
	 //  @line: 696
	$r1440 := $HeapVar[r0439, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303];
	 goto Block464;
	 //  @line: 696
Block464:
	 goto Block467, Block465;
	 //  @line: 696
Block467:
	 //  @line: 696
	 assume ($negInt(($neref(($r1440), ($null))))==1);
	 //  @line: 696
	$i1448 := 0;
	 goto Block468;
	 //  @line: 696
Block465:
	 assume ($neref(($r1440), ($null))==1);
	 goto Block466;
	 //  @line: 696
Block468:
	 assert ($neref((r0439), ($null))==1);
	 //  @line: 696
	$r3443 := $HeapVar[r0439, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304];
	 goto Block470;
	 //  @line: 696
Block466:
	 assert ($neref((r0439), ($null))==1);
	 //  @line: 696
	$r2441 := $HeapVar[r0439, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303];
	 goto Block469;
	 //  @line: 696
Block470:
	 goto Block471, Block473;
	 //  @line: 696
Block469:
	 assert ($neref(($r2441), ($null))==1);
	 //  @line: 696
	 call $i1448 := int$java.lang.Object$hashCode$31(($r2441));
	 goto Block468;
	 //  @line: 696
Block471:
	 assume ($neref(($r3443), ($null))==1);
	 goto Block472;
	 //  @line: 696
Block473:
	 //  @line: 696
	 assume ($negInt(($neref(($r3443), ($null))))==1);
	 //  @line: 696
	$i2449 := 0;
	 goto Block474;
	 //  @line: 696
Block472:
	 assert ($neref((r0439), ($null))==1);
	 //  @line: 696
	$r4444 := $HeapVar[r0439, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304];
	 goto Block475;
	 //  @line: 696
Block474:
	 //  @line: 696
	$i0446 := $xorint(($i1448), ($i2449));
	 //  @line: 696
	__ret := $i0446;
	 return;
	 //  @line: 696
Block475:
	 assert ($neref(($r4444), ($null))==1);
	 //  @line: 696
	 call $i2449 := int$java.lang.Object$hashCode$31(($r4444));
	 goto Block474;
}


// procedure is generated by joogie.
function {:inline true} $negRef($param00 : ref) returns (__ret : int);



	 //  @line: 643
// <javaUtilEx.HashMap: boolean containsValue(java.lang.Object)>
procedure boolean$javaUtilEx.HashMap$containsValue$2631(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0790 : ref;
var $z0796 : int;
var $r3795 : ref;
var $i0793 : int;
var i1798 : int;
var r4799 : ref;
var r1789 : ref;
var $z1797 : int;
var r2791 : [int]ref;
Block836:
	r0790 := __this;
	r1789 := $param_0;
	 goto Block837;
	 //  @line: 644
Block837:
	 goto Block838, Block840;
	 //  @line: 644
Block838:
	 assume ($neref((r1789), ($null))==1);
	 goto Block839;
	 //  @line: 644
Block840:
	 //  @line: 644
	 assume ($negInt(($neref((r1789), ($null))))==1);
	 assert ($neref((r0790), ($null))==1);
	 //  @line: 645
	 call $z1797 := boolean$javaUtilEx.HashMap$containsNullValue$2632((r0790));
	 //  @line: 645
	__ret := $z1797;
	 return;
	 //  @line: 647
Block839:
	 assert ($neref((r0790), ($null))==1);
	 //  @line: 647
	r2791 := $HeapVar[r0790, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 goto Block841;
	 //  @line: 648
Block841:
	 //  @line: 648
	i1798 := 0;
	 goto Block842;
	 //  @line: 648
Block842:
	 //  @line: 648
	$i0793 := $refArrSize[r2791[$arrSizeIdx]];
	 goto Block843;
	 //  @line: 648
Block843:
	 goto Block846, Block844;
	 //  @line: 648
Block846:
	 //  @line: 648
	 assume ($negInt(($geint((i1798), ($i0793))))==1);
	 assert ($geint((i1798), (0))==1);
	 assert ($ltint((i1798), ($refArrSize[r2791[$arrSizeIdx]]))==1);
	 //  @line: 649
	r4799 := r2791[i1798];
	 goto Block847;
	 //  @line: 648
Block844:
	 assume ($geint((i1798), ($i0793))==1);
	 goto Block845;
	 //  @line: 649
Block847:
	 goto Block850, Block848;
	 //  @line: 652
Block845:
	 //  @line: 652
	__ret := 0;
	 return;
	 //  @line: 649
Block850:
	 //  @line: 649
	 assume ($negInt(($eqref((r4799), ($null))))==1);
	 assert ($neref((r4799), ($null))==1);
	 //  @line: 650
	$r3795 := $HeapVar[r4799, java.lang.Object$javaUtilEx.HashMap$Entry$value310];
	 assert ($neref((r1789), ($null))==1);
	 //  @line: 650
	 call $z0796 := boolean$java.lang.Object$equals$32((r1789), ($r3795));
	 goto Block851;
	 //  @line: 649
Block848:
	 assume ($eqref((r4799), ($null))==1);
	 goto Block849;
	 //  @line: 650
Block851:
	 goto Block852, Block854;
	 //  @line: 648
Block849:
	 //  @line: 648
	i1798 := $addint((i1798), (1));
	 goto Block856;
	 //  @line: 650
Block852:
	 assume ($eqint(($z0796), (0))==1);
	 goto Block853;
	 //  @line: 650
Block854:
	 //  @line: 650
	 assume ($negInt(($eqint(($z0796), (0))))==1);
	 //  @line: 651
	__ret := 1;
	 return;
	 //  @line: 648
Block856:
	 goto Block842;
	 //  @line: 649
Block853:
	 assert ($neref((r4799), ($null))==1);
	 //  @line: 649
	r4799 := $HeapVar[r4799, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 goto Block855;
	 //  @line: 649
Block855:
	 goto Block847;
}


	 //  @line: 425
// <javaUtilEx.AbstractMap$2: void clear()>
procedure void$javaUtilEx.AbstractMap$2$clear$2584(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0407 : ref;
var $r1408 : ref;
Block442:
	r0407 := __this;
	 assert ($neref((r0407), ($null))==1);
	 //  @line: 426
	$r1408 := $HeapVar[r0407, javaUtilEx.AbstractMap$javaUtilEx.AbstractMap$2$this$0302];
	 assert ($neref(($r1408), ($null))==1);
	 //  @line: 426
	 call void$javaUtilEx.AbstractMap$clear$2508(($r1408));
	 return;
}


	 //  @line: 767
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: java.lang.Object getValue()>
procedure java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$getValue$2597(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r1468 : ref;
var r0467 : ref;
Block481:
	r0467 := __this;
	 assert ($neref((r0467), ($null))==1);
	 //  @line: 768
	$r1468 := $HeapVar[r0467, java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$value306];
	 //  @line: 768
	__ret := $r1468;
	 return;
}


	 //  @line: 253
// <javaUtilEx.HashMap: void init()>
procedure void$javaUtilEx.HashMap$init$2611(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0553 : ref;
Block573:
	r0553 := __this;
	 return;
}


	 //  @line: 793
// <javaUtilEx.HashMap$HashIterator: void <init>(javaUtilEx.HashMap)>
procedure void$javaUtilEx.HashMap$HashIterator$$la$init$ra$$2767(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $r31085 : ref;
var $i11079 : int;
var $i31082 : int;
var r11077 : ref;
var $i01078 : int;
var r21080 : [int]ref;
var $i21081 : int;
var r01076 : ref;
var $i41083 : int;
var $i51084 : int;
Block1100:
	r01076 := __this;
	r11077 := $param_0;
	 assert ($neref((r01076), ($null))==1);
	 //  @line: 794
	$HeapVar[r01076, javaUtilEx.HashMap$javaUtilEx.HashMap$HashIterator$this$0320] := r11077;
	 assert ($neref((r01076), ($null))==1);
	 //  @line: 794
	 call void$java.lang.Object$$la$init$ra$$28((r01076));
	 assert ($neref((r11077), ($null))==1);
	 //  @line: 795
	$i01078 := $HeapVar[r11077, int$javaUtilEx.HashMap$modCount0];
	 assert ($neref((r01076), ($null))==1);
	 //  @line: 795
	$HeapVar[r01076, int$javaUtilEx.HashMap$HashIterator$expectedModCount0] := $i01078;
	 assert ($neref((r11077), ($null))==1);
	 //  @line: 796
	$i11079 := $HeapVar[r11077, int$javaUtilEx.HashMap$size0];
	 goto Block1101;
	 //  @line: 796
Block1101:
	 goto Block1102, Block1104;
	 //  @line: 796
Block1102:
	 assume ($leint(($i11079), (0))==1);
	 goto Block1103;
	 //  @line: 796
Block1104:
	 //  @line: 796
	 assume ($negInt(($leint(($i11079), (0))))==1);
	 assert ($neref((r11077), ($null))==1);
	 //  @line: 797
	r21080 := $HeapVar[r11077, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 goto Block1105;
	 //  @line: 801
Block1103:
	 return;
	 //  @line: 798
Block1105:
	 assert ($neref((r01076), ($null))==1);
	 //  @line: 798
	$i31082 := $HeapVar[r01076, int$javaUtilEx.HashMap$HashIterator$index0];
	 //  @line: 798
	$i21081 := $refArrSize[r21080[$arrSizeIdx]];
	 goto Block1106;
	 //  @line: 798
Block1106:
	 goto Block1107, Block1108;
	 //  @line: 798
Block1107:
	 assume ($geint(($i31082), ($i21081))==1);
	 goto Block1103;
	 //  @line: 798
Block1108:
	 //  @line: 798
	 assume ($negInt(($geint(($i31082), ($i21081))))==1);
	 assert ($neref((r01076), ($null))==1);
	 //  @line: 801
	$i41083 := $HeapVar[r01076, int$javaUtilEx.HashMap$HashIterator$index0];
	 //  @line: 801
	$i51084 := $addint(($i41083), (1));
	 assert ($neref((r01076), ($null))==1);
	 //  @line: 801
	$HeapVar[r01076, int$javaUtilEx.HashMap$HashIterator$index0] := $i51084;
	 assert ($geint(($i41083), (0))==1);
	 assert ($ltint(($i41083), ($refArrSize[r21080[$arrSizeIdx]]))==1);
	 //  @line: 801
	$r31085 := r21080[$i41083];
	 assert ($neref((r01076), ($null))==1);
	 //  @line: 801
	$HeapVar[r01076, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$HashIterator$next318] := $r31085;
	 goto Block1109;
	 //  @line: 801
Block1109:
	 goto Block1110, Block1111;
	 //  @line: 801
Block1110:
	 assume ($neref(($r31085), ($null))==1);
	 goto Block1103;
	 //  @line: 801
Block1111:
	 //  @line: 801
	 assume ($negInt(($neref(($r31085), ($null))))==1);
	 goto Block1105;
}


	 //  @line: 4
// <javaUtilEx.Random: void <clinit>()>
procedure void$javaUtilEx.Random$$la$clinit$ra$$2782()
  modifies int$javaUtilEx.Random$index0;
 {
	 //  @line: 5
Block1178:
	 //  @line: 5
	int$javaUtilEx.Random$index0 := 0;
	 return;
}


	 //  @line: 708
// <javaUtilEx.AbstractMap$SimpleEntry: java.lang.String toString()>
procedure java.lang.String$javaUtilEx.AbstractMap$SimpleEntry$toString$2593(__this : ref) returns (__ret : ref)
  modifies $stringSize;
  requires ($neref((__this), ($null))==1);
 {
var $r5455 : ref;
var r0451 : ref;
var $r3453 : ref;
var $r6456 : ref;
var $r1450 : ref;
var $r4454 : ref;
var $r2452 : ref;
var $r7457 : ref;
Block476:
	r0451 := __this;
	 //  @line: 709
	$r1450 := $newvariable((477));
	 assume ($neref(($newvariable((477))), ($null))==1);
	 assert ($neref(($r1450), ($null))==1);
	 //  @line: 709
	 call void$java.lang.StringBuilder$$la$init$ra$$2261(($r1450));
	 assert ($neref((r0451), ($null))==1);
	 //  @line: 709
	$r2452 := $HeapVar[r0451, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$key303];
	 assert ($neref(($r1450), ($null))==1);
	 //  @line: 709
	 call $r3453 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265(($r1450), ($r2452));
	$stringSize[$fresh9] := 1;
	 assert ($neref(($r3453), ($null))==1);
	 //  @line: 709
	 call $r4454 := java.lang.StringBuilder$java.lang.StringBuilder$append$2266(($r3453), ($fresh9));
	 assert ($neref((r0451), ($null))==1);
	 //  @line: 709
	$r5455 := $HeapVar[r0451, java.lang.Object$javaUtilEx.AbstractMap$SimpleEntry$value304];
	 assert ($neref(($r4454), ($null))==1);
	 //  @line: 709
	 call $r6456 := java.lang.StringBuilder$java.lang.StringBuilder$append$2265(($r4454), ($r5455));
	 assert ($neref(($r6456), ($null))==1);
	 //  @line: 709
	 call $r7457 := java.lang.String$java.lang.StringBuilder$toString$2299(($r6456));
	 //  @line: 709
	__ret := $r7457;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $negInt(x : int) returns (__ret : int) {
if (x == 0) then 1 else 0
}


	 //  @line: 781
// <javaUtilEx.AbstractMap$SimpleImmutableEntry: java.lang.Object setValue(java.lang.Object)>
procedure java.lang.Object$javaUtilEx.AbstractMap$SimpleImmutableEntry$setValue$2598(__this : ref, $param_0 : ref) returns (__ret : ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r0470 : ref;
var r1471 : ref;
var $r2469 : ref;

 //temp local variables 

	 //  @line: 781
Block482:
	$Exep0 := $null;
	 goto Block483;
Block483:
	r0470 := __this;
	r1471 := $param_0;
	 //  @line: 782
	$r2469 := $newvariable((484));
	 assume ($neref(($newvariable((484))), ($null))==1);
	 assert ($neref(($r2469), ($null))==1);
	 //  @line: 782
	 call void$javaUtilEx.UnsupportedOperationException$$la$init$ra$$2257(($r2469));
	 goto Block485;
Block485:
	$Exep0 := $r2469;
	 return;
}


	 //  @line: 2
// <javaUtilEx.Random: void <init>()>
procedure void$javaUtilEx.Random$$la$init$ra$$2780(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01145 : ref;
Block1176:
	r01145 := __this;
	 assert ($neref((r01145), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r01145));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 593
// <javaUtilEx.HashMap: javaUtilEx.HashMap$Entry removeMapping(java.lang.Object)>
procedure javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$removeMapping$2629(__this : ref, $param_0 : ref) returns (__ret : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r3759 : ref;
var r2757 : ref;
var r1755 : ref;
var i0762 : int;
var r4771 : ref;
var $i9779 : int;
var $r7778 : [int]ref;
var $i5774 : int;
var $r6768 : [int]ref;
var $z0756 : int;
var $i3765 : int;
var r9781 : ref;
var $i4772 : int;
var $z1773 : int;
var $i8777 : int;
var r8780 : ref;
var i1767 : int;
var r0763 : ref;
var $r5764 : [int]ref;
var $i6775 : int;
var $i2760 : int;
var $i7776 : int;
Block799:
	r0763 := __this;
	r1755 := $param_0;
	 //  @line: 594
	$z0756 := $instanceof((r1755), (javaUtilEx.Map$Entry));
	 goto Block800;
	 //  @line: 594
Block800:
	 goto Block803, Block801;
	 //  @line: 594
Block803:
	 //  @line: 594
	 assume ($negInt(($neint(($z0756), (0))))==1);
	 //  @line: 595
	__ret := $null;
	 return;
	 //  @line: 594
Block801:
	 assume ($neint(($z0756), (0))==1);
	 goto Block802;
	 //  @line: 597
Block802:
	 //  @line: 597
	r2757 := r1755;
	 goto Block804;
	 //  @line: 598
Block804:
	 assert ($neref((r2757), ($null))==1);
	 //  @line: 598
	 call r3759 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r2757));
	 goto Block805;
	 //  @line: 599
Block805:
	 goto Block808, Block806;
	 //  @line: 599
Block808:
	 //  @line: 599
	 assume ($negInt(($neref((r3759), ($null))))==1);
	 //  @line: 614
	$i9779 := 0;
	 goto Block809;
	 //  @line: 599
Block806:
	 assume ($neref((r3759), ($null))==1);
	 goto Block807;
	 //  @line: 599
Block809:
	 //  @line: 599
	i0762 := $i9779;
	 assert ($neref((r0763), ($null))==1);
	 //  @line: 600
	$r5764 := $HeapVar[r0763, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 //  @line: 600
	$i3765 := $refArrSize[$r5764[$arrSizeIdx]];
	 //  @line: 600
	 call i1767 := int$javaUtilEx.HashMap$indexFor$2613((i0762), ($i3765));
	 assert ($neref((r0763), ($null))==1);
	 //  @line: 601
	$r6768 := $HeapVar[r0763, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1767), (0))==1);
	 assert ($ltint((i1767), ($refArrSize[$r6768[$arrSizeIdx]]))==1);
	 //  @line: 601
	r8780 := $r6768[i1767];
	 //  @line: 602
	r9781 := r8780;
	 goto Block811;
	 //  @line: 599
Block807:
	 assert ($neref((r3759), ($null))==1);
	 //  @line: 599
	 call $i2760 := int$java.lang.Object$hashCode$31((r3759));
	 goto Block810;
	 //  @line: 604
Block811:
	 goto Block814, Block812;
	 //  @line: 599
Block810:
	 //  @line: 599
	 call $i9779 := int$javaUtilEx.HashMap$hash$2612(($i2760));
	 goto Block809;
	 //  @line: 604
Block814:
	 //  @line: 604
	 assume ($negInt(($eqref((r9781), ($null))))==1);
	 assert ($neref((r9781), ($null))==1);
	 //  @line: 605
	r4771 := $HeapVar[r9781, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311];
	 assert ($neref((r9781), ($null))==1);
	 //  @line: 606
	$i4772 := $HeapVar[r9781, int$javaUtilEx.HashMap$Entry$hash0];
	 goto Block815;
	 //  @line: 604
Block812:
	 assume ($eqref((r9781), ($null))==1);
	 goto Block813;
	 //  @line: 606
Block815:
	 goto Block816, Block818;
	 //  @line: 620
Block813:
	 //  @line: 620
	__ret := r9781;
	 return;
	 //  @line: 606
Block816:
	 assume ($neint(($i4772), (i0762))==1);
	 goto Block817;
	 //  @line: 606
Block818:
	 //  @line: 606
	 assume ($negInt(($neint(($i4772), (i0762))))==1);
	 assert ($neref((r9781), ($null))==1);
	 //  @line: 604
	 call $z1773 := boolean$javaUtilEx.HashMap$Entry$equals$2647((r9781), (r2757));
	 goto Block819;
	 //  @line: 616
Block817:
	 //  @line: 616
	r8780 := r9781;
	 goto Block828;
	 //  @line: 604
Block819:
	 goto Block820, Block821;
	 //  @line: 617
Block828:
	 //  @line: 617
	r9781 := r4771;
	 goto Block811;
	 //  @line: 604
Block820:
	 assume ($eqint(($z1773), (0))==1);
	 goto Block817;
	 //  @line: 604
Block821:
	 //  @line: 604
	 assume ($negInt(($eqint(($z1773), (0))))==1);
	 assert ($neref((r0763), ($null))==1);
	 //  @line: 607
	$i5774 := $HeapVar[r0763, int$javaUtilEx.HashMap$modCount0];
	 //  @line: 607
	$i6775 := $addint(($i5774), (1));
	 assert ($neref((r0763), ($null))==1);
	 //  @line: 607
	$HeapVar[r0763, int$javaUtilEx.HashMap$modCount0] := $i6775;
	 assert ($neref((r0763), ($null))==1);
	 //  @line: 608
	$i7776 := $HeapVar[r0763, int$javaUtilEx.HashMap$size0];
	 //  @line: 608
	$i8777 := $subint(($i7776), (1));
	 assert ($neref((r0763), ($null))==1);
	 //  @line: 608
	$HeapVar[r0763, int$javaUtilEx.HashMap$size0] := $i8777;
	 goto Block822;
	 //  @line: 609
Block822:
	 goto Block823, Block825;
	 //  @line: 609
Block823:
	 assume ($neref((r8780), (r9781))==1);
	 goto Block824;
	 //  @line: 609
Block825:
	 //  @line: 609
	 assume ($negInt(($neref((r8780), (r9781))))==1);
	 assert ($neref((r0763), ($null))==1);
	 //  @line: 610
	$r7778 := $HeapVar[r0763, javaUtilEx.HashMap$Entry$lp$$rp$$javaUtilEx.HashMap$table307];
	 assert ($geint((i1767), (0))==1);
	 assert ($ltint((i1767), ($refArrSize[$r7778[$arrSizeIdx]]))==1);
	 //  @line: 610
	$r7778[i1767] := r4771;
	 goto Block826;
	 //  @line: 612
Block824:
	 assert ($neref((r8780), ($null))==1);
	 //  @line: 612
	$HeapVar[r8780, javaUtilEx.HashMap$Entry$javaUtilEx.HashMap$Entry$next311] := r4771;
	 goto Block826;
	 //  @line: 613
Block826:
	 assert ($neref((r9781), ($null))==1);
	 //  @line: 613
	 call void$javaUtilEx.HashMap$Entry$recordRemoval$2651((r9781), (r0763));
	 goto Block827;
	 //  @line: 614
Block827:
	 //  @line: 614
	__ret := r9781;
	 return;
}


	 //  @line: 996
// <javaUtilEx.HashMap$EntrySet: int size()>
procedure int$javaUtilEx.HashMap$EntrySet$size$2746(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0998 : ref;
var $r1999 : ref;
var $i01000 : int;
Block1045:
	r0998 := __this;
	 assert ($neref((r0998), ($null))==1);
	 //  @line: 997
	$r1999 := $HeapVar[r0998, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314];
	 assert ($neref(($r1999), ($null))==1);
	 //  @line: 997
	$i01000 := $HeapVar[$r1999, int$javaUtilEx.HashMap$size0];
	 //  @line: 997
	__ret := $i01000;
	 return;
}


	 //  @line: 274
// <javaUtilEx.HashMap: int indexFor(int,int)>
procedure int$javaUtilEx.HashMap$indexFor$2613($param_0 : int, $param_1 : int) returns (__ret : int) {
var $i2566 : int;
var $i3567 : int;
var i1565 : int;
var i0564 : int;
Block575:
	i0564 := $param_0;
	i1565 := $param_1;
	 //  @line: 275
	$i2566 := $subint((i1565), (1));
	 //  @line: 275
	$i3567 := $andint((i0564), ($i2566));
	 //  @line: 275
	__ret := $i3567;
	 return;
}


	 //  @line: 120
// <javaUtilEx.AbstractSet: int hashCode()>
procedure int$javaUtilEx.AbstractSet$hashCode$2497(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r1189 : ref;
var $z0190 : int;
var $i0193 : int;
var r0187 : ref;
var i1194 : int;
var r2192 : ref;
Block186:
	r0187 := __this;
	 //  @line: 121
	i1194 := 0;
	 assert ($neref((r0187), ($null))==1);
	 //  @line: 122
	 call r1189 := javaUtilEx.Iterator$javaUtilEx.AbstractCollection$iterator$2229((r0187));
	 goto Block187;
	 //  @line: 123
Block187:
	 assert ($neref((r1189), ($null))==1);
	 //  @line: 123
	 call $z0190 := boolean$javaUtilEx.Iterator$hasNext$2254((r1189));
	 goto Block188;
	 //  @line: 123
Block188:
	 goto Block191, Block189;
	 //  @line: 123
Block191:
	 //  @line: 123
	 assume ($negInt(($eqint(($z0190), (0))))==1);
	 assert ($neref((r1189), ($null))==1);
	 //  @line: 124
	 call r2192 := java.lang.Object$javaUtilEx.Iterator$next$2255((r1189));
	 goto Block192;
	 //  @line: 123
Block189:
	 assume ($eqint(($z0190), (0))==1);
	 goto Block190;
	 //  @line: 125
Block192:
	 goto Block193, Block195;
	 //  @line: 128
Block190:
	 //  @line: 128
	__ret := i1194;
	 return;
	 //  @line: 125
Block193:
	 assume ($eqref((r2192), ($null))==1);
	 goto Block194;
	 //  @line: 125
Block195:
	 //  @line: 125
	 assume ($negInt(($eqref((r2192), ($null))))==1);
	 assert ($neref((r2192), ($null))==1);
	 //  @line: 126
	 call $i0193 := int$java.lang.Object$hashCode$31((r2192));
	 //  @line: 126
	i1194 := $addint((i1194), ($i0193));
	 goto Block194;
	 //  @line: 127
Block194:
	 goto Block187;
}


	 //  @line: 1010
// <javaUtilEx.HashMap$EntrySet: java.lang.Object[] toArray(java.lang.Object[])>
procedure java.lang.Object$lp$$rp$$javaUtilEx.HashMap$EntrySet$toArray$2749(__this : ref, $param_0 : [int]ref) returns (__ret : [int]ref, $Exep0 : ref)  requires ($neref((__this), ($null))==1);
 {
var r01017 : ref;
var $r31015 : ref;
var $r61020 : ref;
var $z01026 : int;
var i21031 : int;
var r101030 : [int]ref;
var r21024 : ref;
var $r71021 : [int]ref;
var $r51018 : ref;
var $r81028 : ref;
var $i01019 : int;
var $i11027 : int;
var r91029 : [int]ref;
var r11022 : [int]ref;
var $r41016 : ref;

 //temp local variables 
var $caughtEx1 : ref;

	 //  @line: 1010
Block1054:
	$caughtEx1 := $null;
	$Exep0 := $null;
	 goto Block1055;
Block1055:
	r01017 := __this;
	r91029 := $param_0;
	 assert ($neref(($refarrtoref((r91029))), ($null))==1);
	 //  @line: 1011
	 call $r31015 := java.lang.Class$java.lang.Object$getClass$30(($refarrtoref((r91029))));
	 assert ($neref(($r31015), ($null))==1);
	 //  @line: 1011
	 call $r41016 := java.lang.Class$java.lang.Class$getComponentType$467(($r31015));
	 assert ($neref((r01017), ($null))==1);
	 //  @line: 1011
	$r51018 := $HeapVar[r01017, javaUtilEx.HashMap$javaUtilEx.HashMap$EntrySet$this$0314];
	 assert ($neref(($r51018), ($null))==1);
	 //  @line: 1011
	$i01019 := $HeapVar[$r51018, int$javaUtilEx.HashMap$size0];
	 //  @line: 1011
	 call $r61020, $caughtEx1 := java.lang.Object$java.lang.reflect.Array$newInstance$2553(($r41016), ($i01019));
	 goto Block1058, Block1056;
Block1058:
	 assume ($eqref(($caughtEx1), ($null))==1);
	 goto Block1059;
Block1056:
	 assume ($neref(($caughtEx1), ($null))==1);
	 goto Block1057;
Block1059:
	 //  @line: 1011
	$r71021 := $reftorefarr(($r61020));
	 //  @line: 1011
	r101030 := $r71021;
	 //  @line: 1013
	r11022 := r101030;
	 assert ($neref((r01017), ($null))==1);
	 //  @line: 1014
	 call r21024 := javaUtilEx.Iterator$javaUtilEx.HashMap$EntrySet$iterator$2743((r01017));
	 //  @line: 1015
	i21031 := 0;
	 goto Block1060;
Block1057:
	$Exep0 := $caughtEx1;
	 return;
	 //  @line: 1016
Block1060:
	 assert ($neref((r21024), ($null))==1);
	 //  @line: 1016
	 call $z01026 := boolean$javaUtilEx.Iterator$hasNext$2254((r21024));
	 goto Block1061;
	 //  @line: 1016
Block1061:
	 goto Block1064, Block1062;
	 //  @line: 1016
Block1064:
	 //  @line: 1016
	 assume ($negInt(($eqint(($z01026), (0))))==1);
	 //  @line: 1017
	$i11027 := i21031;
	 //  @line: 1017
	i21031 := $addint((i21031), (1));
	 assert ($neref((r21024), ($null))==1);
	 //  @line: 1017
	 call $r81028 := java.lang.Object$javaUtilEx.Iterator$next$2255((r21024));
	 assert ($geint(($i11027), (0))==1);
	 assert ($ltint(($i11027), ($refArrSize[r11022[$arrSizeIdx]]))==1);
	 //  @line: 1017
	r11022[$i11027] := $r81028;
	 goto Block1060;
	 //  @line: 1016
Block1062:
	 assume ($eqint(($z01026), (0))==1);
	 goto Block1063;
	 //  @line: 1018
Block1063:
	 //  @line: 1018
	__ret := r101030;
	 return;
}


	 //  @line: 463
// <javaUtilEx.AbstractMap: boolean equals(java.lang.Object)>
procedure boolean$javaUtilEx.AbstractMap$equals$2512(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $z0313 : int;
var r3322 : ref;
var $i1316 : int;
var $r10331 : ref;
var r2314 : ref;
var $r8327 : ref;
var $z3330 : int;
var $z2328 : int;
var r0312 : ref;
var r1311 : ref;
var $r6317 : ref;
var $r7321 : ref;
var $i0315 : int;
var r4324 : ref;
var $z1320 : int;
var r12333 : ref;
var $r11332 : ref;
var r5326 : ref;
var $r9329 : ref;

 //temp local variables 
var $caughtEx0 : ref;
var $caughtEx1 : ref;

Block343:
	$caughtEx1 := $null;
	$caughtEx0 := $null;
	r0312 := __this;
	r1311 := $param_0;
	 goto Block344;
	 //  @line: 464
Block344:
	 goto Block345, Block347;
	 //  @line: 464
Block345:
	 assume ($neref((r1311), (r0312))==1);
	 goto Block346;
	 //  @line: 464
Block347:
	 //  @line: 464
	 assume ($negInt(($neref((r1311), (r0312))))==1);
	 //  @line: 465
	__ret := 1;
	 return;
	 //  @line: 467
Block346:
	 //  @line: 467
	$z0313 := $instanceof((r1311), (javaUtilEx.Map));
	 goto Block348;
	 //  @line: 467
Block348:
	 goto Block351, Block349;
	 //  @line: 467
Block351:
	 //  @line: 467
	 assume ($negInt(($neint(($z0313), (0))))==1);
	 //  @line: 468
	__ret := 0;
	 return;
	 //  @line: 467
Block349:
	 assume ($neint(($z0313), (0))==1);
	 goto Block350;
	 //  @line: 469
Block350:
	 //  @line: 469
	r2314 := r1311;
	 goto Block352;
	 //  @line: 470
Block352:
	 assert ($neref((r2314), ($null))==1);
	 //  @line: 470
	 call $i0315 := int$javaUtilEx.Map$size$2533((r2314));
	 assert ($neref((r0312), ($null))==1);
	 //  @line: 470
	 call $i1316 := int$javaUtilEx.AbstractMap$size$2500((r0312));
	 goto Block353;
	 //  @line: 470
Block353:
	 goto Block356, Block354;
	 //  @line: 470
Block356:
	 //  @line: 470
	 assume ($negInt(($eqint(($i0315), ($i1316))))==1);
	 //  @line: 471
	__ret := 0;
	 return;
	 //  @line: 470
Block354:
	 assume ($eqint(($i0315), ($i1316))==1);
	 goto Block355;
	 //  @line: 474
Block355:
	 assert ($neref((r0312), ($null))==1);
	 //  @line: 474
	 call $r6317 := javaUtilEx.Set$javaUtilEx.AbstractMap$entrySet$2511((r0312));
	 goto Block357;
	 //  @line: 474
Block357:
	 assert ($neref(($r6317), ($null))==1);
	 //  @line: 474
	 call r12333 := javaUtilEx.Iterator$javaUtilEx.Set$iterator$2521(($r6317));
	 goto Block358;
	 //  @line: 475
Block358:
	 assert ($neref((r12333), ($null))==1);
	 //  @line: 475
	 call $z1320 := boolean$javaUtilEx.Iterator$hasNext$2254((r12333));
	 goto Block359;
	 //  @line: 475
Block359:
	 goto Block362, Block360;
	 //  @line: 475
Block362:
	 //  @line: 475
	 assume ($negInt(($eqint(($z1320), (0))))==1);
	 assert ($neref((r12333), ($null))==1);
	 //  @line: 476
	 call $r7321 := java.lang.Object$javaUtilEx.Iterator$next$2255((r12333));
	 //  @line: 476
	r3322 := $r7321;
	 assert ($neref((r3322), ($null))==1);
	 //  @line: 477
	 call r4324 := java.lang.Object$javaUtilEx.Map$Entry$getKey$2547((r3322));
	 assert ($neref((r3322), ($null))==1);
	 //  @line: 478
	 call r5326 := java.lang.Object$javaUtilEx.Map$Entry$getValue$2548((r3322));
	 goto Block363;
	 //  @line: 475
Block360:
	 assume ($eqint(($z1320), (0))==1);
	 goto Block361;
	 //  @line: 479
Block363:
	 goto Block366, Block364;
	 //  @line: 491
Block361:
	 goto Block380;
	 //  @line: 479
Block366:
	 //  @line: 479
	 assume ($negInt(($neref((r5326), ($null))))==1);
	 assert ($neref((r2314), ($null))==1);
	 //  @line: 480
	 call $r9329 := java.lang.Object$javaUtilEx.Map$get$2537((r2314), (r4324));
	 goto Block367;
	 //  @line: 479
Block364:
	 assume ($neref((r5326), ($null))==1);
	 goto Block365;
	 //  @line: 493
Block380:
	 //  @line: 493
	__ret := 1;
	 return;
	 //  @line: 480
Block367:
	 goto Block370, Block368;
	 //  @line: 483
Block365:
	 assert ($neref((r2314), ($null))==1);
	 //  @line: 483
	 call $r8327 := java.lang.Object$javaUtilEx.Map$get$2537((r2314), (r4324));
	 goto Block375;
	 //  @line: 480
Block370:
	 //  @line: 480
	 assume ($negInt(($neref(($r9329), ($null))))==1);
	 assert ($neref((r2314), ($null))==1);
	 //  @line: 481
	 call $z3330 := boolean$javaUtilEx.Map$containsKey$2535((r2314), (r4324));
	 goto Block371;
	 //  @line: 480
Block368:
	 assume ($neref(($r9329), ($null))==1);
	 goto Block369;
	 //  @line: 483
Block375:
	 assert ($neref((r5326), ($null))==1);
	 //  @line: 483
	 call $z2328 := boolean$java.lang.Object$equals$32((r5326), ($r8327));
	 goto Block376;
	 //  @line: 481
Block371:
	 goto Block374, Block372;
	 //  @line: 481
Block369:
	 //  @line: 481
	__ret := 0;
	 return;
	 //  @line: 483
Block376:
	 goto Block378, Block377;
	 //  @line: 481
Block374:
	 //  @line: 481
	 assume ($negInt(($neint(($z3330), (0))))==1);
	 goto Block369;
	 //  @line: 481
Block372:
	 assume ($neint(($z3330), (0))==1);
	 goto Block373;
	 //  @line: 483
Block378:
	 //  @line: 483
	 assume ($negInt(($neint(($z2328), (0))))==1);
	 goto Block379;
	 //  @line: 483
Block377:
	 assume ($neint(($z2328), (0))==1);
	 goto Block373;
	 //  @line: 486
Block373:
	 goto Block358;
	 //  @line: 484
Block379:
	 //  @line: 484
	__ret := 0;
	 return;
}


