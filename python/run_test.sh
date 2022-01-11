#!/usr/bin/bash

set -x

echo '# Installing module'
python3 -m venv .venv
set +x
source .venv/bin/activate
set -x
pip install -r requirements.txt
echo -e '\n# Testing module'
python test_stub.py
echo -e '\n# Testing mypy'
mypy test_stub.py
echo -e '\n# Content of site-pacakges/test_module:'
ls .venv/lib/python3.8/site-packages/test_module