#! /bin/bash


if ! command -v rustc 2>&1 >/dev/null
then
    echo "Rustc could not be found. Please install rust with rustup."
    echo "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
    echo
    exit 1
fi


cargo install trunk wasm-bindgen-cli

rustup target add wasm32-unknown-unknown

trunk serve