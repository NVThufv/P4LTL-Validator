int nondet() { int a; return a; }
_Bool nondet_bool() { _Bool a; return a; }
int main() {
int v1 = nondet();
int v2 = nondet();
int v3 = nondet();
int v4 = nondet();
int v5 = nondet();
int v6 = nondet();
int v7 = nondet();
int v8 = nondet();
int v9 = nondet();
int v10 = nondet();
goto loc_4;
loc_4:
 if (nondet_bool()) {
  goto loc_3;
 }
 goto end;
loc_CP_0:
 if (nondet_bool()) {
  v4 = v2;
  v5 = v3;
  if (!( -1*v4+v5 <= 0 )) goto end;
  v4 = nondet();
  v5 = nondet();
  v1 = nondet();
  goto loc_1;
 }
 if (nondet_bool()) {
  v4 = v2;
  v5 = v3;
  if (!( 0 <= -1-v4+v5 )) goto end;
  v4 = nondet();
  v5 = nondet();
  v6 = v2;
  v6 = nondet();
  goto loc_2;
 }
 goto end;
loc_2:
 if (nondet_bool()) {
  goto loc_CP_0;
 }
 goto end;
loc_3:
 if (nondet_bool()) {
  v10 = nondet();
  v9 = nondet();
  v8 = v9;
  v7 = v10;
  goto loc_CP_0;
 }
 goto end;
loc_1:
end:
;
}
