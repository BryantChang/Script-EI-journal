#!/bin/bash

RES_LOG_BASE=/home/hadoop/bryantchang/codes/SparkBench/logs
WSMC_BIG_BASE=/home/hadoop/bryantchang/codes/SparkBench/logs/WSMC_BIG
WSMC_MID_BASE=/home/hadoop/bryantchang/codes/SparkBench/logs/WSMC_MID
WSMC_SMALL_BASE=/home/hadoop/bryantchang/codes/SparkBench/logs/WSMC_SMALL
DEF_BIG_BASE=/home/hadoop/bryantchang/codes/SparkBench/logs/DEF_BIG
DEF_MID_BASE=/home/hadoop/bryantchang/codes/SparkBench/logs/DEF_MID
DEF_SMALL_BASE=/home/hadoop/bryantchang/codes/SparkBench/logs/DEF_SMALL



WORKLOAD_CONF=/home/hadoop/bryantchang/tools/script-ei/conf/workloadConf.sh
COMMON_CONF=/home/hadoop/bryantchang/tools/script-ei/conf/commonConf.sh
SCRIPT_TO_RUN_FILE=/home/hadoop/bryantchang/tools/script-ei/scripts_to_run/testScript.sh
WORKLOAD_NUM=12
COMBINE_NUM=2
SLEEP_IN_GROUP=1
SLEEP_BETWEEN_GROUPS=600
USE_HISTORY=false
HISTORY_FILE=historyFile
