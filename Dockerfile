FROM rust:1-alpine3.18

#https://github.com/rust-lang/docker-rust/issues/85
ENV RUSTFLAGS="-C target-feature=-crt-static"

WORKDIR /app
COPY ./ /app
# do a release build
RUN cargo build --release
RUN strip target/release/create-yew-template

COPY --from=0 /app/target/wasm32-unknown-unknown/debug/ .

ENTRYPOINT [ "/yew-app" ]