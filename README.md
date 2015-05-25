# DRBD sandbox

## Introduction

Ansible playbook & Vagrant file to set up a DRBD sandbox.

Specifications:
- [chef/centos-7.0](https://atlas.hashicorp.com/chef/boxes/centos-7.0) Vagrant box
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

- Launch node1 and node2
$ vagrant up
- ssh to the boxes
$ vagrant ssh <node>
- watch DRBD volumes getting created and sync'ed (`watch cat /proc/drbd`).

# License

MIT