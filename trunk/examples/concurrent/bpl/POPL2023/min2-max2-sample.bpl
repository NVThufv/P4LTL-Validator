//#Safe
/*
 * Benchmark for the combination of (variable) abstraction with concrete commutativity:
 *
 * While computeMin and computeMax commute concretely, they only commute abstractly against the sample thread.
 *
 * Because computeMin and computeMax are disjoint, they in fact also commute under lightweight-abstract.
 * However, the two copies of computeMin (resp. computeMax) only commute against each other under heavyweight(-concrete) commutativity.
 *
 * Author: Dominik Klumpp
 * Date: 2022-06-08
 */

var A, B : [int]int;
var N : int;

var i1, i2 : int;
var array_min, array_max : int;
var min_samples, max_samples : [int]int;

function min(a : int, b : int) returns (int) {
  if (a < b) then a else b
}

function max(a : int, b : int) returns (int) {
  if (a < b) then b else a
}

procedure computeMin() returns (x : int)
modifies i1, array_min;
{
  array_min := 0;
  i1 := 0;

  while (i1 < N) {
    atomic {
      array_min := min(array_min, A[i1]);
      i1 := i1 + 1;
    }
  }
}

procedure computeMax() returns (y : int)
modifies i2, array_max;
{
  array_max := 0;
  i2 := 0;

  while (i2 < N) {
    atomic {
      array_max := max(array_max, A[i2]);
      i2 := i2 + 1;
    }
  }
}

procedure sample()
modifies min_samples, max_samples;
{
  while (*) {
    min_samples[i1-1] := array_min;
    max_samples[i2-1] := array_max;
  }
}

procedure ULTIMATE.start()
modifies i1, i2, array_min, array_max, min_samples, max_samples;
{
  fork 1         computeMin();
  fork 2,2       computeMin();
  fork 3,3,3     computeMax();
  fork 4,4,4,4   computeMax();
  fork 5,5,5,5,5 sample();
  join 1;
  join 2,2;
  join 3,3,3;
  join 4,4,4,4;

  assert array_min <= array_max;
}

