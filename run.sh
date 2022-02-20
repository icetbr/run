#!/bin/bash

# error handling, see https://mobile.twitter.com/b0rk/status/1314345978963648524
#
# -e stops the script on errors
# -u stops the script unset variables
# -o pipefail stops pipelines on command fail
set -euo pipefail

# include file's content
source $(dirname $0)/utils.sh

build() {
   echo "I am ${FUNCNAME[0]}ing"
}

test() { echo "I am ${FUNCNAME[0]}ing in just one line. THE ENDING ; is REQUIRED"; }

# >/run.sh deploy a b c
# I am deploying with Arg 1=a Arg 2=b and Arg 3=c
deploy() {
   echo "I am ${FUNCNAME[0]}ing with args '$1 $2 $3'"
}

all() {
   SECONDS=0 # SECONDS is a native bash variable that counts the time since the script has started
   header 'RUNNING ALLL'

   build && test && deploy a b c
   sleep 1

   green "\ndone $(asMMSS $SECONDS)\n"
}


"$@" # <- execute the task
