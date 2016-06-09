#!/bin/bash

echo "Pull all submodules"
git pull github master && git submodule init && git submodule update && git submodule status
