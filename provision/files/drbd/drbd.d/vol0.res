resource vol0 {

    device      /dev/drbd0;
    disk        /dev/vg0/lv0;
    meta-disk   internal;

    on node1 {
       address  172.30.105.31:20000;
    }

    on node2 {
       address  172.30.105.32:20000;
    }

}