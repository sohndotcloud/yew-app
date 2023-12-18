mod utils;

use crate::utils::set_panic_hook;

pub fn greet() {
    print!("Hello, Nils!");
}

pub fn init() {
    set_panic_hook();
}
