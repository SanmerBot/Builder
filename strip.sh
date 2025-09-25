#!/bin/bash

for f in ${2}/*; do
    if file "$f" | grep -q "ELF"; then
        llvm-strip ${1} "$f" && echo "Stripped $f"
    fi
done