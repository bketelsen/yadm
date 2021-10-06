#! /bin/bash
set -e
pushd /tmp
wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
tar -zxvf zellij-x86_64-unknown-linux-musl.tar.gz
sudo cp zellij /usr/local/bin
popd

