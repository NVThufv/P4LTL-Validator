var #valid : [int]int;

var #memory_int : [int][int]int;

var #NULL.offset : int;

var #length : [int]int;

var #NULL.base : int;

procedure ULTIMATE.start() returns ()
modifies #valid, #memory_int, #NULL.offset, #length, #NULL.base;
{
    var read~int_#value : int;
    var cstrstr_#res.base : int;
    var cstrstr_~s.base : int;
    var cstrlen_#in~str.offset : int;
    var cstrstr_~sc~0 : int;
    var cstrstr_#res.offset : int;
    var cstrstr_#in~find.offset : int;
    var write~int_#ptr.base : int;
    var main_#t~ret24.base : int;
    var main_~nondetString1~0.base : int;
    var cstrstr_#in~s.base : int;
    var cstrstr_#t~ret15 : int;
    var main_~length2~0 : int;
    var #Ultimate.alloc_#res.base : int;
    var #Ultimate.alloc_#res.offset : int;
    var main_#t~nondet20 : int;
    var main_#t~ret24.offset : int;
    var cstrstr_#t~post13.base : int;
    var cstrlen_#t~pre2.base : int;
    var cstrstr_~s.offset : int;
    var main_~length1~0 : int;
    var write~int_old_#memory_int : [int][int]int;
    var main_old_#valid : [int]int;
    var main_~nondetString2~0.base : int;
    var #Ultimate.alloc_old_#length : [int]int;
    var write~int_#sizeOfWrittenType : int;
    var read~int_#ptr.base : int;
    var cstrlen_#res : int;
    var write~int_#value : int;
    var cstrlen_#t~mem3 : int;
    var cstrlen_#t~pre2.offset : int;
    var main_#t~malloc23.offset : int;
    var cstrlen_#in~str.base : int;
    var cstrstr_#t~mem14 : int;
    var main_#t~malloc23.base : int;
    var main_#t~malloc22.base : int;
    var #Ultimate.alloc_old_#valid : [int]int;
    var cstrstr_#t~post13.offset : int;
    var cstrstr_#t~mem18 : int;
    var write~int_#ptr.offset : int;
    var main_#t~malloc22.offset : int;
    var cstrstr_#t~post17.base : int;
    var cstrstr_#t~post19.base : int;
    var cstrstr_~c~0 : int;
    var cstrstr_~len~0 : int;
    var cstrstr_#in~find.base : int;
    var cstrstr_#t~ret16 : int;
    var cstrstr_#t~post19.offset : int;
    var cstrlen_~str.base : int;
    var main_#t~nondet21 : int;
    var #Ultimate.alloc_~size : int;
    var read~int_#sizeOfReadType : int;
    var main_~nondetString2~0.offset : int;
    var cstrstr_#t~post17.offset : int;
    var cstrlen_~str.offset : int;
    var cstrlen_~s~0.base : int;
    var read~int_#ptr.offset : int;
    var main_#res : int;
    var cstrstr_~find.base : int;
    var main_~nondetString1~0.offset : int;
    var cstrstr_~find.offset : int;
    var cstrlen_~s~0.offset : int;
    var cstrstr_#in~s.offset : int;

  loc0:
    #NULL.offset, #NULL.base := 0, 0;
    #valid := #valid[0 := 0];
    main_old_#valid := #valid;
    havoc main_#res;
    havoc main_#t~nondet21, main_#t~malloc23.base, main_#t~nondet20, main_#t~malloc22.base, main_#t~ret24.offset, main_~length1~0, main_~nondetString2~0.base, main_~nondetString2~0.offset, main_#t~malloc22.offset, main_#t~ret24.base, main_~nondetString1~0.base, main_~nondetString1~0.offset, main_#t~malloc23.offset, main_~length2~0;
    assume 0 <= main_#t~nondet20 + 2147483648 && main_#t~nondet20 <= 2147483647;
    main_~length1~0 := main_#t~nondet20;
    havoc main_#t~nondet20;
    assume main_#t~nondet21 <= 2147483647 && 0 <= main_#t~nondet21 + 2147483648;
    main_~length2~0 := main_#t~nondet21;
    havoc main_#t~nondet21;
    assume !(main_~length1~0 < 1);
    assume !(main_~length2~0 < 1);
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := main_~length1~0;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1] == #valid;
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size] == #length;
    main_#t~malloc22.base, main_#t~malloc22.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    main_~nondetString1~0.base, main_~nondetString1~0.offset := main_#t~malloc22.base, main_#t~malloc22.offset;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := main_~length2~0;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    main_#t~malloc23.base, main_#t~malloc23.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    main_~nondetString2~0.base, main_~nondetString2~0.offset := main_#t~malloc23.base, main_#t~malloc23.offset;
    write~int_old_#memory_int := #memory_int;
    write~int_#sizeOfWrittenType, write~int_#ptr.base, write~int_#value, write~int_#ptr.offset := 1, main_~nondetString1~0.base, 0, main_~nondetString1~0.offset + main_~length1~0 + -1;
    assume #valid[write~int_#ptr.base] == 1;
    assume 0 <= write~int_#ptr.offset && write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base];
    assume 1 == #valid[write~int_#ptr.base];
    assume write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base] && 0 <= write~int_#ptr.offset;
    havoc #memory_int;
    assume #memory_int == write~int_old_#memory_int[write~int_#ptr.base := write~int_old_#memory_int[write~int_#ptr.base][write~int_#ptr.offset := write~int_#value]];
    write~int_old_#memory_int := #memory_int;
    write~int_#sizeOfWrittenType, write~int_#ptr.base, write~int_#value, write~int_#ptr.offset := 1, main_~nondetString2~0.base, 0, main_~length2~0 + main_~nondetString2~0.offset + -1;
    assume #valid[write~int_#ptr.base] == 1;
    assume 0 <= write~int_#ptr.offset && write~int_#ptr.offset + write~int_#sizeOfWrittenType <= #length[write~int_#ptr.base];
    assume #valid[write~int_#ptr.base] == 1;
    assume write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base] && 0 <= write~int_#ptr.offset;
    havoc #memory_int;
    assume write~int_old_#memory_int[write~int_#ptr.base := write~int_old_#memory_int[write~int_#ptr.base][write~int_#ptr.offset := write~int_#value]] == #memory_int;
    cstrstr_#in~find.offset, cstrstr_#in~s.base, cstrstr_#in~find.base, cstrstr_#in~s.offset := main_~nondetString2~0.offset, main_~nondetString1~0.base, main_~nondetString2~0.base, main_~nondetString1~0.offset;
    havoc cstrstr_#res.offset, cstrstr_#res.base;
    havoc cstrstr_#t~mem14, cstrstr_#t~post13.base, cstrstr_~s.offset, cstrstr_~s.base, cstrstr_#t~post13.offset, cstrstr_#t~mem18, cstrstr_#t~post17.offset, cstrstr_~sc~0, cstrstr_#t~post17.base, cstrstr_#t~post19.base, cstrstr_~find.base, cstrstr_~c~0, cstrstr_#t~ret15, cstrstr_~len~0, cstrstr_~find.offset, cstrstr_#t~ret16, cstrstr_#t~post19.offset;
    cstrstr_~s.offset, cstrstr_~s.base := cstrstr_#in~s.offset, cstrstr_#in~s.base;
    cstrstr_~find.base, cstrstr_~find.offset := cstrstr_#in~find.base, cstrstr_#in~find.offset;
    havoc cstrstr_~c~0;
    havoc cstrstr_~sc~0;
    havoc cstrstr_~len~0;
    cstrstr_#t~post13.base, cstrstr_#t~post13.offset := cstrstr_~find.base, cstrstr_~find.offset;
    cstrstr_~find.base, cstrstr_~find.offset := cstrstr_#t~post13.base, cstrstr_#t~post13.offset + 1;
    read~int_#ptr.base, read~int_#ptr.offset, read~int_#sizeOfReadType := cstrstr_#t~post13.base, cstrstr_#t~post13.offset, 1;
    assume 1 == #valid[read~int_#ptr.base];
    assume read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base] && 0 <= read~int_#ptr.offset;
    assume 1 == #valid[read~int_#ptr.base];
    assume 0 <= read~int_#ptr.offset && read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base];
    havoc read~int_#value;
    assume #memory_int[read~int_#ptr.base][read~int_#ptr.offset] == read~int_#value;
    cstrstr_#t~mem14 := read~int_#value;
    cstrstr_~c~0 := cstrstr_#t~mem14;
    assume !(0 == cstrstr_~c~0);
    havoc cstrstr_#t~post13.base, cstrstr_#t~post13.offset;
    havoc cstrstr_#t~mem14;
    cstrlen_#in~str.base, cstrlen_#in~str.offset := cstrstr_~find.base, cstrstr_~find.offset;
    havoc cstrlen_#res;
    havoc cstrlen_~s~0.base, cstrlen_#t~pre2.base, cstrlen_~s~0.offset, cstrlen_#t~mem3, cstrlen_#t~pre2.offset, cstrlen_~str.base, cstrlen_~str.offset;
    cstrlen_~str.base, cstrlen_~str.offset := cstrlen_#in~str.base, cstrlen_#in~str.offset;
    havoc cstrlen_~s~0.base, cstrlen_~s~0.offset;
    cstrlen_~s~0.base, cstrlen_~s~0.offset := cstrlen_~str.base, cstrlen_~str.offset;
    read~int_#ptr.base, read~int_#ptr.offset, read~int_#sizeOfReadType := cstrlen_~s~0.base, cstrlen_~s~0.offset, 1;
    assume #valid[read~int_#ptr.base] == 1;
    assume 0 <= read~int_#ptr.offset && read~int_#ptr.offset + read~int_#sizeOfReadType <= #length[read~int_#ptr.base];
    assume #valid[read~int_#ptr.base] == 1;
    assume read~int_#ptr.offset + read~int_#sizeOfReadType <= #length[read~int_#ptr.base] && 0 <= read~int_#ptr.offset;
    havoc read~int_#value;
    assume read~int_#value == #memory_int[read~int_#ptr.base][read~int_#ptr.offset];
    cstrlen_#t~mem3 := read~int_#value;
    assume 0 == cstrlen_#t~mem3;
    havoc cstrlen_#t~mem3;
    assume ((cstrlen_~s~0.offset < cstrlen_~str.offset && !(0 == 0 % 1)) || 0 == 0 % 1) || !(cstrlen_~s~0.offset < cstrlen_~str.offset);
    cstrlen_#res := (if cstrlen_~s~0.offset < cstrlen_~str.offset && !(0 == 0 % 1) then (-1 * cstrlen_~str.offset + cstrlen_~s~0.offset) / 1 + 1 else (-1 * cstrlen_~str.offset + cstrlen_~s~0.offset) / 1);
    cstrstr_#t~ret15 := cstrlen_#res;
    cstrstr_~len~0 := cstrstr_#t~ret15;
    havoc cstrstr_#t~ret15;
    goto loc1;
  loc1:
    cstrstr_#t~post17.base, cstrstr_#t~post17.offset := cstrstr_~s.base, cstrstr_~s.offset;
    cstrstr_~s.offset, cstrstr_~s.base := cstrstr_#t~post17.offset + 1, cstrstr_#t~post17.base;
    read~int_#ptr.base, read~int_#ptr.offset, read~int_#sizeOfReadType := cstrstr_#t~post17.base, cstrstr_#t~post17.offset, 1;
    assume 1 == #valid[read~int_#ptr.base];
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume !(read~int_#ptr.offset + read~int_#sizeOfReadType <= #length[read~int_#ptr.base]) || !(0 <= read~int_#ptr.offset);
    goto loc3;
  loc2_1:
    assume 0 <= read~int_#ptr.offset && read~int_#ptr.offset + read~int_#sizeOfReadType <= #length[read~int_#ptr.base];
    assume #valid[read~int_#ptr.base] == 1;
    assume 0 <= read~int_#ptr.offset && read~int_#ptr.offset + read~int_#sizeOfReadType <= #length[read~int_#ptr.base];
    havoc read~int_#value;
    assume #memory_int[read~int_#ptr.base][read~int_#ptr.offset] == read~int_#value;
    cstrstr_#t~mem18 := read~int_#value;
    cstrstr_~sc~0 := cstrstr_#t~mem18;
    assume !(0 == cstrstr_~sc~0);
    havoc cstrstr_#t~post17.base, cstrstr_#t~post17.offset;
    havoc cstrstr_#t~mem18;
    assume !(cstrstr_~c~0 == cstrstr_~sc~0);
    goto loc1;
  loc3:
    assert false;
}

