gcc -c -fPIC qux.c -o target/qux.o

pushd target/
gcc -o libqux.so -Wl,--whole-archive libfoobar.a -Wl,--no-whole-archive --shared qux.o
ldd libqux.so
objdump -t libqux.so
popd