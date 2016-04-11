#!/bin/bash -eu

nohup java `cat conf-quickstart/druid/broker/jvm.config | xargs` -cp conf-quickstart/druid/_common:conf-quickstart/druid/broker:lib/* io.druid.cli.Main server broker > log/broker.log &
