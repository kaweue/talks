#!/usr/bin/env bash

pushd wordpress-nginx
time ansible-playbook -i inventory site.yml
popd