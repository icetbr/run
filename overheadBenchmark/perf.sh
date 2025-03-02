#!/bin/bash

hyperfine -N --warmup 5 --export-markdown results.md \
'npm start'              \
'bun start'              \
'node echo.js'           \
'bun echoBunShell.js'    \
'python3 echo.py'        \
'bun echo.js'            \
'bun echoBun.sh'         \
'perl echo.pl'           \
'echo hello'

