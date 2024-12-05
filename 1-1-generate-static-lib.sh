gcc -c -fPIC foo.c -o target/foo.o
gcc -c -fPIC bar.c -o target/bar.o

pushd target/
ar -rv libfoobar.a foo.o bar.o
ranlib libfoobar.a
popd