var #memory_$Pointer$.base : [int][int]int;

var #valid : [int]int;

var #NULL.offset : int;

var #length : [int]int;

var #NULL.base : int;

var #memory_$Pointer$.offset : [int][int]int;

procedure ULTIMATE.start() returns ()
modifies #memory_$Pointer$.base, #valid, #NULL.offset, #length, #NULL.base, #memory_$Pointer$.offset;
{
    var main_#t~mem14.offset : int;
    var main_#t~nondet4 : int;
    var main_~tmp~0.offset : int;
    var main_#t~nondet13 : int;
    var read~$Pointer$_#value.offset : int;
    var main_#t~malloc29.offset : int;
    var main_#t~mem38.offset : int;
    var main_#t~short18 : bool;
    var main_#t~mem47.offset : int;
    var main_#t~mem14.base : int;
    var main_#t~mem15.base : int;
    var main_#t~mem16.base : int;
    var main_#t~mem33.offset : int;
    var main_#t~mem42.offset : int;
    var main_~tree~0.base : int;
    var main_#t~mem10.base : int;
    var main_#t~malloc5.base : int;
    var main_old_#valid : [int]int;
    var #Ultimate.alloc_old_#length : [int]int;
    var write~$Pointer$_#ptr.base : int;
    var write~$Pointer$_#ptr.offset : int;
    var main_#t~mem32.offset : int;
    var main_~tmpList~0.offset : int;
    var main_~newNode~0.offset : int;
    var main_#t~nondet17 : int;
    var main_#t~mem37.offset : int;
    var main_#t~malloc23.offset : int;
    var main_#t~mem40.offset : int;
    var main_#t~malloc23.base : int;
    var #Ultimate.alloc_old_#valid : [int]int;
    var main_#t~nondet9 : int;
    var main_#t~mem34.offset : int;
    var main_#t~mem46.base : int;
    var main_#t~mem45.base : int;
    var main_#t~mem31.offset : int;
    var main_#t~malloc0.base : int;
    var main_#t~mem15.offset : int;
    var main_#t~mem27.base : int;
    var write~$Pointer$_#value.offset : int;
    var main_#t~mem3.offset : int;
    var main_#t~mem10.offset : int;
    var main_#t~nondet28 : int;
    var main_#t~mem2.base : int;
    var main_#t~mem6.base : int;
    var write~$Pointer$_old_#memory_$Pointer$.base : [int][int]int;
    var #Ultimate.alloc_~size : int;
    var main_~pred~0.base : int;
    var main_#t~mem20.base : int;
    var main_#t~mem31.base : int;
    var main_#t~mem39.offset : int;
    var main_~newNode~0.base : int;
    var main_#t~mem42.base : int;
    var main_#res : int;
    var write~$Pointer$_old_#memory_$Pointer$.offset : [int][int]int;
    var main_~tree~0.offset : int;
    var main_#t~malloc1.offset : int;
    var main_#t~mem11.offset : int;
    var write~$Pointer$_#sizeOfWrittenType : int;
    var main_~pred~0.offset : int;
    var main_#t~malloc19.base : int;
    var main_#t~mem26.offset : int;
    var main_#t~mem38.base : int;
    var main_#t~mem36.base : int;
    var main_#t~mem37.base : int;
    var main_#t~mem39.base : int;
    var main_#t~mem34.base : int;
    var main_~tmp~0.base : int;
    var main_#t~mem45.offset : int;
    var main_#t~mem8.offset : int;
    var main_#t~short12 : bool;
    var #Ultimate.alloc_#res.base : int;
    var #Ultimate.alloc_#res.offset : int;
    var main_#t~mem36.offset : int;
    var main_#t~short35 : bool;
    var main_#t~mem2.offset : int;
    var main_#t~mem30.base : int;
    var main_#t~mem32.base : int;
    var main_#t~mem41.base : int;
    var main_#t~mem44.offset : int;
    var read~$Pointer$_#ptr.offset : int;
    var main_#t~mem43.base : int;
    var main_#t~mem7.offset : int;
    var main_#t~mem20.offset : int;
    var main_#t~mem43.offset : int;
    var read~$Pointer$_#value.base : int;
    var main_#t~malloc25.base : int;
    var main_#t~mem6.offset : int;
    var main_#t~mem47.base : int;
    var read~$Pointer$_#sizeOfReadType : int;
    var main_#t~mem26.base : int;
    var main_#t~malloc1.base : int;
    var main_#t~mem3.base : int;
    var main_#t~mem7.base : int;
    var main_#t~mem8.base : int;
    var main_#t~mem11.base : int;
    var main_#t~nondet21 : int;
    var main_#t~mem27.offset : int;
    var main_#t~mem30.offset : int;
    var main_~tmpList~0.base : int;
    var main_#t~mem40.base : int;
    var main_#t~malloc0.offset : int;
    var main_#t~malloc19.offset : int;
    var main_#t~mem16.offset : int;
    var main_#t~mem33.base : int;
    var main_#t~malloc25.offset : int;
    var main_#t~mem44.base : int;
    var write~$Pointer$_#value.base : int;
    var main_#t~mem41.offset : int;
    var read~$Pointer$_#ptr.base : int;
    var main_#t~short22 : bool;
    var main_#t~malloc29.base : int;
    var main_#t~malloc5.offset : int;
    var main_#t~mem46.offset : int;

  loc0:
    #NULL.offset, #NULL.base := 0, 0;
    #valid := #valid[0 := 0];
    main_old_#valid := #valid;
    havoc main_#res;
    havoc main_#t~malloc1.offset, main_#t~mem11.offset, main_#t~mem14.offset, main_#t~nondet4, main_~pred~0.offset, main_~tmp~0.offset, main_#t~nondet13, main_#t~malloc19.base, main_#t~mem26.offset, main_#t~mem38.base, main_#t~malloc29.offset, main_#t~mem36.base, main_#t~mem37.base, main_#t~mem39.base, main_#t~mem38.offset, main_#t~mem34.base, main_~tmp~0.base, main_#t~short18, main_#t~mem47.offset, main_#t~mem45.offset, main_#t~mem14.base, main_#t~mem8.offset, main_#t~mem15.base, main_#t~short12, main_#t~mem16.base, main_#t~mem33.offset, main_#t~mem42.offset, main_~tree~0.base, main_#t~mem10.base, main_#t~mem36.offset, main_#t~short35, main_#t~mem2.offset, main_#t~malloc5.base, main_#t~mem30.base, main_#t~mem32.base, main_#t~mem41.base, main_#t~mem44.offset, main_#t~mem43.base, main_#t~mem7.offset, main_#t~mem32.offset, main_~tmpList~0.offset, main_#t~mem20.offset, main_~newNode~0.offset, main_#t~nondet17, main_#t~mem37.offset, main_#t~malloc23.offset, main_#t~mem43.offset, main_#t~mem40.offset, main_#t~malloc23.base, main_#t~malloc25.base, main_#t~mem6.offset, main_#t~nondet9, main_#t~mem34.offset, main_#t~mem46.base, main_#t~mem47.base, main_#t~mem45.base, main_#t~mem31.offset, main_#t~mem26.base, main_#t~malloc0.base, main_#t~malloc1.base, main_#t~mem15.offset, main_#t~mem27.base, main_#t~mem3.offset, main_#t~mem10.offset, main_#t~nondet28, main_#t~mem3.base, main_#t~mem2.base, main_#t~mem6.base, main_#t~mem7.base, main_#t~mem8.base, main_#t~mem11.base, main_#t~nondet21, main_#t~mem27.offset, main_~pred~0.base, main_#t~mem20.base, main_#t~mem30.offset, main_~tmpList~0.base, main_#t~mem31.base, main_#t~mem40.base, main_#t~malloc0.offset, main_#t~malloc19.offset, main_#t~mem39.offset, main_#t~mem16.offset, main_~newNode~0.base, main_#t~mem33.base, main_#t~malloc25.offset, main_#t~mem44.base, main_#t~mem42.base, main_#t~mem41.offset, main_~tree~0.offset, main_#t~short22, main_#t~malloc29.base, main_#t~malloc5.offset, main_#t~mem46.offset;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 12;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1] == #valid;
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size] == #length;
    main_#t~malloc0.base, main_#t~malloc0.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    main_~tree~0.offset, main_~tree~0.base := main_#t~malloc0.offset, main_#t~malloc0.base;
    havoc main_~tmp~0.base, main_~tmp~0.offset;
    havoc main_~tmpList~0.offset, main_~tmpList~0.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := 0, main_~tree~0.offset, 4, 0, main_~tree~0.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume #memory_$Pointer$.offset == write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]];
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := 0, main_~tree~0.offset + 4, 4, 0, main_~tree~0.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]] && #memory_$Pointer$.offset == write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]];
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 4;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    main_#t~malloc1.offset, main_#t~malloc1.base := #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := main_#t~malloc1.base, main_~tree~0.offset + 8, 4, main_#t~malloc1.offset, main_~tree~0.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base];
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume #memory_$Pointer$.offset == write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] && write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]] == #memory_$Pointer$.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := main_~tree~0.base, 4, main_~tree~0.offset + 8;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume read~$Pointer$_#value.base == #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] && read~$Pointer$_#value.offset == #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset];
    main_#t~mem2.offset, main_#t~mem2.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := main_~tree~0.base, 4, main_~tree~0.offset + 8;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    main_#t~mem3.offset, main_#t~mem3.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := main_#t~mem3.base, main_#t~mem2.offset, 4, main_#t~mem3.offset, main_#t~mem2.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base];
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base];
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]] == #memory_$Pointer$.base && write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] == #memory_$Pointer$.offset;
    havoc main_#t~mem3.offset, main_#t~mem3.base;
    havoc main_#t~mem2.offset, main_#t~mem2.base;
    goto loc1;
  loc1:
    assume main_#t~nondet4 <= 2147483647 && 0 <= main_#t~nondet4 + 2147483648;
    assume !(0 == main_#t~nondet4);
    havoc main_#t~nondet4;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 4;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    main_#t~malloc5.base, main_#t~malloc5.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    main_~tmpList~0.offset, main_~tmpList~0.base := main_#t~malloc5.offset, main_#t~malloc5.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := main_~tree~0.base, 4, main_~tree~0.offset + 8;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume !(read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base]) || !(0 <= read~$Pointer$_#ptr.offset);
    goto loc3;
  loc2_1:
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume read~$Pointer$_#value.base == #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    main_#t~mem6.offset, main_#t~mem6.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := main_#t~mem6.base, 4, main_#t~mem6.offset;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    main_#t~mem7.offset, main_#t~mem7.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := main_#t~mem7.base, main_~tmpList~0.offset, 4, main_#t~mem7.offset, main_~tmpList~0.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base];
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume #memory_$Pointer$.offset == write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]];
    havoc main_#t~mem6.offset, main_#t~mem6.base;
    havoc main_#t~mem7.offset, main_#t~mem7.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := main_~tree~0.base, 4, main_~tree~0.offset + 8;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    main_#t~mem8.offset, main_#t~mem8.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := main_~tmpList~0.base, main_#t~mem8.offset, 4, main_~tmpList~0.offset, main_#t~mem8.base;
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base];
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] == #memory_$Pointer$.offset && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]];
    havoc main_#t~mem8.offset, main_#t~mem8.base;
    goto loc1;
  loc3:
    assert false;
}

