#!/bin/bash

echo "Pull all submodules"
git pull && git submodule init && git submodule update && git submodule status
