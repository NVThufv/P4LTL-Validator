var #valid : [int]int;

var #memory_int : [int][int]int;

var #NULL.offset : int;

var #length : [int]int;

var #NULL.base : int;

procedure ULTIMATE.start() returns ()
modifies #valid, #memory_int, #NULL.offset, #length, #NULL.base;
{
    var read~int_#value : int;
    var main_#t~malloc11.offset : int;
    var main_#t~nondet8 : int;
    var cstrlcpy_#t~post3.base : int;
    var cstrlcpy_#t~post4.base : int;
    var main_#t~malloc11.base : int;
    var cstrlcpy_~src.offset : int;
    var cstrlcpy_~src.base : int;
    var write~int_#ptr.base : int;
    var main_~nondetString1~0.base : int;
    var cstrlcpy_#in~dst.offset : int;
    var cstrlcpy_#in~dst.base : int;
    var #Ultimate.alloc_#res.base : int;
    var #Ultimate.alloc_#res.offset : int;
    var cstrlcpy_#t~pre2 : int;
    var cstrlcpy_~s~0.base : int;
    var write~int_old_#memory_int : [int][int]int;
    var cstrlcpy_~siz : int;
    var main_old_#valid : [int]int;
    var main_~nondetString2~0.base : int;
    var #Ultimate.alloc_old_#length : [int]int;
    var write~int_#sizeOfWrittenType : int;
    var read~int_#ptr.base : int;
    var cstrlcpy_~d~0.base : int;
    var cstrlcpy_#t~post4.offset : int;
    var write~int_#value : int;
    var cstrlcpy_~dst.base : int;
    var main_~length~0 : int;
    var cstrlcpy_#in~src.offset : int;
    var cstrlcpy_#t~mem5 : int;
    var cstrlcpy_#t~mem7 : int;
    var #Ultimate.alloc_old_#valid : [int]int;
    var main_#t~nondet9 : int;
    var write~int_#ptr.offset : int;
    var cstrlcpy_~s~0.offset : int;
    var cstrlcpy_#t~post6.offset : int;
    var cstrlcpy_#t~post3.offset : int;
    var main_#t~malloc10.offset : int;
    var #Ultimate.alloc_~size : int;
    var cstrlcpy_~d~0.offset : int;
    var main_~n~1 : int;
    var cstrlcpy_#res : int;
    var cstrlcpy_~dst.offset : int;
    var read~int_#sizeOfReadType : int;
    var main_~nondetString2~0.offset : int;
    var cstrlcpy_~n~0 : int;
    var cstrlcpy_#in~src.base : int;
    var cstrlcpy_#in~siz : int;
    var main_#t~malloc10.base : int;
    var main_#t~ret12 : int;
    var cstrlcpy_#t~post6.base : int;
    var read~int_#ptr.offset : int;
    var main_#res : int;
    var main_~nondetString1~0.offset : int;

  loc0:
    #NULL.offset, #NULL.base := 0, 0;
    #valid := #valid[0 := 0];
    main_old_#valid := #valid;
    havoc main_#res;
    havoc main_#t~malloc11.offset, main_~n~1, main_#t~nondet8, main_#t~nondet9, main_#t~malloc11.base, main_~nondetString2~0.base, main_~nondetString2~0.offset, main_#t~malloc10.base, main_#t~ret12, main_~nondetString1~0.base, main_~nondetString1~0.offset, main_~length~0, main_#t~malloc10.offset;
    assume 0 <= main_#t~nondet8 + 2147483648 && main_#t~nondet8 <= 2147483647;
    main_~length~0 := main_#t~nondet8;
    havoc main_#t~nondet8;
    assume 0 <= main_#t~nondet9 + 2147483648 && main_#t~nondet9 <= 2147483647;
    main_~n~1 := main_#t~nondet9;
    havoc main_#t~nondet9;
    assume !(main_~length~0 < 1);
    assume !(main_~n~1 < 1);
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := main_~n~1;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1] == #valid;
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size] == #length;
    main_#t~malloc10.base, main_#t~malloc10.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    main_~nondetString1~0.base, main_~nondetString1~0.offset := main_#t~malloc10.base, main_#t~malloc10.offset;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := main_~length~0;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    main_#t~malloc11.offset, main_#t~malloc11.base := #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    main_~nondetString2~0.base, main_~nondetString2~0.offset := main_#t~malloc11.base, main_#t~malloc11.offset;
    write~int_old_#memory_int := #memory_int;
    write~int_#sizeOfWrittenType, write~int_#ptr.base, write~int_#value, write~int_#ptr.offset := 1, main_~nondetString1~0.base, 0, main_~nondetString1~0.offset + main_~n~1 + -1;
    assume #valid[write~int_#ptr.base] == 1;
    assume 0 <= write~int_#ptr.offset && write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base];
    assume 1 == #valid[write~int_#ptr.base];
    assume write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base] && 0 <= write~int_#ptr.offset;
    havoc #memory_int;
    assume #memory_int == write~int_old_#memory_int[write~int_#ptr.base := write~int_old_#memory_int[write~int_#ptr.base][write~int_#ptr.offset := write~int_#value]];
    write~int_old_#memory_int := #memory_int;
    write~int_#sizeOfWrittenType, write~int_#ptr.base, write~int_#value, write~int_#ptr.offset := 1, main_~nondetString2~0.base, 0, main_~nondetString2~0.offset + main_~length~0 + -1;
    assume #valid[write~int_#ptr.base] == 1;
    assume 0 <= write~int_#ptr.offset && write~int_#ptr.offset + write~int_#sizeOfWrittenType <= #length[write~int_#ptr.base];
    assume #valid[write~int_#ptr.base] == 1;
    assume write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base] && 0 <= write~int_#ptr.offset;
    havoc #memory_int;
    assume write~int_old_#memory_int[write~int_#ptr.base := write~int_old_#memory_int[write~int_#ptr.base][write~int_#ptr.offset := write~int_#value]] == #memory_int;
    cstrlcpy_#in~src.base, cstrlcpy_#in~siz, cstrlcpy_#in~dst.offset, cstrlcpy_#in~dst.base, cstrlcpy_#in~src.offset := main_~nondetString2~0.base, main_~n~1, main_~nondetString1~0.offset, main_~nondetString1~0.base, main_~nondetString2~0.offset;
    havoc cstrlcpy_#res;
    havoc cstrlcpy_#t~pre2, cstrlcpy_#t~mem5, cstrlcpy_#t~mem7, cstrlcpy_~d~0.offset, cstrlcpy_~s~0.base, cstrlcpy_#t~post3.base, cstrlcpy_#t~post4.base, cstrlcpy_~dst.offset, cstrlcpy_~siz, cstrlcpy_~src.offset, cstrlcpy_~n~0, cstrlcpy_~src.base, cstrlcpy_~s~0.offset, cstrlcpy_#t~post6.base, cstrlcpy_~d~0.base, cstrlcpy_#t~post4.offset, cstrlcpy_#t~post6.offset, cstrlcpy_~dst.base, cstrlcpy_#t~post3.offset;
    cstrlcpy_~dst.base, cstrlcpy_~dst.offset := cstrlcpy_#in~dst.base, cstrlcpy_#in~dst.offset;
    cstrlcpy_~src.base, cstrlcpy_~src.offset := cstrlcpy_#in~src.base, cstrlcpy_#in~src.offset;
    cstrlcpy_~siz := cstrlcpy_#in~siz;
    cstrlcpy_~d~0.offset, cstrlcpy_~d~0.base := cstrlcpy_~dst.offset, cstrlcpy_~dst.base;
    cstrlcpy_~s~0.offset, cstrlcpy_~s~0.base := cstrlcpy_~src.offset, cstrlcpy_~src.base;
    cstrlcpy_~n~0 := cstrlcpy_~siz;
    assume !(0 == cstrlcpy_~n~0 % 4294967296);
    goto loc1;
  loc1:
    cstrlcpy_#t~pre2 := cstrlcpy_~n~0 + -1;
    cstrlcpy_~n~0 := cstrlcpy_~n~0 + -1;
    assume !(cstrlcpy_#t~pre2 % 4294967296 == 0);
    havoc cstrlcpy_#t~pre2;
    cstrlcpy_#t~post3.base, cstrlcpy_#t~post3.offset := cstrlcpy_~d~0.base, cstrlcpy_~d~0.offset;
    cstrlcpy_~d~0.offset, cstrlcpy_~d~0.base := cstrlcpy_#t~post3.offset + 1, cstrlcpy_#t~post3.base;
    cstrlcpy_#t~post4.offset, cstrlcpy_#t~post4.base := cstrlcpy_~s~0.offset, cstrlcpy_~s~0.base;
    cstrlcpy_~s~0.offset, cstrlcpy_~s~0.base := cstrlcpy_#t~post4.offset + 1, cstrlcpy_#t~post4.base;
    read~int_#ptr.base, read~int_#ptr.offset, read~int_#sizeOfReadType := cstrlcpy_#t~post4.base, cstrlcpy_#t~post4.offset, 1;
    assume 1 == #valid[read~int_#ptr.base];
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume !(read~int_#ptr.offset + read~int_#sizeOfReadType <= #length[read~int_#ptr.base]) || !(0 <= read~int_#ptr.offset);
    goto loc3;
  loc2_1:
    assume read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base] && 0 <= read~int_#ptr.offset;
    assume 1 == #valid[read~int_#ptr.base];
    assume 0 <= read~int_#ptr.offset && read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base];
    havoc read~int_#value;
    assume #memory_int[read~int_#ptr.base][read~int_#ptr.offset] == read~int_#value;
    cstrlcpy_#t~mem5 := read~int_#value;
    write~int_old_#memory_int := #memory_int;
    write~int_#sizeOfWrittenType, write~int_#ptr.base, write~int_#value, write~int_#ptr.offset := 1, cstrlcpy_#t~post3.base, cstrlcpy_#t~mem5, cstrlcpy_#t~post3.offset;
    assume 1 == #valid[write~int_#ptr.base];
    assume 0 <= write~int_#ptr.offset && write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base];
    assume #valid[write~int_#ptr.base] == 1;
    assume 0 <= write~int_#ptr.offset && write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base];
    havoc #memory_int;
    assume write~int_old_#memory_int[write~int_#ptr.base := write~int_old_#memory_int[write~int_#ptr.base][write~int_#ptr.offset := write~int_#value]] == #memory_int;
    assume !(0 == cstrlcpy_#t~mem5);
    havoc cstrlcpy_#t~post4.offset, cstrlcpy_#t~post4.base;
    havoc cstrlcpy_#t~post3.base, cstrlcpy_#t~post3.offset;
    havoc cstrlcpy_#t~mem5;
    goto loc1;
  loc3:
    assert false;
}

