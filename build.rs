use std::process::Command;

fn main() {
    println!("cargo:rerun-if-changed=build.rs");

    Command::new("gcc")
    .args(&["build", 
    "--target=wasm32-unknown-unknown", 
    "--manifest-path", 
    "./Cargo.toml"]);
}