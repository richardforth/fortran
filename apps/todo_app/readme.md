# todo3
```bash
$ gfortran -c ../../modules/todo3_routines_m.f90 -o todo3_routines_m.o
$ gfortran -c todo3.f90 -o todo3.o
$ gfortran todo3_routines_m.o todo3.o -o todo3
```
