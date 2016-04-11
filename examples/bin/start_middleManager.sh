#!/bin/bash -eu

nohup java `cat conf-quickstart/druid/middleManager/jvm.config | xargs` -cp conf-quickstart/druid/_common:conf-quickstart/druid/middleManager:lib/* io.druid.cli.Main server middleManager > log/middleManager.log &
