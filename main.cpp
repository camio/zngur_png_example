#include <iostream>
#include <generated.h>

int main() {
  auto path = rust::Str::from_char_star("test.png");

  auto decoder = rust::png::Decoder<rust::std::fs::File>::new_(
      rust::std::fs::File::open(path).unwrap());

  auto header_info = decoder.read_header_info().unwrap();
  std::cout << "Width = " << header_info.width() << std::endl;
  std::cout << "height = " << header_info.height() << std::endl;
}
