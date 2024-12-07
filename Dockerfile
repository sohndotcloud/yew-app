FROM rust:1-alpine3.18

#https://github.com/rust-lang/docker-rust/issues/85
ENV RUSTFLAGS="-C target-feature=-crt-static"

# # Add wasm target
# RUN rustup target add wasm32-unknown-unknown

# # Install wasm-pack for testing
# RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

# # Install trunk and wasm-bindgen-cli for bundling and running
# RUN cargo install trunk wasm-bindgen-cli

# do a release build
RUN trunk build --release
RUN strip /app/target/wasm32-unknown-unknown/release/yew-app.wasm

ENTRYPOINT [ "/yew-app" ]