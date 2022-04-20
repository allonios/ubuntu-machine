#!/usr/bin/env bash

cp -r ../.themes ~/
cp -r ../.bash_aliases ~/
cp -r ../.bashrc ~/
# babi theme setup
mkdir -p ~/.config/babi/
cp -r ../theme.json ~/.config/babi
