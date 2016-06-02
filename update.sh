#!/bin/bash

echo "Pull all submodules"
git pull origin master && git submodule init && git submodule update && git submodule status
