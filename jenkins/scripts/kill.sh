#!/usr/bin/env bash

set -x
kill $(cat .pidfile)
