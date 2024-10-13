#!/bin/bash
pid=$(ps -elf | grep 'vwa.jar' | grep -v 'grep' | awk '{print $4}')
java -jar dumpclass-0.0.2.jar  -p $pid -o /root/data/dump --classLoaderPrefix $1