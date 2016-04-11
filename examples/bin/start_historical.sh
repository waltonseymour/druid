#!/bin/bash -eu

nohup java `cat conf-quickstart/druid/historical/jvm.config | xargs` -cp conf-quickstart/druid/_common:conf-quickstart/druid/historical:lib/* io.druid.cli.Main server historical > log/historical.log &
