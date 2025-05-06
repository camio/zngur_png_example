// 'generated.rs' is included so it has access to PageInfoExt
include!("generated.rs");

trait PngInfoExt {
    fn width(&self) -> u32;
    fn height(&self) -> u32;
}

impl<'a> PngInfoExt for png::Info<'a> {
    fn width(&self) -> u32 {
        self.width
    }
    fn height(&self) -> u32 {
        self.height
    }
}
