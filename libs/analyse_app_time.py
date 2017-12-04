import sys
import os
from os import listdir


res_log_base = sys.argv[1]
exp_type = sys.argv[2]
summary_log_base = sys.argv[3]




isExists = os.path.exists(summary_log_base)

time_dic = {'SVDPlusPlus':0.00, 'PageRank':0.00, 'ShortestPaths':0.00, 'PCA':0.00, 'SVM':0.00,
            'Terasort':0.00, 'ConnectedComponent':0.00, 'DecisionTree':0.00,
            'TriangleCount':0.00, 'MF':0.00, 'KMeans':0.00, 'LogisticRegression':0.00}
if not isExists:
    os.mkdir(summary_log_base)

summary_log_path = summary_log_base + "/" + exp_type + ".csv"
for filename in os.listdir(res_log_base + "/" + exp_type):
    handeler = open(res_log_base + "/" + exp_type + "/" + filename, 'r')
    a=[i.split(':') for i in handeler.readlines()]
    index = 0
    while index < len(a):
        app_name = a[index][0]
        sec = float(a[index][1].replace('\n', ''))
        time_dic[app_name] += sec
        index += 1
    handeler.close()

for index in time_dic:
    time_dic[index] /= 11

summary_log_handeler = open(summary_log_path, 'w')
summary_log_handeler.write("APP,Time\n")
for index in time_dic:
    summary_log_handeler.write("%s,%0.2f\n"%(index, time_dic[index]))
print ("analyse finish")
summary_log_handeler.close()


