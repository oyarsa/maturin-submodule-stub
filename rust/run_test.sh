#!/usr/bin/bash

python3 -m venv .venv
source .venv/bin/activate

echo '# Building module'
maturin develop

echo -e '\n# Testing module'
python test_stub.py
echo -e '\n# Testing mypy'
mypy test_stub.py
