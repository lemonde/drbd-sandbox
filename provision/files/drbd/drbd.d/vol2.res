resource vol2 {

    device      /dev/drbd2;
    disk        /dev/centos/lv2;
    meta-disk   internal;

    on node1 {
       address  172.30.105.31:20200;
    }

    on node2 {
       address  172.30.105.32:20200;
    }

}