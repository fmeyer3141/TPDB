extern int __VERIFIER_nondet_int(void);

int foo(int x,int y,int z){
while (x < y) {
        if (x < z) {
            x = x+1;
        } else {
            z = z+1;
        }
    }
return 0;
}

