rm -fr target/
mkdir target/

rm -fr test/
mkdir test/

source 1-1-generate-static-lib.sh
source 1-2-generate-dynamic-lib.sh

cp -fv target/libqux.so test/

pushd test/
echo -e 'void qux_print();\nint main2();\nint main() { qux_print(); return main2(); }' > main.c
gcc main.c -lqux -L./ -Wl,-rpath=./
./a.out
popd