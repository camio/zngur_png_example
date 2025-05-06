if not exist "src" mkdir src
zngur generate main.zng
cargo build
clang++ -I. main.cpp target/debug/png_example.lib -lws2_32 -luserenv -lntdll
