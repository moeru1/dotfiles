#!/bin/sh

out=$(kitty @ get-colors | grep 35293a)
if [ -n "$out" ]; then
    echo -n "dark"
else
    echo -n "light"
fi
