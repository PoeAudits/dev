#!/usr/bin/env bash

# install uv if you don't have it already
curl -LsSf https://astral.sh/uv/install.sh | sh

# install the latest version of halmos for the current user and add it to PATH
uv tool install --python 3.12 halmos

# or, install the development version from the repository
# uv tool install --python 3.12 git+https://github.com/a16z/halmos

# after installing, you can update halmos to the latest version with:
uv tool upgrade halmos
