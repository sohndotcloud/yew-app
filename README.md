# Yew App

It's a starter app for Yew + Rust + WASM + Node.

*Initial setup takes 5 mins to download all dependencies*

## WebAssembly
WebAssembly takes speed to the web with the newest features developed by the WebAssembly JavaScript API team. With full support, there is standardization efforts by W3C, WebAssembly Working Group and Community Group.


## Yew
It doesn't work without dependencies out of the box. Trunk is a WASM application bundler for Rust, and it can't work without wasm-bindgen-cli.

*setup.sh runs the following commands*

`cargo install trunk wasm-bindgen-cli`


It needs rustup to add the WASM target processor. `wasm32-unknown-unknown` is used for browsers. 

`rustup target add wasm32-unknown-unknown`

After everything is installed, it's ready!


## Requires

NPM - v 10.2.5 and up

Rust - v 1.74.1 and up
