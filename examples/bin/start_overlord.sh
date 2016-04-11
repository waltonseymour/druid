#!/bin/bash -eu

nohup java `cat conf-quickstart/druid/overlord/jvm.config | xargs` -cp conf-quickstart/druid/_common:conf-quickstart/druid/overlord:lib/* io.druid.cli.Main server overlord > log/overlord.log &
