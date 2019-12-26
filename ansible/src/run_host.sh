#!/usr/bin/env bash

sudo mkdir /sys/fs/cgroup/systemd
sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd


cd host && docker build . -t ansible-host
docker run --name ansible_host -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2222:22 -p 8080:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host