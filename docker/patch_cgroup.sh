#!/bin/sh
container_cgroup=$(cat /proc/self/cgroup | cut -c4-)
echo 'max' > "/sys/fs/cgroup/$container_cgroup/memory.swap.max"
