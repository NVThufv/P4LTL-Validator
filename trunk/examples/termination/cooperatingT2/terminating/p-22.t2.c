int nondet() { int a; return a; }
_Bool nondet_bool() { _Bool a; return a; }
int main() {
int v1 = nondet();
int v2 = nondet();
goto loc_5;
loc_5:
 if (nondet_bool()) {
  goto loc_4;
 }
 goto end;
loc_CP_0:
 if (nondet_bool()) {
  if (!( 0 <= -1+v2 )) goto end;
  v2 = -1+v2;
  goto loc_1;
 }
 if (nondet_bool()) {
  if (!( v2 <= 0 )) goto end;
  v1 = nondet();
  goto loc_2;
 }
 goto end;
loc_1:
 if (nondet_bool()) {
  goto loc_CP_0;
 }
 goto end;
loc_3:
 if (nondet_bool()) {
  if (!( 0 <= -1+v2 )) goto end;
  v2 = -1+v2;
  goto loc_CP_0;
 }
 if (nondet_bool()) {
  if (!( v2 <= 0 )) goto end;
  v1 = nondet();
  goto loc_2;
 }
 goto end;
loc_4:
 if (nondet_bool()) {
  goto loc_3;
 }
 goto end;
loc_2:
end:
;
}
