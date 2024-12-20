#! /bin/bash


if ! command -v rustc 2>&1 >/dev/null
then
    echo "Rust compiler could not be found."

    while true; do
    read -e -i "Y" -p "Do you want to install rust toolchain? (Y/n) " yn
    case $yn in
            [yY] )  echo Running Rustup curl command;
                    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
                    break;;
            [nN] )  
                    echo Exiting setup.;
                    echo ;
                    echo Rust can be installed with:;
                    echo "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh";
                    exit;;
            * ) echo Invalid Response;;
    esac
    done
fi

cargo install trunk wasm-bindgen-cli
rustup target add wasm32-unknown-unknown

echo View the site in dev mode with `trunk serve --open`