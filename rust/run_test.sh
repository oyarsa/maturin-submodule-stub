#!/usr/bin/bash

set -x

python3 -m venv .venv
set +x
source .venv/bin/activate
set -x

echo '# Building module'
maturin develop

echo -e '\n# Testing module'
python test_stub.py
echo -e '\n# Testing mypy'
mypy test_stub.py
