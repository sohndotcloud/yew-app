mod utils;

use crate::utils::set_panic_hook;
use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet() {
    alert("Hello, Nils!");
}

#[wasm_bindgen]
pub fn init() {
    set_panic_hook();
}
