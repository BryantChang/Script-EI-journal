#!/bin/bash 

sed -i "/TYPE=/ c TYPE=300M" /home/hadoop/bryantchang/codes/SparkBench/SVDPlusPlus/conf/env.sh
sed -i "/SPARK_EXECUTOR_MEMORY=/ c SPARK_EXECUTOR_MEMORY=1460m" /home/hadoop/bryantchang/codes/SparkBench/SVDPlusPlus/conf/env.sh
sed -i 's///g' /home/hadoop/bryantchang/codes/SparkBench/SVDPlusPlus/conf/env.sh
sh /home/hadoop/bryantchang/codes/SparkBench/SVDPlusPlus/bin/run.sh WSMC_BIG 0&
sleep 1

sed -i "/TYPE=/ c TYPE=300M" /home/hadoop/bryantchang/codes/SparkBench/PageRank/conf/env.sh
sed -i "/SPARK_EXECUTOR_MEMORY=/ c SPARK_EXECUTOR_MEMORY=1600m" /home/hadoop/bryantchang/codes/SparkBench/PageRank/conf/env.sh
sed -i 's///g' /home/hadoop/bryantchang/codes/SparkBench/PageRank/conf/env.sh
sh /home/hadoop/bryantchang/codes/SparkBench/PageRank/bin/run.sh WSMC_BIG 0&

sleep 600


