# DRBD sandbox

## Introduction

Ansible playbook & Vagrant file to set up a DRBD sandbox.

Specifications:
- Le Monde CentOS 7.0 Vagrant box
- DRBD 8.4 from [El Repo](http://elrepo.org/)
- two nodes setup:
  - node1 (172.30.105.31) as primary
  - node2 (172.30.105.32) as secondary
  - on each node:
    - three lvm logical volume (lv0, lv1, lv2), each 2G
    - three DRBD volumes (vol0, vol1, vol2) on top of lv's
    - DRBD volumes mounted under /mnt/

DRBD user's guide is available at http://drbd.linbit.com/users-guide-emb/drbd-users-guide.html

## Pre-requisites

- [Ansible](http://docs.ansible.com/)
- [VirtualBox](https://www.virtualbox.org)
- [Vagrant](https://vagrantup.com)

## Setup

1. clone repo

        $ git clone git@github.com:lemonde/drbd-sandbox.git
        $ cd drbd-sandbox/

2. launch node1 and node2 :

        $ vagrant up

3. ssh to the boxes :

        $ vagrant ssh node1
        $ vagrant ssh node2

4. watch on both nodes (`watch cat /proc/drbd`) DRBD volumes getting created and sync'ed.
5. have fun!

# License

MIT