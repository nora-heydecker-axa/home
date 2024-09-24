#!/usr/bin/env bash

set -euo pipefail
shopt -s dotglob

this_dir="$(dirname "$(realpath "$0")")"
cd "$this_dir"

function install_path {
    for file in $1; do
        echo "$file"
        mkdir -p "$HOME/$(dirname "$file")"
        ln -fs "$this_dir/$file" "$HOME/$file"
    done
}

install_path ".config/**/*"
install_path ".local/**/*"
