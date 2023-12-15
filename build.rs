use std::process::Command;
use std::env;
use std::path::Path;
use std::fs;

fn main() {
    // Tell Cargo that if the given file changes, to rerun this build script.
    let out_dir = env::var_os("OUT_DIR").unwrap();
    println!("{:?}", out_dir);
    Command::new("wasm-pack")
    .args(&["--out-dir=dist", "--target=web", "--omit-default-module-path", "./pkg/WAVE_bg.wasm"]).status().unwrap();
    Command::new("wasm-bindgen")
    .args(&["--out-dir=dist", "--target=web", "--omit-default-module-path", "./pkg/WAVE_bg.wasm"]).status().unwrap();

    let dest_path = Path::new(&out_dir).join("hello.rs");
    fs::write(
        &dest_path,
        "pub fn message() -> &'static str {
            \"Hello, World!\"
        }
        "
    ).unwrap();
    println!("cargo:rerun-if-changed=build.rs");
}