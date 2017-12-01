#!/usr/bin/env bash
###This is the config file of env and workloads configurations

###env configurations
HADOOP_HOME=/home/hadoop/bryantchang/platforms/hadoop-2.7.0
SPARK_HOME=/home/hadoop/bryantchang/platforms/Spark_Master
SPARK_BENCH_HOME=/home/hadoop/bryantchang/codes/SparkBench
DATA_HDFS_BASE=hdfs://spark1:9000/BryantChang/SparkBench
LAB_CONFIG_DIR=/usr/home/Bryant_Chang/scripts/workload-gen/config/experiment_config


###workloads configurations

###e.g.
###pagerank_executable_basedir=PageRank/bin
###pagerank_config_basedir=PageRank/conf
###MEM_PAGERANK=300(MB)

###PageRank###
pagerank_executable_basedir=PageRank/bin
pagerank_config_basedir=PageRank/conf
PAGERANK_INPUT_SIZE=600
MEM_PAGERANK=1440

###SVD++###
svdpp_executable_basedir=SVDPlusPlus/bin
svdpp_config_basedir=SVDPlusPlus/conf
SVDPP_INPUT_SIZE=600
MEM_SVDPP=1540

###TriangleCount###
tc_executable_basedir=TriangleCount/bin
tc_config_basedir=TriangleCount/conf
TC_INPUT_SIZE=600
MEM_TC=1640

###ShortestPath###
sp_executable_basedir=ShortestPaths/bin
sp_config_basedir=ShortestPaths/conf
SP_INPUT_SIZE=600
MEM_SP=1280

###Terasort###
terasort_executable_basedir=Terasort/bin
terasort_config_basedir=Terasort/conf
TERASORT_INPUT_SIZE=600
MEM_TERASORT=1120



###ConnectedComponent###
cc_executable_basedir=ConnectedComponent/bin
cc_config_basedir=ConnectedComponent/conf
CC_INPUT_SIZE=600
MEM_CC=1120


###SVM###
svm_executable_basedir=SVM/bin
svm_config_basedir=SVM/conf
SVM_INPUT_SIZE=600
MEM_SVM=1120


###PCA###
pca_executable_basedir=PCA/bin
pca_config_basedir=PCA/conf
PCA_INPUT_SIZE=600
MEM_PCA=1120

###DecisionTree###
dt_executable_basedir=DecisionTree/bin
dt_config_basedir=DecisionTree/conf
DT_INPUT_SIZE=600
MEM_DT=1120

###KMeans###
kmeans_executable_basedir=KMeans/bin
kmeans_config_basedir=KMeans/conf
KMEANS_INPUT_SIZE=600
MEM_KMEANS=960


###LogisticRegression###
lr_executable_basedir=LogisticRegression/bin
lr_config_basedir=LogisticRegression/conf
LR_INPUT_SIZE=600
MEM_LR=960


###MatrixFactorization###
mf_executable_basedir=MatrixFactorization/bin
mf_config_basedir=MatrixFactorization/conf
MF_INPUT_SIZE=600
MEM_MF=960









