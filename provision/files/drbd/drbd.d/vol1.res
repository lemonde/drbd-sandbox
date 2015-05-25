resource vol1 {

    device      /dev/drbd1;
    disk        /dev/vg0/lv1;
    meta-disk   internal;

    on node1 {
       address  172.30.105.31:20100;
    }

    on node2 {
       address  172.30.105.32:20100;
    }

}