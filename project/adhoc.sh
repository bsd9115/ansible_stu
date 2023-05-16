#!/bin/bash
# ansible all -m yum -a 'name=epel-release state=absent'

# ansible all -m shell -a 'ls /etc/yum.repos.d/EPEL*.repo'
# ansible all -m shell -a 'cat /etc/yum.repos.d/EPEL*.repo'

ansible all -m yum_repository \
-a 'name="EPEL_BASE" description="EPEL base software" baseurl="https://dl.fedoraproject.org/pub/archive/epel/8.5/Everything/x86_64/" gpgcheck=no'
ansible all -m yum_repository \
-a 'name="EPEL_MODULER" description="EPEL moduler software" baseurl="https://dl.fedoraproject.org/pub/archive/epel/8.5/Modular/x86_64/" gpgcheck=no'


: << EOF
[EPEL base software]
name=....
vaseurl=...
enabled=1
gpgcheck=0
EOF
