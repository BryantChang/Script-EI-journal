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
PAGERANK_INPUT_SIZE=300
MEM_PAGERANK=1600

###SVD++###
svdpp_executable_basedir=SVDPlusPlus/bin
svdpp_config_basedir=SVDPlusPlus/conf
SVDPP_INPUT_SIZE=300
MEM_SVDPP=1460

###TriangleCount###
tc_executable_basedir=TriangleCount/bin
tc_config_basedir=TriangleCount/conf
TC_INPUT_SIZE=300
MEM_TC=2048

###ShortestPath###
sp_executable_basedir=ShortestPath/bin
sp_config_basedir=ShortestPath/conf
SP_INPUT_SIZE=600
MEM_SP=1600

###Terasort###
terasort_executable_basedir=Terasort/bin
terasort_config_basedir=Terasort/conf
TERASORT_INPUT_SIZE=800
MEM_TERASORT=1600



###ConnectedComponent###
cc_executable_basedir=ConnectedComponent/bin
cc_config_basedir=ConnectedComponent/conf
CC_INPUT_SIZE=800
MEM_CC=1230


###SVM###
svm_executable_basedir=SVM/bin
svm_config_basedir=SVM/conf
SVM_INPUT_SIZE=800
MEM_SVM=1230


###PCA###
pca_executable_basedir=PCA/bin
pca_config_basedir=PCA/conf
PCA_INPUT_SIZE=800
MEM_PCA=1230

###DecisionTree###
dt_executable_basedir=DecisionTree/bin
dt_config_basedir=DecisionTree/conf
DT_INPUT_SIZE=800
MEM_DT=1230

###KMeans###
kmeans_executable_basedir=KMeans/bin
kmeans_config_basedir=KMeans/conf
KMEANS_INPUT_SIZE=1200
MEM_KMEANS=1040


###LogisticRegression###
lr_executable_basedir=LogisticRegression/bin
lr_config_basedir=LogisticRegression/conf
LR_INPUT_SIZE=1200
MEM_LR=1040


###MatrixFactorization###
mf_executable_basedir=MatrixFactorization/bin
mf_config_basedir=MatrixFactorization/conf
MF_INPUT_SIZE=1200
MEM_MF=1040









