#!/usr/bin/env bash

docker-machine ssh default "sudo mkdir -p /sys/fs/cgroup/systemd"
docker-machine ssh default "sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd"

cd host && docker build . -t ansible-host
docker run --name ansible_host_a -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2222:22 -p 8080:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host
docker run --name ansible_host_b -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2223:22 -p 8081:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host
docker run --name ansible_host_c -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2224:22 -p 8082:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host
docker run --name ansible_host_e -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2225:22 -p 8083:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host
docker run --name ansible_host_f -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2226:22 -p 8084:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host
docker run --name ansible_host_g -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2227:22 -p 8085:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host
docker run --name ansible_host_h -d --cap-add SYS_ADMIN --cap-add SYS_NICE --security-opt seccomp=unconfined -p  2228:22 -p 8086:8080 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro ansible-host