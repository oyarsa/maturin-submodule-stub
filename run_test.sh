#!/usr/bin/bash

(cd rust && ./run_test.sh)
echo -e '\n----------------------\n\n'
(cd python && ./run_test.sh)
