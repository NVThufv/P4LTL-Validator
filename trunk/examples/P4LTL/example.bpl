//#LTLProperty: (<>(AP(drop)))

type Ref;
type error=int;
type HeaderStack = [int]Ref;
var last:[HeaderStack]Ref;
var forward:bool;
var isValid:[Ref]bool;
var stack.index:[HeaderStack]int;
var size:[HeaderStack]int;
var drop:bool;
var assertDummy:bool;

// Struct standard_metadata_t
var standard_metadata.ingress_port:int;
var standard_metadata.egress_spec:int;
var standard_metadata.egress_port:int;
var standard_metadata.instance_type:int;
var standard_metadata.packet_length:int;
var standard_metadata.enq_timestamp:int;
var standard_metadata.enq_qdepth:int;
var standard_metadata.deq_timedelta:int;
var standard_metadata.deq_qdepth:int;
var standard_metadata.ingress_global_timestamp:int;
var standard_metadata.egress_global_timestamp:int;
var standard_metadata.mcast_grp:int;
var standard_metadata.egress_rid:int;
var standard_metadata.checksum_error:int;
var standard_metadata.parser_error:error;
var standard_metadata.priority:int;

// Register count
var count:[int]int;
const count.size:int;
axiom count.size == 1;

// Register es_box
var es_box:[int]int;
const es_box.size:int;
axiom es_box.size == 256;

// Register ds_box
var ds_box:[int]int;
const ds_box.size:int;
axiom ds_box.size == 256;

// Register user_mac
var user_mac:[int]int;
const user_mac.size:int;
axiom user_mac.size == 1;
type macAddr_t = int;
type ip4Addr_t = int;
type ip6Addr_t = int;

// Struct metadata

// Struct headers

// Header ethernet_t
var hdr.ethernet:Ref;
var hdr.ethernet.valid:bool;
var hdr.ethernet.emit:bool;
var hdr.ethernet.dstAddr:macAddr_t;
var _old_hdr.ethernet.dstAddr: int;
var hdr.ethernet.srcAddr:macAddr_t;
var _old_hdr.ethernet.srcAddr: int;
var hdr.ethernet.etherType:int;

// Header ipv6_t
var hdr.ipv6:Ref;
var hdr.ipv6.valid:bool;
var hdr.ipv6.emit:bool;
var hdr.ipv6.version:int;
var hdr.ipv6.trafclass:int;
var hdr.ipv6.flowlabel:int;
var hdr.ipv6.payloadlen:int;
var hdr.ipv6.nextheader:int;
var hdr.ipv6.hoplimit:int;
var hdr.ipv6.srcAddr:ip6Addr_t;
var hdr.ipv6.dstAddr:ip6Addr_t;

// Header ipv4_t
var hdr.ipv4_tunnel:Ref;
var hdr.ipv4_tunnel.valid:bool;
var hdr.ipv4_tunnel.emit:bool;
var hdr.ipv4_tunnel.version:int;
var hdr.ipv4_tunnel.ihl:int;
var hdr.ipv4_tunnel.diffserv:int;
var hdr.ipv4_tunnel.totalLen:int;
var hdr.ipv4_tunnel.identification:int;
var hdr.ipv4_tunnel.flags:int;
var hdr.ipv4_tunnel.fragOffset:int;
var hdr.ipv4_tunnel.ttl:int;
var hdr.ipv4_tunnel.protocol:int;
var hdr.ipv4_tunnel.hdrChecksum:int;
var hdr.ipv4_tunnel.srcAddr:ip4Addr_t;
var hdr.ipv4_tunnel.dstAddr:ip4Addr_t;

// Header ipv4_t
var hdr.ipv4:Ref;
var hdr.ipv4.valid:bool;
var hdr.ipv4.emit:bool;
var hdr.ipv4.version:int;
var hdr.ipv4.ihl:int;
var hdr.ipv4.diffserv:int;
var hdr.ipv4.totalLen:int;
var hdr.ipv4.identification:int;
var hdr.ipv4.flags:int;
var hdr.ipv4.fragOffset:int;
var hdr.ipv4.ttl:int;
var hdr.ipv4.protocol:int;
var hdr.ipv4.hdrChecksum:int;
var hdr.ipv4.srcAddr:ip4Addr_t;
var hdr.ipv4.dstAddr:ip4Addr_t;
var _old_hdr.ipv4.dstAddr: int;

// Header tcp_t
var hdr.tcp:Ref;
var hdr.tcp.valid:bool;
var hdr.tcp.emit:bool;
var hdr.tcp.srcport:int;
var hdr.tcp.dstport:int;
var hdr.tcp.sequence:int;
var hdr.tcp.ackseq:int;
var hdr.tcp.headerlength:int;
var hdr.tcp.reservation:int;
var hdr.tcp.URG:int;
var hdr.tcp.ACK:int;
var hdr.tcp.PSH:int;
var hdr.tcp.RST:int;
var hdr.tcp.SYN:int;
var hdr.tcp.FIN:int;
var hdr.tcp.windowsize:int;
var hdr.tcp.checksum:int;
var hdr.tcp.pointer:int;

// Header udp_t
var hdr.udp_tunnel:Ref;
var hdr.udp_tunnel.valid:bool;
var hdr.udp_tunnel.emit:bool;
var hdr.udp_tunnel.srcport:int;
var hdr.udp_tunnel.dstport:int;
var hdr.udp_tunnel.userlength:int;
var hdr.udp_tunnel.checksum:int;
var temp_0:int;
var tmp:int;
var tmp_0:int;
var tmp_1:int;
var tmp_2:int;
var tmp_3:int;
var tmp_4:int;
var tmp_5:int;
var tmp_6:int;
var tmp_7:int;
var tmp_8:int;
var tmp_9:int;
var tmp_10:int;
var tmp_11:int;
var tmp_12:int;
var tmp_13:int;
var tmp_14:int;
function {:inline true} add.bv16(left:int, right:int) : int{((left%power_2_16())+(right%power_2_16()))%power_2_16()}
var tmp_15:int;
var tmp_16:int;
var tmp_17:int;
var tmp_18:int;
var tmp_19:int;
var tmp_20:int;
var tmp_21:int;
var tmp_22:int;
var tmp_23:int;
var tmp_24:int;
var tmp_25:int;
var tmp_26:int;
var tmp_27:int;
var tmp_28:int;
var tmp_29:int;
var tmp_30:int;
function {:inline true} power_2_0() : int{1}
function {:inline true} power_2_1() : int{2}
function {:inline true} power_2_2() : int{4}
function {:inline true} power_2_3() : int{8}
function {:inline true} power_2_4() : int{16}
function {:inline true} power_2_5() : int{32}
function {:inline true} power_2_6() : int{64}
function {:inline true} power_2_7() : int{128}
function {:inline true} power_2_8() : int{256}
function {:inline true} power_2_9() : int{512}
function {:inline true} power_2_10() : int{1024}
function {:inline true} power_2_11() : int{2048}
function {:inline true} power_2_12() : int{4096}
function {:inline true} power_2_13() : int{8192}
function {:inline true} power_2_14() : int{16384}
function {:inline true} power_2_15() : int{32768}
function {:inline true} power_2_16() : int{65536}
function {:inline true} power_2_17() : int{131072}
function {:inline true} power_2_18() : int{262144}
function {:inline true} power_2_19() : int{524288}
function {:inline true} power_2_20() : int{1048576}
function {:inline true} power_2_21() : int{2097152}
function {:inline true} power_2_22() : int{4194304}
function {:inline true} power_2_23() : int{8388608}
function {:inline true} power_2_24() : int{16777216}
function {:inline true} power_2_25() : int{33554432}
function {:inline true} power_2_26() : int{67108864}
function {:inline true} power_2_27() : int{134217728}
function {:inline true} power_2_28() : int{268435456}
function {:inline true} power_2_29() : int{536870912}
function {:inline true} power_2_30() : int{1073741824}
function {:inline true} power_2_31() : int{2147483648}
function {:inline true} power_2_32() : int{4294967296}
function {:inline true} power_2_33() : int{8589934592}
function {:inline true} power_2_34() : int{17179869184}
function {:inline true} power_2_35() : int{34359738368}
function {:inline true} power_2_36() : int{68719476736}
function {:inline true} power_2_37() : int{137438953472}
function {:inline true} power_2_38() : int{274877906944}
function {:inline true} power_2_39() : int{549755813888}
function {:inline true} power_2_40() : int{1099511627776}
function {:inline true} power_2_41() : int{2199023255552}
function {:inline true} power_2_42() : int{4398046511104}
function {:inline true} power_2_43() : int{8796093022208}
function {:inline true} power_2_44() : int{17592186044416}
function {:inline true} power_2_45() : int{35184372088832}
function {:inline true} power_2_46() : int{70368744177664}
function {:inline true} power_2_47() : int{140737488355328}
function {:inline true} power_2_48() : int{281474976710656}
function {:inline true} power_2_49() : int{562949953421312}
function {:inline true} power_2_50() : int{1125899906842624}
function {:inline true} band(left:int, right:int) : int{((left+right)-(left+right)%2)/2}
function {:inline true} bxor(left:int, right:int) : int{(left+right)%2}
function {:inline true} bor(left:int, right:int) : int{(left+right)%2+((left+right)-((left+right)%2))/2}
function {:inline true} bnot(num:int) : int{1-num%2}

// Control MyComputeChecksum
procedure {:inline 1} MyComputeChecksum()
{
    // update_checksum
    // update_checksum
}

// Control MyEgress
procedure {:inline 1} MyEgress()
	modifies hdr.tcp.ackseq, hdr.tcp.sequence, tmp_15, tmp_16, tmp_17, tmp_18, tmp_19, tmp_20, tmp_21, tmp_22, tmp_23, tmp_24, tmp_25, tmp_26, tmp_27, tmp_28, tmp_29, tmp_30;
{
    if(((standard_metadata.egress_port == 0)) && (hdr.tcp.valid)){
        call read_dsbox();
    }
}

// Control MyIngress
procedure {:inline 1} MyIngress()
	modifies count, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4_tunnel.diffserv, hdr.ipv4_tunnel.dstAddr, hdr.ipv4_tunnel.flags, hdr.ipv4_tunnel.fragOffset, hdr.ipv4_tunnel.identification, hdr.ipv4_tunnel.ihl, hdr.ipv4_tunnel.protocol, hdr.ipv4_tunnel.srcAddr, hdr.ipv4_tunnel.totalLen, hdr.ipv4_tunnel.ttl, hdr.ipv4_tunnel.valid, hdr.ipv4_tunnel.version, hdr.ipv6.dstAddr, hdr.ipv6.hoplimit, hdr.ipv6.nextheader, hdr.ipv6.payloadlen, hdr.ipv6.srcAddr, hdr.ipv6.valid, hdr.ipv6.version, hdr.tcp.ackseq, hdr.tcp.sequence, hdr.udp_tunnel.checksum, hdr.udp_tunnel.dstport, hdr.udp_tunnel.srcport, hdr.udp_tunnel.userlength, hdr.udp_tunnel.valid, standard_metadata.egress_port, standard_metadata.egress_spec, temp_0, tmp, tmp_0, tmp_1, tmp_10, tmp_11, tmp_12, tmp_13, tmp_14, tmp_2, tmp_3, tmp_4, tmp_5, tmp_6, tmp_7, tmp_8, tmp_9, user_mac;
{
    if((standard_metadata.ingress_port == 0)){
        if((hdr.ipv4.dstAddr == 2071690107)){
            hdr.ethernet.dstAddr := 174219185552744;
            standard_metadata.egress_spec := 1;
            standard_metadata.egress_port := 1;
            forward := true;
        }
        else{
            if(((hdr.ethernet.dstAddr != 281474976710655)) && ((hdr.ethernet.srcAddr != 0))){
                call store_user_mac();
                if(hdr.tcp.valid){
                    call read_esbox();
                }
                call do_read_count();
                if((temp_0 == 0)){
                    call creatipv6_1();
                    // write
                    call count.write(0, 1);
                    standard_metadata.egress_spec := 1;
                    standard_metadata.egress_port := 1;
                    forward := true;
                }
                if((temp_0 == 1)){
                    call creatmytunnel();
                    // write
                    call count.write(0, 2);
                    standard_metadata.egress_spec := 2;
                    standard_metadata.egress_port := 2;
                    forward := true;
                }
                if((temp_0 == 2)){
                    call creatipv6_2();
                    // write
                    call count.write(0, 0);
                    standard_metadata.egress_spec := 3;
                    standard_metadata.egress_port := 3;
                    forward := true;
                }
            }
        }
    }
    else{
        hdr.ethernet.etherType := 2048;
        // read
        hdr.ethernet.dstAddr := user_mac.read(user_mac, 0);
        if(hdr.ipv4_tunnel.valid){
            hdr.ipv4_tunnel.valid := false;
            hdr.udp_tunnel.valid := false;
        }
        else{
            if(hdr.ipv6.valid){
                hdr.ipv6.valid := false;
            }
        }
        standard_metadata.egress_spec := 0;
        standard_metadata.egress_port := 0;
        forward := true;
    }
}

// Control MyVerifyChecksum
procedure {:inline 1} MyVerifyChecksum()
{
}
procedure ULTIMATE.start()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.srcAddr, _old_hdr.ipv4.dstAddr, assertDummy, count, drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.emit, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.emit, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_tunnel.diffserv, hdr.ipv4_tunnel.dstAddr, hdr.ipv4_tunnel.emit, hdr.ipv4_tunnel.flags, hdr.ipv4_tunnel.fragOffset, hdr.ipv4_tunnel.hdrChecksum, hdr.ipv4_tunnel.identification, hdr.ipv4_tunnel.ihl, hdr.ipv4_tunnel.protocol, hdr.ipv4_tunnel.srcAddr, hdr.ipv4_tunnel.totalLen, hdr.ipv4_tunnel.ttl, hdr.ipv4_tunnel.valid, hdr.ipv4_tunnel.version, hdr.ipv6.dstAddr, hdr.ipv6.emit, hdr.ipv6.flowlabel, hdr.ipv6.hoplimit, hdr.ipv6.nextheader, hdr.ipv6.payloadlen, hdr.ipv6.srcAddr, hdr.ipv6.trafclass, hdr.ipv6.valid, hdr.ipv6.version, hdr.tcp.ACK, hdr.tcp.FIN, hdr.tcp.PSH, hdr.tcp.RST, hdr.tcp.SYN, hdr.tcp.URG, hdr.tcp.ackseq, hdr.tcp.checksum, hdr.tcp.dstport, hdr.tcp.emit, hdr.tcp.headerlength, hdr.tcp.pointer, hdr.tcp.reservation, hdr.tcp.sequence, hdr.tcp.srcport, hdr.tcp.valid, hdr.tcp.windowsize, hdr.udp_tunnel.checksum, hdr.udp_tunnel.dstport, hdr.udp_tunnel.emit, hdr.udp_tunnel.srcport, hdr.udp_tunnel.userlength, hdr.udp_tunnel.valid, standard_metadata.checksum_error, standard_metadata.deq_qdepth, standard_metadata.deq_timedelta, standard_metadata.egress_global_timestamp, standard_metadata.egress_port, standard_metadata.egress_rid, standard_metadata.egress_spec, standard_metadata.enq_qdepth, standard_metadata.enq_timestamp, standard_metadata.ingress_global_timestamp, standard_metadata.ingress_port, standard_metadata.instance_type, standard_metadata.mcast_grp, standard_metadata.packet_length, standard_metadata.parser_error, standard_metadata.priority, temp_0, tmp, tmp_0, tmp_1, tmp_10, tmp_11, tmp_12, tmp_13, tmp_14, tmp_15, tmp_16, tmp_17, tmp_18, tmp_19, tmp_2, tmp_20, tmp_21, tmp_22, tmp_23, tmp_24, tmp_25, tmp_26, tmp_27, tmp_28, tmp_29, tmp_3, tmp_30, tmp_4, tmp_5, tmp_6, tmp_7, tmp_8, tmp_9, user_mac;
{
    call mainProcedure();
}

// Parser _parser_MyParser
procedure {:inline 1} _parser_MyParser()
	modifies drop, hdr.ethernet.valid, hdr.ipv4.valid, hdr.ipv4_tunnel.valid, hdr.ipv6.valid, hdr.tcp.valid, hdr.udp_tunnel.valid;
{
    call start();
}
procedure {:inline 1} accept()
{
}
function {:inline true}count.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} count.write(index:int, value:int)
	modifies count;
{
    count[index] := value;
}

// Action creatipv6_1
procedure {:inline 1} creatipv6_1()
	modifies hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv6.dstAddr, hdr.ipv6.hoplimit, hdr.ipv6.nextheader, hdr.ipv6.payloadlen, hdr.ipv6.srcAddr, hdr.ipv6.valid, hdr.ipv6.version;
{
    hdr.ipv6.valid := true;
    hdr.ipv6.version := 6;
    hdr.ipv6.payloadlen := hdr.ipv4.totalLen;
    hdr.ipv6.nextheader := 65;
    hdr.ipv6.hoplimit := 64;
    hdr.ethernet.etherType := 34525;
    hdr.ipv6.srcAddr := 42545680458834377588178886921629466626;
    hdr.ipv6.dstAddr := 42540765144257160172006968799218772356;
    hdr.ethernet.srcAddr := 19799850608873;
    hdr.ethernet.dstAddr := 174219185552744;
}

// Action creatipv6_2
procedure {:inline 1} creatipv6_2()
	modifies hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv6.dstAddr, hdr.ipv6.hoplimit, hdr.ipv6.nextheader, hdr.ipv6.payloadlen, hdr.ipv6.srcAddr, hdr.ipv6.valid, hdr.ipv6.version;
{
    hdr.ipv6.valid := true;
    hdr.ipv6.version := 6;
    hdr.ipv6.payloadlen := hdr.ipv4.totalLen;
    hdr.ipv6.nextheader := 65;
    hdr.ipv6.hoplimit := 64;
    hdr.ethernet.etherType := 34525;
    hdr.ipv6.srcAddr := 42556065052551447243435947914287906818;
    hdr.ipv6.dstAddr := 42540765144257160172006968799218772358;
    hdr.ethernet.srcAddr := 33595163910409;
    hdr.ethernet.dstAddr := 20159709288469;
}

// Action creatmytunnel
procedure {:inline 1} creatmytunnel()
	modifies hdr.ethernet.dstAddr, hdr.ipv4_tunnel.diffserv, hdr.ipv4_tunnel.dstAddr, hdr.ipv4_tunnel.flags, hdr.ipv4_tunnel.fragOffset, hdr.ipv4_tunnel.identification, hdr.ipv4_tunnel.ihl, hdr.ipv4_tunnel.protocol, hdr.ipv4_tunnel.srcAddr, hdr.ipv4_tunnel.totalLen, hdr.ipv4_tunnel.ttl, hdr.ipv4_tunnel.valid, hdr.ipv4_tunnel.version, hdr.udp_tunnel.checksum, hdr.udp_tunnel.dstport, hdr.udp_tunnel.srcport, hdr.udp_tunnel.userlength, hdr.udp_tunnel.valid;
{
    hdr.ipv4_tunnel.valid := true;
    hdr.ipv4_tunnel.version := hdr.ipv4.version;
    hdr.ipv4_tunnel.ihl := 5;
    hdr.ipv4_tunnel.diffserv := hdr.ipv4.diffserv;
    hdr.ipv4_tunnel.totalLen := add.bv16(hdr.ipv4.totalLen, 28);
    hdr.ipv4_tunnel.identification := hdr.ipv4.identification;
    hdr.ipv4_tunnel.flags := hdr.ipv4.flags;
    hdr.ipv4_tunnel.fragOffset := hdr.ipv4.fragOffset;
    hdr.ipv4_tunnel.ttl := hdr.ipv4.ttl;
    hdr.ipv4_tunnel.protocol := 17;
    hdr.ipv4_tunnel.srcAddr := hdr.ipv4.srcAddr;
    hdr.ipv4_tunnel.dstAddr := 3690098939;
    hdr.ethernet.dstAddr := 204790950826065;
    hdr.udp_tunnel.valid := true;
    hdr.udp_tunnel.srcport := 52910;
    hdr.udp_tunnel.dstport := 80;
    hdr.udp_tunnel.userlength := hdr.ipv4.totalLen;
    hdr.udp_tunnel.checksum := 0;
}

// Action do_read_count
procedure {:inline 1} do_read_count()
	modifies temp_0;
{
    // read
    temp_0 := count.read(count, 0);
}
function {:inline true}ds_box.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} ds_box.write(index:int, value:int)
	modifies ds_box;
{
    ds_box[index] := value;
}
function {:inline true}es_box.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} es_box.write(index:int, value:int)
	modifies es_box;
{
    es_box[index] := value;
}
procedure {:inline 1} havocProcedure()
	modifies assertDummy, drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.emit, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.emit, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_tunnel.diffserv, hdr.ipv4_tunnel.dstAddr, hdr.ipv4_tunnel.emit, hdr.ipv4_tunnel.flags, hdr.ipv4_tunnel.fragOffset, hdr.ipv4_tunnel.hdrChecksum, hdr.ipv4_tunnel.identification, hdr.ipv4_tunnel.ihl, hdr.ipv4_tunnel.protocol, hdr.ipv4_tunnel.srcAddr, hdr.ipv4_tunnel.totalLen, hdr.ipv4_tunnel.ttl, hdr.ipv4_tunnel.valid, hdr.ipv4_tunnel.version, hdr.ipv6.dstAddr, hdr.ipv6.emit, hdr.ipv6.flowlabel, hdr.ipv6.hoplimit, hdr.ipv6.nextheader, hdr.ipv6.payloadlen, hdr.ipv6.srcAddr, hdr.ipv6.trafclass, hdr.ipv6.valid, hdr.ipv6.version, hdr.tcp.ACK, hdr.tcp.FIN, hdr.tcp.PSH, hdr.tcp.RST, hdr.tcp.SYN, hdr.tcp.URG, hdr.tcp.ackseq, hdr.tcp.checksum, hdr.tcp.dstport, hdr.tcp.emit, hdr.tcp.headerlength, hdr.tcp.pointer, hdr.tcp.reservation, hdr.tcp.sequence, hdr.tcp.srcport, hdr.tcp.valid, hdr.tcp.windowsize, hdr.udp_tunnel.checksum, hdr.udp_tunnel.dstport, hdr.udp_tunnel.emit, hdr.udp_tunnel.srcport, hdr.udp_tunnel.userlength, hdr.udp_tunnel.valid, standard_metadata.checksum_error, standard_metadata.deq_qdepth, standard_metadata.deq_timedelta, standard_metadata.egress_global_timestamp, standard_metadata.egress_port, standard_metadata.egress_rid, standard_metadata.egress_spec, standard_metadata.enq_qdepth, standard_metadata.enq_timestamp, standard_metadata.ingress_global_timestamp, standard_metadata.ingress_port, standard_metadata.instance_type, standard_metadata.mcast_grp, standard_metadata.packet_length, standard_metadata.parser_error, standard_metadata.priority;
{
    drop := false;
    forward := false;
    assertDummy := true;
    havoc standard_metadata.ingress_port;
    assume(0 <= standard_metadata.ingress_port && standard_metadata.ingress_port < power_2_9() );
    standard_metadata.egress_spec := 0;
    standard_metadata.egress_port := 0;
    havoc standard_metadata.instance_type;
    assume(0 <= standard_metadata.instance_type && standard_metadata.instance_type < power_2_32() );
    havoc standard_metadata.packet_length;
    assume(0 <= standard_metadata.packet_length && standard_metadata.packet_length < power_2_32() );
    havoc standard_metadata.enq_timestamp;
    assume(0 <= standard_metadata.enq_timestamp && standard_metadata.enq_timestamp < power_2_32() );
    standard_metadata.enq_qdepth := 0;
    havoc standard_metadata.deq_timedelta;
    assume(0 <= standard_metadata.deq_timedelta && standard_metadata.deq_timedelta < power_2_32() );
    havoc standard_metadata.deq_qdepth;
    assume(0 <= standard_metadata.deq_qdepth && standard_metadata.deq_qdepth < power_2_19() );
    havoc standard_metadata.ingress_global_timestamp;
    assume(0 <= standard_metadata.ingress_global_timestamp && standard_metadata.ingress_global_timestamp < power_2_48() );
    havoc standard_metadata.egress_global_timestamp;
    assume(0 <= standard_metadata.egress_global_timestamp && standard_metadata.egress_global_timestamp < power_2_48() );
    standard_metadata.mcast_grp := 0;
    standard_metadata.egress_rid := 0;
    standard_metadata.checksum_error := 0;
    standard_metadata.parser_error := 0;
    standard_metadata.priority := 0;
    hdr.ethernet.valid := false;
    hdr.ethernet.emit := false;
    havoc hdr.ethernet.dstAddr;
    havoc hdr.ethernet.srcAddr;
    havoc hdr.ethernet.etherType;
    assume(0 <= hdr.ethernet.etherType && hdr.ethernet.etherType < power_2_16() );
    hdr.ipv6.valid := false;
    hdr.ipv6.emit := false;
    havoc hdr.ipv6.version;
    assume(0 <= hdr.ipv6.version && hdr.ipv6.version < power_2_4() );
    havoc hdr.ipv6.trafclass;
    assume(0 <= hdr.ipv6.trafclass && hdr.ipv6.trafclass < power_2_8() );
    havoc hdr.ipv6.flowlabel;
    assume(0 <= hdr.ipv6.flowlabel && hdr.ipv6.flowlabel < power_2_20() );
    havoc hdr.ipv6.payloadlen;
    assume(0 <= hdr.ipv6.payloadlen && hdr.ipv6.payloadlen < power_2_16() );
    havoc hdr.ipv6.nextheader;
    assume(0 <= hdr.ipv6.nextheader && hdr.ipv6.nextheader < power_2_8() );
    havoc hdr.ipv6.hoplimit;
    assume(0 <= hdr.ipv6.hoplimit && hdr.ipv6.hoplimit < power_2_8() );
    havoc hdr.ipv6.srcAddr;
    havoc hdr.ipv6.dstAddr;
    hdr.ipv4_tunnel.valid := false;
    hdr.ipv4_tunnel.emit := false;
    havoc hdr.ipv4_tunnel.version;
    assume(0 <= hdr.ipv4_tunnel.version && hdr.ipv4_tunnel.version < power_2_4() );
    havoc hdr.ipv4_tunnel.ihl;
    assume(0 <= hdr.ipv4_tunnel.ihl && hdr.ipv4_tunnel.ihl < power_2_4() );
    havoc hdr.ipv4_tunnel.diffserv;
    assume(0 <= hdr.ipv4_tunnel.diffserv && hdr.ipv4_tunnel.diffserv < power_2_8() );
    havoc hdr.ipv4_tunnel.totalLen;
    assume(0 <= hdr.ipv4_tunnel.totalLen && hdr.ipv4_tunnel.totalLen < power_2_16() );
    havoc hdr.ipv4_tunnel.identification;
    assume(0 <= hdr.ipv4_tunnel.identification && hdr.ipv4_tunnel.identification < power_2_16() );
    havoc hdr.ipv4_tunnel.flags;
    assume(0 <= hdr.ipv4_tunnel.flags && hdr.ipv4_tunnel.flags < power_2_3() );
    havoc hdr.ipv4_tunnel.fragOffset;
    assume(0 <= hdr.ipv4_tunnel.fragOffset && hdr.ipv4_tunnel.fragOffset < power_2_13() );
    havoc hdr.ipv4_tunnel.ttl;
    assume(0 <= hdr.ipv4_tunnel.ttl && hdr.ipv4_tunnel.ttl < power_2_8() );
    havoc hdr.ipv4_tunnel.protocol;
    assume(0 <= hdr.ipv4_tunnel.protocol && hdr.ipv4_tunnel.protocol < power_2_8() );
    havoc hdr.ipv4_tunnel.hdrChecksum;
    assume(0 <= hdr.ipv4_tunnel.hdrChecksum && hdr.ipv4_tunnel.hdrChecksum < power_2_16() );
    havoc hdr.ipv4_tunnel.srcAddr;
    havoc hdr.ipv4_tunnel.dstAddr;
    hdr.ipv4.valid := false;
    hdr.ipv4.emit := false;
    havoc hdr.ipv4.version;
    assume(0 <= hdr.ipv4.version && hdr.ipv4.version < power_2_4() );
    havoc hdr.ipv4.ihl;
    assume(0 <= hdr.ipv4.ihl && hdr.ipv4.ihl < power_2_4() );
    havoc hdr.ipv4.diffserv;
    assume(0 <= hdr.ipv4.diffserv && hdr.ipv4.diffserv < power_2_8() );
    havoc hdr.ipv4.totalLen;
    assume(0 <= hdr.ipv4.totalLen && hdr.ipv4.totalLen < power_2_16() );
    havoc hdr.ipv4.identification;
    assume(0 <= hdr.ipv4.identification && hdr.ipv4.identification < power_2_16() );
    havoc hdr.ipv4.flags;
    assume(0 <= hdr.ipv4.flags && hdr.ipv4.flags < power_2_3() );
    havoc hdr.ipv4.fragOffset;
    assume(0 <= hdr.ipv4.fragOffset && hdr.ipv4.fragOffset < power_2_13() );
    havoc hdr.ipv4.ttl;
    assume(0 <= hdr.ipv4.ttl && hdr.ipv4.ttl < power_2_8() );
    havoc hdr.ipv4.protocol;
    assume(0 <= hdr.ipv4.protocol && hdr.ipv4.protocol < power_2_8() );
    havoc hdr.ipv4.hdrChecksum;
    assume(0 <= hdr.ipv4.hdrChecksum && hdr.ipv4.hdrChecksum < power_2_16() );
    havoc hdr.ipv4.srcAddr;
    havoc hdr.ipv4.dstAddr;
    hdr.tcp.valid := false;
    hdr.tcp.emit := false;
    havoc hdr.tcp.srcport;
    assume(0 <= hdr.tcp.srcport && hdr.tcp.srcport < power_2_16() );
    havoc hdr.tcp.dstport;
    assume(0 <= hdr.tcp.dstport && hdr.tcp.dstport < power_2_16() );
    havoc hdr.tcp.sequence;
    assume(0 <= hdr.tcp.sequence && hdr.tcp.sequence < power_2_32() );
    havoc hdr.tcp.ackseq;
    assume(0 <= hdr.tcp.ackseq && hdr.tcp.ackseq < power_2_32() );
    havoc hdr.tcp.headerlength;
    assume(0 <= hdr.tcp.headerlength && hdr.tcp.headerlength < power_2_4() );
    havoc hdr.tcp.reservation;
    assume(0 <= hdr.tcp.reservation && hdr.tcp.reservation < power_2_6() );
    havoc hdr.tcp.URG;
    assume(0 <= hdr.tcp.URG && hdr.tcp.URG < power_2_1() );
    havoc hdr.tcp.ACK;
    assume(0 <= hdr.tcp.ACK && hdr.tcp.ACK < power_2_1() );
    havoc hdr.tcp.PSH;
    assume(0 <= hdr.tcp.PSH && hdr.tcp.PSH < power_2_1() );
    havoc hdr.tcp.RST;
    assume(0 <= hdr.tcp.RST && hdr.tcp.RST < power_2_1() );
    havoc hdr.tcp.SYN;
    assume(0 <= hdr.tcp.SYN && hdr.tcp.SYN < power_2_1() );
    havoc hdr.tcp.FIN;
    assume(0 <= hdr.tcp.FIN && hdr.tcp.FIN < power_2_1() );
    havoc hdr.tcp.windowsize;
    assume(0 <= hdr.tcp.windowsize && hdr.tcp.windowsize < power_2_16() );
    havoc hdr.tcp.checksum;
    assume(0 <= hdr.tcp.checksum && hdr.tcp.checksum < power_2_16() );
    havoc hdr.tcp.pointer;
    assume(0 <= hdr.tcp.pointer && hdr.tcp.pointer < power_2_16() );
    hdr.udp_tunnel.valid := false;
    hdr.udp_tunnel.emit := false;
    havoc hdr.udp_tunnel.srcport;
    assume(0 <= hdr.udp_tunnel.srcport && hdr.udp_tunnel.srcport < power_2_16() );
    havoc hdr.udp_tunnel.dstport;
    assume(0 <= hdr.udp_tunnel.dstport && hdr.udp_tunnel.dstport < power_2_16() );
    havoc hdr.udp_tunnel.userlength;
    assume(0 <= hdr.udp_tunnel.userlength && hdr.udp_tunnel.userlength < power_2_16() );
    havoc hdr.udp_tunnel.checksum;
    assume(0 <= hdr.udp_tunnel.checksum && hdr.udp_tunnel.checksum < power_2_16() );
}
procedure {:inline 1} main()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.srcAddr, _old_hdr.ipv4.dstAddr, assertDummy, count, drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.emit, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.emit, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_tunnel.diffserv, hdr.ipv4_tunnel.dstAddr, hdr.ipv4_tunnel.emit, hdr.ipv4_tunnel.flags, hdr.ipv4_tunnel.fragOffset, hdr.ipv4_tunnel.hdrChecksum, hdr.ipv4_tunnel.identification, hdr.ipv4_tunnel.ihl, hdr.ipv4_tunnel.protocol, hdr.ipv4_tunnel.srcAddr, hdr.ipv4_tunnel.totalLen, hdr.ipv4_tunnel.ttl, hdr.ipv4_tunnel.valid, hdr.ipv4_tunnel.version, hdr.ipv6.dstAddr, hdr.ipv6.emit, hdr.ipv6.flowlabel, hdr.ipv6.hoplimit, hdr.ipv6.nextheader, hdr.ipv6.payloadlen, hdr.ipv6.srcAddr, hdr.ipv6.trafclass, hdr.ipv6.valid, hdr.ipv6.version, hdr.tcp.ACK, hdr.tcp.FIN, hdr.tcp.PSH, hdr.tcp.RST, hdr.tcp.SYN, hdr.tcp.URG, hdr.tcp.ackseq, hdr.tcp.checksum, hdr.tcp.dstport, hdr.tcp.emit, hdr.tcp.headerlength, hdr.tcp.pointer, hdr.tcp.reservation, hdr.tcp.sequence, hdr.tcp.srcport, hdr.tcp.valid, hdr.tcp.windowsize, hdr.udp_tunnel.checksum, hdr.udp_tunnel.dstport, hdr.udp_tunnel.emit, hdr.udp_tunnel.srcport, hdr.udp_tunnel.userlength, hdr.udp_tunnel.valid, standard_metadata.checksum_error, standard_metadata.deq_qdepth, standard_metadata.deq_timedelta, standard_metadata.egress_global_timestamp, standard_metadata.egress_port, standard_metadata.egress_rid, standard_metadata.egress_spec, standard_metadata.enq_qdepth, standard_metadata.enq_timestamp, standard_metadata.ingress_global_timestamp, standard_metadata.ingress_port, standard_metadata.instance_type, standard_metadata.mcast_grp, standard_metadata.packet_length, standard_metadata.parser_error, standard_metadata.priority, temp_0, tmp, tmp_0, tmp_1, tmp_10, tmp_11, tmp_12, tmp_13, tmp_14, tmp_15, tmp_16, tmp_17, tmp_18, tmp_19, tmp_2, tmp_20, tmp_21, tmp_22, tmp_23, tmp_24, tmp_25, tmp_26, tmp_27, tmp_28, tmp_29, tmp_3, tmp_30, tmp_4, tmp_5, tmp_6, tmp_7, tmp_8, tmp_9, user_mac;
{
    call havocProcedure();
    call _parser_MyParser();
    call oldProcedure();
    call MyVerifyChecksum();
    call MyIngress();
    call MyEgress();
    call MyComputeChecksum();
    if(forward == false){
        drop := true;
    }
}
procedure mainProcedure()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.srcAddr, _old_hdr.ipv4.dstAddr, assertDummy, count, drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.emit, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.emit, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_tunnel.diffserv, hdr.ipv4_tunnel.dstAddr, hdr.ipv4_tunnel.emit, hdr.ipv4_tunnel.flags, hdr.ipv4_tunnel.fragOffset, hdr.ipv4_tunnel.hdrChecksum, hdr.ipv4_tunnel.identification, hdr.ipv4_tunnel.ihl, hdr.ipv4_tunnel.protocol, hdr.ipv4_tunnel.srcAddr, hdr.ipv4_tunnel.totalLen, hdr.ipv4_tunnel.ttl, hdr.ipv4_tunnel.valid, hdr.ipv4_tunnel.version, hdr.ipv6.dstAddr, hdr.ipv6.emit, hdr.ipv6.flowlabel, hdr.ipv6.hoplimit, hdr.ipv6.nextheader, hdr.ipv6.payloadlen, hdr.ipv6.srcAddr, hdr.ipv6.trafclass, hdr.ipv6.valid, hdr.ipv6.version, hdr.tcp.ACK, hdr.tcp.FIN, hdr.tcp.PSH, hdr.tcp.RST, hdr.tcp.SYN, hdr.tcp.URG, hdr.tcp.ackseq, hdr.tcp.checksum, hdr.tcp.dstport, hdr.tcp.emit, hdr.tcp.headerlength, hdr.tcp.pointer, hdr.tcp.reservation, hdr.tcp.sequence, hdr.tcp.srcport, hdr.tcp.valid, hdr.tcp.windowsize, hdr.udp_tunnel.checksum, hdr.udp_tunnel.dstport, hdr.udp_tunnel.emit, hdr.udp_tunnel.srcport, hdr.udp_tunnel.userlength, hdr.udp_tunnel.valid, standard_metadata.checksum_error, standard_metadata.deq_qdepth, standard_metadata.deq_timedelta, standard_metadata.egress_global_timestamp, standard_metadata.egress_port, standard_metadata.egress_rid, standard_metadata.egress_spec, standard_metadata.enq_qdepth, standard_metadata.enq_timestamp, standard_metadata.ingress_global_timestamp, standard_metadata.ingress_port, standard_metadata.instance_type, standard_metadata.mcast_grp, standard_metadata.packet_length, standard_metadata.parser_error, standard_metadata.priority, temp_0, tmp, tmp_0, tmp_1, tmp_10, tmp_11, tmp_12, tmp_13, tmp_14, tmp_15, tmp_16, tmp_17, tmp_18, tmp_19, tmp_2, tmp_20, tmp_21, tmp_22, tmp_23, tmp_24, tmp_25, tmp_26, tmp_27, tmp_28, tmp_29, tmp_3, tmp_30, tmp_4, tmp_5, tmp_6, tmp_7, tmp_8, tmp_9, user_mac;
{
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;
procedure {:inline 1} oldProcedure()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.srcAddr, _old_hdr.ipv4.dstAddr;
{
    _old_hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;
    _old_hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;
    _old_hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;
    _old_hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;
    _old_hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;
    _old_hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;
    _old_hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
    _old_hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
    _old_hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
}

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies hdr.ipv4.valid, hdr.tcp.valid;
{
    hdr.ipv4.valid := true;
    if(hdr.ipv4.protocol == 6){
        call parse_tcp();
    }
    else{
        call accept();
    }
}

//Parser State parse_ipv6
procedure {:inline 1} parse_ipv6()
	modifies hdr.ipv4.valid, hdr.ipv6.valid, hdr.tcp.valid;
{
    hdr.ipv6.valid := true;
    if(hdr.ipv6.nextheader == 65){
        call parse_ipv4();
    }
    else{
        call accept();
    }
}

//Parser State parse_myTunnel
procedure {:inline 1} parse_myTunnel()
	modifies hdr.ipv4.valid, hdr.ipv4_tunnel.valid, hdr.tcp.valid, hdr.udp_tunnel.valid;
{
    hdr.ipv4_tunnel.valid := true;
    if(hdr.ipv4_tunnel.protocol == 17){
        call parse_udp();
    }
    else{
        call accept();
    }
}

//Parser State parse_select
procedure {:inline 1} parse_select()
	modifies hdr.ipv4.valid, hdr.ipv4_tunnel.valid, hdr.tcp.valid, hdr.udp_tunnel.valid;
{
    if(standard_metadata.ingress_port == 2){
        call parse_myTunnel();
    }
    else{
        call parse_ipv4();
    }
}

//Parser State parse_tcp
procedure {:inline 1} parse_tcp()
	modifies hdr.tcp.valid;
{
    hdr.tcp.valid := true;
    call accept();
}

//Parser State parse_udp
procedure {:inline 1} parse_udp()
	modifies hdr.ipv4.valid, hdr.tcp.valid, hdr.udp_tunnel.valid;
{
    hdr.udp_tunnel.valid := true;
    call parse_ipv4();
}

// Action read_dsbox
procedure {:inline 1} read_dsbox()
	modifies hdr.tcp.ackseq, hdr.tcp.sequence, tmp_15, tmp_16, tmp_17, tmp_18, tmp_19, tmp_20, tmp_21, tmp_22, tmp_23, tmp_24, tmp_25, tmp_26, tmp_27, tmp_28, tmp_29, tmp_30;
{
    tmp_16 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_0())/power_2_0()%(power_2_8()) );
    // read
    tmp_15 := ds_box.read(ds_box, tmp_16);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_8() + tmp_15 * power_2_0() + hdr.tcp.sequence % power_2_0();
    tmp_18 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_8())/power_2_8()%(power_2_8()) );
    // read
    tmp_17 := ds_box.read(ds_box, tmp_18);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_16() + tmp_17 * power_2_8() + hdr.tcp.sequence % power_2_8();
    tmp_20 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_16())/power_2_16()%(power_2_8()) );
    // read
    tmp_19 := ds_box.read(ds_box, tmp_20);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_24() + tmp_19 * power_2_16() + hdr.tcp.sequence % power_2_16();
    tmp_22 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_24())/power_2_24()%(power_2_8()) );
    // read
    tmp_21 := ds_box.read(ds_box, tmp_22);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_32() + tmp_21 * power_2_24() + hdr.tcp.sequence % power_2_24();
    tmp_24 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_0())/power_2_0()%(power_2_8()) );
    // read
    tmp_23 := ds_box.read(ds_box, tmp_24);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_8() + tmp_23 * power_2_0() + hdr.tcp.ackseq % power_2_0();
    tmp_26 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_8())/power_2_8()%(power_2_8()) );
    // read
    tmp_25 := ds_box.read(ds_box, tmp_26);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_16() + tmp_25 * power_2_8() + hdr.tcp.ackseq % power_2_8();
    tmp_28 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_16())/power_2_16()%(power_2_8()) );
    // read
    tmp_27 := ds_box.read(ds_box, tmp_28);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_24() + tmp_27 * power_2_16() + hdr.tcp.ackseq % power_2_16();
    tmp_30 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_24())/power_2_24()%(power_2_8()) );
    // read
    tmp_29 := ds_box.read(ds_box, tmp_30);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_32() + tmp_29 * power_2_24() + hdr.tcp.ackseq % power_2_24();
}

// Action read_esbox
procedure {:inline 1} read_esbox()
	modifies hdr.tcp.ackseq, hdr.tcp.sequence, tmp, tmp_0, tmp_1, tmp_10, tmp_11, tmp_12, tmp_13, tmp_14, tmp_2, tmp_3, tmp_4, tmp_5, tmp_6, tmp_7, tmp_8, tmp_9;
{
    tmp_0 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_0())/power_2_0()%(power_2_8()) );
    // read
    tmp := es_box.read(es_box, tmp_0);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_8() + tmp * power_2_0() + hdr.tcp.sequence % power_2_0();
    tmp_2 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_8())/power_2_8()%(power_2_8()) );
    // read
    tmp_1 := es_box.read(es_box, tmp_2);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_16() + tmp_1 * power_2_8() + hdr.tcp.sequence % power_2_8();
    tmp_4 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_16())/power_2_16()%(power_2_8()) );
    // read
    tmp_3 := es_box.read(es_box, tmp_4);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_24() + tmp_3 * power_2_16() + hdr.tcp.sequence % power_2_16();
    tmp_6 := ( (hdr.tcp.sequence-hdr.tcp.sequence%power_2_24())/power_2_24()%(power_2_8()) );
    // read
    tmp_5 := es_box.read(es_box, tmp_6);
    hdr.tcp.sequence := hdr.tcp.sequence-hdr.tcp.sequence%power_2_32() + tmp_5 * power_2_24() + hdr.tcp.sequence % power_2_24();
    tmp_8 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_0())/power_2_0()%(power_2_8()) );
    // read
    tmp_7 := es_box.read(es_box, tmp_8);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_8() + tmp_7 * power_2_0() + hdr.tcp.ackseq % power_2_0();
    tmp_10 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_8())/power_2_8()%(power_2_8()) );
    // read
    tmp_9 := es_box.read(es_box, tmp_10);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_16() + tmp_9 * power_2_8() + hdr.tcp.ackseq % power_2_8();
    tmp_12 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_16())/power_2_16()%(power_2_8()) );
    // read
    tmp_11 := es_box.read(es_box, tmp_12);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_24() + tmp_11 * power_2_16() + hdr.tcp.ackseq % power_2_16();
    tmp_14 := ( (hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_24())/power_2_24()%(power_2_8()) );
    // read
    tmp_13 := es_box.read(es_box, tmp_14);
    hdr.tcp.ackseq := hdr.tcp.ackseq-hdr.tcp.ackseq%power_2_32() + tmp_13 * power_2_24() + hdr.tcp.ackseq % power_2_24();
}
procedure reject();
    ensures drop==true;
	modifies drop;
procedure {:inline 1} setInvalid(header:Ref);
procedure {:inline 1} setValid(header:Ref);

//Parser State start
procedure {:inline 1} start()
	modifies hdr.ethernet.valid, hdr.ipv4.valid, hdr.ipv4_tunnel.valid, hdr.ipv6.valid, hdr.tcp.valid, hdr.udp_tunnel.valid;
{
    hdr.ethernet.valid := true;
    if(hdr.ethernet.etherType == 34525){
        call parse_ipv6();
    }
    else if(hdr.ethernet.etherType == 2048){
        call parse_select();
    }
    else{
        call accept();
    }
}

// Action store_user_mac
procedure {:inline 1} store_user_mac()
	modifies user_mac;
{
    // write
    call user_mac.write(0, hdr.ethernet.srcAddr);
}
function {:inline true}user_mac.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} user_mac.write(index:int, value:int)
	modifies user_mac;
{
    user_mac[index] := value;
}
