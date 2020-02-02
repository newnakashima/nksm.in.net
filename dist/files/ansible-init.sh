#!/bin/bash

set -euo pipefail

if [ $# -lt 1 ]; then
    echo "One argument are needed."
    exit 1
fi

if [ ! -d $1 ]; then
    mkdir -p $1
fi

base_dir=$1
cd $base_dir

for d in local development staging production
do
    mkdir -p hosts/${d}/group_vars
    echo "---" > hosts/${d}/group_vars/group1.yml
    echo "---" > hosts/${d}/group_vars/group2.yml
    mkdir hosts/${d}/host_vars
    echo "---" > hosts/${d}/host_vars/hostname1.yml
    echo "---" > hosts/${d}/host_vars/hostname2.yml
done

echo "---" > site.yml

mkdir roles
ansible-galaxy init roles/common
ansible-galaxy init roles/webtier
ansible-galaxy init roles/monitoring
ansible-galaxy init roles/fooapp
