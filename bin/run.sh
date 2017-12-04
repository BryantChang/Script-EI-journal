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
LOG_DIR="${DIR}/logs"


##source the env
. "${CONF}/env.sh"


if [[ $# -lt 1 ]]; then
    usage
    exit
fi

exp_type=$1

echo "create the directories"

log_dir=""
case ${exp_type} in
"WSMC_BIG"|"WSMC_MID"|"WSMC_SMALL"|"DEF_BIG"|"DEF_MID"|"DEF_SMALL")
    log_dir=${RES_LOG_BASE}/${exp_type}
    ;;
*)
    incorrect_params
    exit
esac

mkdir -p ${log_dir}

execute_log=${LOG_DIR}/${exp_type}.log

cd ${log_dir}
##delete file if exist logs
file_count=`ls -al | grep "^-" | wc -l`

if [[ ${file_count} -ne 0 ]]; then
    rm -rf *.log
fi

chmod +x ${BIN}/generate_script.sh
${BIN}/generate_script.sh ${exp_type}

chmod +x ${SCRIPT_TO_RUN}/testScript.sh

hadoop fs -rmr /eventLogs/*

if [[ -f ${execute_log} ]]; then
    rm -rf ${execute_log}
fi

nohup sh ${SCRIPT_TO_RUN}/testScript.sh >> ${execute_log} &

