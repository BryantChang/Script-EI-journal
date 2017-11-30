#!/bin/bash


function usage() {
    echo "Usage: $0 <expType>"
}

if [[ $# -lt 1 ]]; then
    usage
    exit
fi

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

OPT="--confW ${WORKLOAD_CONF} --confC ${COMMON_CONF} --dest ${SCRIPT_TO_RUN_FILE} --wcount ${WORKLOAD_NUM} --ccount ${COMBINE_NUM} --expType ${exp_type} --ingroup ${SLEEP_IN_GROUPS} --begroup ${SLEEP_BETWEEN_GROUPS} --useHistory ${USE_HISTORY} --historyFile ${HISTORY_FILE}"

echo "generating scripts"

java -classpath ${LIBS}/mix_workload_generator.jar com.bryant.generator.GenWorkload ${OPT}

echo "finish"

