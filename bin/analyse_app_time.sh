#!/bin/bash

function usage() {
    echo "Usage $0 <exp_type>"
}

function incorrect_params() {
    echo "The exp_type must be one of (WSMC_BIG|
    WSMC_MID|WSMC_SMALL|DEF_BIG|DEF_MID|DEF_SMALL)"
}

if [[ $# -lt 1 ]]; then
    usage
    exit
fi

##get the current path and initialize some constant values
bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
DIR=`cd $bin/../; pwd`

LIBS="${DIR}/libs"
BIN="${DIR}/bin"
CONF="${DIR}/conf"
SCRIPT_TO_RUN="${DIR}/scripts_to_run"
LOG_DIR="${DIR}/logs"


##source the env
. "${CONF}/env.sh"

exp_type=$1
log_dir=""
case ${exp_type} in
"WSMC_BIG"|"WSMC_MID"|"WSMC_SMALL"|"DEF_BIG"|"DEF_MID"|"DEF_SMALL")
    log_dir=${ANALYSE_LOG_BASE}
    ;;
*)
    incorrect_params
    exit
esac

python ${LIBS}/analyse_app_time.py ${log_dir} ${exp_type} ${ANALYSE_RES_BASE}