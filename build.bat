if not exist "src" mkdir src
..\zngur\target\debug\zngur.exe generate main.zng
clang-format -i generated.h
cargo build
clang++ -std=c++20 -I. main.cpp target/debug/png_example.lib -lws2_32 -luserenv -lntdll
