#!/bin/bash 

sed -i "/TYPE=/ c TYPE=300MB" /home/zc/bryantchang/SparkBench/SVDPlusPlus/conf/env.sh
sed -i "/SPARK_EXECUTOR_MEMORY=/ c SPARK_EXECUTOR_MEMORY=1460m" /home/zc/bryantchang/SparkBench/SVDPlusPlus/conf/env.sh
sed -i 's/
//g' /home/zc/bryantchang/SparkBench/SVDPlusPlus/conf/env.sh
sh /home/zc/bryantchang/SparkBench/SVDPlusPlus/bin/run.sh&
sleep 1

sed -i "/TYPE=/ c TYPE=300MB" /home/zc/bryantchang/SparkBench/PageRank/conf/env.sh
sed -i "/SPARK_EXECUTOR_MEMORY=/ c SPARK_EXECUTOR_MEMORY=1600m" /home/zc/bryantchang/SparkBench/PageRank/conf/env.sh
sed -i 's/
//g' /home/zc/bryantchang/SparkBench/PageRank/conf/env.sh
sh /home/zc/bryantchang/SparkBench/PageRank/bin/run.sh&

sleep 600