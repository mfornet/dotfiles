#!/bin/bash
set -euo pipefail

# Install cargo
curl https://sh.rustup.rs -sSf | sh -s -- -y
source "$HOME/.cargo/env"

if [ "$(uname -s)" != "Linux" ]; then
    echo "This script is expected to be executed on a linux machine"
    exit 1
fi
