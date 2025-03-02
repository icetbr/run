#!/usr/bin/env bash
# Written in [Amber](https://amber-lang.com/)
# version: 0.4.0-alpha
# date: 2025-02-25 08:06:14
__0_age=30
if [ $(echo ${__0_age} '<' 18 | bc -l | sed '/\./ s/\.\{0,1\}0\{1,\}$//') != 0 ]; then
    echo "I'm not an adult yet"
else
    echo "I'm an adult"
fi
