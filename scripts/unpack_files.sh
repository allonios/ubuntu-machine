#!/usr/bin/env bash

cp -r ../.themes ~/
cp -r ../.bash_aliases ~/
cp -r ../.bashrc ~/
cp -r ../tensor_test.py ~/
# babi theme setup
mkdir -p ~/.config/babi/
cp -r ../theme.json ~/.config/babi
