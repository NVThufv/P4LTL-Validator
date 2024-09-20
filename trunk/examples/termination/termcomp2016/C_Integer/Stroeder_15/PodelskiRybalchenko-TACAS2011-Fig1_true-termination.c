//#termcomp16-someonesaidyes
/*
 * Program from Fig.1 of
 * 2011TACAS - Podelski,Rybalchenko - Transition Invariants and Transition Predicate Abstraction for Program Termination
 *
 * Date: 2014
 * Author: Caterina Urban
 */

typedef enum {false, true} bool;

extern int __VERIFIER_nondet_int(void);

int main() {
	int y;
    y = __VERIFIER_nondet_int();
	while (y >= 0) {
		y = y - 1;
	}
	return 0;
}
