#!/bin/bash


echo "stopping sctipt"

ps -ef | grep scripts_to_run | grep -v grep | kill -9 awk '{print $2}'