#!/usr/bin/env bash

sudo apt update
sudo apt install -y $(cat wsl/packages.txt)

curl -LsSf https://astral.sh/uv/install.sh | sh
curl -fsSL https://bun.sh/install | bash
