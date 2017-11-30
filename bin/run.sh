#!/bin/bash

function usage() {
    echo "Usage: $0 <expType>"
}

function incorrect_params() {
    echo "The exp_type must be one of (WSMC_BIG|
    WSMC_MID|WSMC_SMALL|DEF_BIG|DEF_MID|DEF_SMALL)"
}

##get the current path and initialize some constant values
bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
DIR=`cd $bin/../; pwd`

LIBS="${DIR}/libs"
BIN="${DIR}/bin"
CONF="${DIR}/conf"
SCRIPT_TO_RUN="${DIR}/scripts_to_run"


##source the env
. "${CONF}/env.sh"


if [[ $# -lt 1 ]]; then
    usage
    exit
fi

exp_type=$1

echo "create the directories"

log_dir=""
case $exp_type in
"WSMC_BIG")
    $log_dir=$WSMC_BIG_BASE
    ;;
"WSMC_MID")
    $log_dir=$WSMC_MID_BASE
    ;;
"WSMC_SMALL")
    $log_dir=$WSMC_SMALL_BASE
    ;;
"DEF_BIG")
    $log_dir=$DEF_BIG_BASE
    ;;
"DEF_MID")
    $log_dir=$DEF_MID_BASE
    ;;
"DEF_SMALL")
    $log_dir=$DEF_SMALL_BASE
    ;;
*)
    incorrect_params
    exit
esac

mkdir -p $log_dir

##delete file if exist logs
file_count=`ls -al  *.log | grep "^-" | wc -l`

if [[ $file_count -ne 0 ]]; then
    rm -rf *.log
fi

chmod +x $SCRIPT_TO_RUN/testScript.sh

sh $SCRIPT_TO_RUN/testScript.sh

