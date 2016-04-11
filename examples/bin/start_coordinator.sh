#!/bin/bash -eu

nohup java `cat conf-quickstart/druid/coordinator/jvm.config | xargs` -cp conf-quickstart/druid/_common:conf-quickstart/druid/coordinator:lib/* io.druid.cli.Main server coordinator > log/coordinator.log &
