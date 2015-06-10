all: retlif retlif-lttng

retlif: retlif.o
	gcc $< -o $@ -g -Wl,-rpath,'$$ORIGIN/../src/.libs' -L../src/.libs -lebpf -lm -lelf -llttng-ust -ldl

retlif.o:retlif.c
	gcc -g -c $< -g -I../ -I.

retlif-lttng: retlif-lttng.o
	gcc $< -o $@ -g -Wl,-rpath,'$$ORIGIN/../src/.libs' -L../src/.libs -lebpf -lm -lelf -llttng-ust -ldl

retlif-lttng.o:retlif-lttng.c
	gcc -g -c $< -g -I../ -I.

clean:
	rm -rf *.o retlif retlif-lttng
