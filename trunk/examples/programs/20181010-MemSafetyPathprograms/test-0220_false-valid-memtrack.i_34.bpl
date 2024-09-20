var ~#list~0.base : int;

var #memory_$Pointer$.base : [int][int]int;

var #valid : [int]int;

var ~#list~0.offset : int;

var #NULL.offset : int;

var #length : [int]int;

var #NULL.base : int;

var #memory_$Pointer$.offset : [int][int]int;

procedure ULTIMATE.start() returns ()
modifies ~#list~0.base, #memory_$Pointer$.base, #valid, ~#list~0.offset, #NULL.offset, #length, #NULL.base, #memory_$Pointer$.offset;
{
    var main_#t~mem14.offset : int;
    var write~$Pointer$_#sizeOfWrittenType : int;
    var main_#t~nondet11 : int;
    var l2_destroy_#in~list.offset : int;
    var main_#t~mem17.offset : int;
    var l1_insert_#t~mem10.offset : int;
    var calloc_model_#res.base : int;
    var read~$Pointer$_#value.offset : int;
    var l2_destroy_~list.offset : int;
    var l2_insert_#t~ret2.base : int;
    var l1_insert_#in~list.offset : int;
    var l2_insert_#t~mem4.base : int;
    var l2_insert_#t~mem5.base : int;
    var l2_destroy_#t~mem6.offset : int;
    var l2_insert_~list.base : int;
    var main_#t~mem17.base : int;
    var main_#t~mem14.base : int;
    var ULTIMATE.dealloc_~addr.base : int;
    var main_#t~mem13.base : int;
    var main_#t~mem15.base : int;
    var main_~next~1.base : int;
    var main_#t~mem16.base : int;
    var l1_insert_#t~ret8.offset : int;
    var main_#t~mem12.base : int;
    var #Ultimate.alloc_#res.base : int;
    var #Ultimate.alloc_#res.offset : int;
    var calloc_model_#in~nmemb : int;
    var l2_insert_#t~ret2.offset : int;
    var l2_insert_~item~0.base : int;
    var l2_insert_~list.offset : int;
    var main_old_#valid : [int]int;
    var #Ultimate.alloc_old_#length : [int]int;
    var l1_insert_#t~nondet9 : int;
    var calloc_model_~ptr~0.base : int;
    var read~$Pointer$_#ptr.offset : int;
    var write~$Pointer$_#ptr.base : int;
    var calloc_model_#t~malloc0.base : int;
    var calloc_model_#t~memset1.offset : int;
    var l2_destroy_#t~mem7.base : int;
    var main_~next~1.offset : int;
    var ULTIMATE.dealloc_old_#valid : [int]int;
    var write~$Pointer$_#ptr.offset : int;
    var l2_insert_#in~list.base : int;
    var calloc_model_~ptr~0.offset : int;
    var calloc_model_#t~memset1.base : int;
    var l2_destroy_#in~list.base : int;
    var calloc_model_#res.offset : int;
    var l2_insert_#t~malloc3.base : int;
    var l1_insert_~list.offset : int;
    var l1_insert_#t~ret8.base : int;
    var read~$Pointer$_#value.base : int;
    var #Ultimate.C_memset_#amount : int;
    var l2_destroy_#t~mem7.offset : int;
    var #Ultimate.alloc_old_#valid : [int]int;
    var read~$Pointer$_#sizeOfReadType : int;
    var l2_destroy_~next~0.base : int;
    var ULTIMATE.dealloc_~addr.offset : int;
    var #Ultimate.C_memset_#ptr.offset : int;
    var l1_insert_#in~list.base : int;
    var main_#t~mem13.offset : int;
    var main_#t~mem15.offset : int;
    var l2_insert_#in~list.offset : int;
    var write~$Pointer$_#value.offset : int;
    var l1_insert_~item~1.base : int;
    var calloc_model_~size : int;
    var l2_insert_#t~malloc3.offset : int;
    var l2_insert_~item~0.offset : int;
    var calloc_model_#in~size : int;
    var write~$Pointer$_old_#memory_$Pointer$.base : [int][int]int;
    var l1_insert_#t~mem10.base : int;
    var l1_insert_~item~1.offset : int;
    var calloc_model_#t~malloc0.offset : int;
    var #Ultimate.alloc_~size : int;
    var main_#t~mem12.offset : int;
    var l1_insert_~list.base : int;
    var main_#t~mem16.offset : int;
    var #Ultimate.C_memset_#t~loopctr19 : int;
    var calloc_model_~nmemb : int;
    var l2_insert_#t~mem4.offset : int;
    var l2_destroy_#t~mem6.base : int;
    var l2_destroy_~list.base : int;
    var write~$Pointer$_#value.base : int;
    var #Ultimate.C_memset_#value : int;
    var write~$Pointer$_old_#memory_$Pointer$.offset : [int][int]int;
    var main_#res : int;
    var #Ultimate.C_memset_#ptr.base : int;
    var #Ultimate.C_memset_#res.base : int;
    var l2_destroy_~next~0.offset : int;
    var #Ultimate.C_memset_#res.offset : int;
    var l2_insert_#t~mem5.offset : int;
    var read~$Pointer$_#ptr.base : int;

  loc0:
    #NULL.offset, #NULL.base := 0, 0;
    #valid := #valid[0 := 0];
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 4;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1] == #valid;
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size] == #length;
    ~#list~0.base, ~#list~0.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := 0, ~#list~0.offset, 4, 0, ~#list~0.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume #memory_$Pointer$.offset == write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]];
    main_old_#valid := #valid;
    havoc main_#res;
    havoc main_#t~mem14.offset, main_#t~nondet11, main_#t~mem17.offset, main_#t~mem12.offset, main_#t~mem16.offset, main_~next~1.offset, main_#t~mem17.base, main_#t~mem13.offset, main_#t~mem15.offset, main_#t~mem14.base, main_#t~mem13.base, main_#t~mem15.base, main_~next~1.base, main_#t~mem16.base, main_#t~mem12.base;
    l1_insert_#in~list.base, l1_insert_#in~list.offset := ~#list~0.base, ~#list~0.offset;
    havoc l1_insert_#t~mem10.base, l1_insert_~item~1.offset, l1_insert_#t~mem10.offset, l1_insert_~item~1.base, l1_insert_~list.offset, l1_insert_~list.base, l1_insert_#t~ret8.offset, l1_insert_#t~nondet9, l1_insert_#t~ret8.base;
    l1_insert_~list.offset, l1_insert_~list.base := l1_insert_#in~list.offset, l1_insert_#in~list.base;
    calloc_model_#in~size, calloc_model_#in~nmemb := 8, 1;
    havoc calloc_model_#res.base, calloc_model_#res.offset;
    havoc calloc_model_#t~malloc0.offset, calloc_model_~size, calloc_model_~ptr~0.offset, calloc_model_#t~memset1.base, calloc_model_~nmemb, calloc_model_~ptr~0.base, calloc_model_#t~malloc0.base, calloc_model_#t~memset1.offset;
    calloc_model_~nmemb := calloc_model_#in~nmemb;
    calloc_model_~size := calloc_model_#in~size;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := calloc_model_~nmemb * calloc_model_~size;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    calloc_model_#t~malloc0.offset, calloc_model_#t~malloc0.base := #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    calloc_model_~ptr~0.offset, calloc_model_~ptr~0.base := calloc_model_#t~malloc0.offset, calloc_model_#t~malloc0.base;
    #Ultimate.C_memset_#ptr.offset, #Ultimate.C_memset_#value, #Ultimate.C_memset_#amount, #Ultimate.C_memset_#ptr.base := calloc_model_~ptr~0.offset, 0, (if calloc_model_~nmemb * calloc_model_~size % 4294967296 <= 2147483647 then calloc_model_~nmemb * calloc_model_~size % 4294967296 else calloc_model_~nmemb * calloc_model_~size % 4294967296 + -4294967296), calloc_model_~ptr~0.base;
    assume 1 == #valid[#Ultimate.C_memset_#ptr.base];
    assume 0 <= #Ultimate.C_memset_#ptr.offset && #Ultimate.C_memset_#ptr.offset + #Ultimate.C_memset_#amount <= #length[#Ultimate.C_memset_#ptr.base];
    assume 1 == #valid[#Ultimate.C_memset_#ptr.base];
    assume 0 <= #Ultimate.C_memset_#ptr.offset && #Ultimate.C_memset_#amount + #Ultimate.C_memset_#ptr.offset <= #length[#Ultimate.C_memset_#ptr.base];
    havoc #Ultimate.C_memset_#res.base, #Ultimate.C_memset_#res.offset;
    havoc #Ultimate.C_memset_#t~loopctr19;
    #Ultimate.C_memset_#t~loopctr19 := 0;
    goto loc1;
  loc1:
    goto loc1_0, loc1_1;
  loc1_0:
    assume #Ultimate.C_memset_#t~loopctr19 < #Ultimate.C_memset_#amount;
    #memory_$Pointer$.base, #memory_$Pointer$.offset := #memory_$Pointer$.base[#Ultimate.C_memset_#ptr.base := #memory_$Pointer$.base[#Ultimate.C_memset_#ptr.base][#Ultimate.C_memset_#t~loopctr19 + #Ultimate.C_memset_#ptr.offset := 0]], #memory_$Pointer$.offset[#Ultimate.C_memset_#ptr.base := #memory_$Pointer$.offset[#Ultimate.C_memset_#ptr.base][#Ultimate.C_memset_#t~loopctr19 + #Ultimate.C_memset_#ptr.offset := #Ultimate.C_memset_#value % 256]];
    #Ultimate.C_memset_#t~loopctr19 := #Ultimate.C_memset_#t~loopctr19 + 1;
    goto loc1;
  loc1_1:
    assume !(#Ultimate.C_memset_#t~loopctr19 < #Ultimate.C_memset_#amount);
    assume #Ultimate.C_memset_#ptr.offset == #Ultimate.C_memset_#res.offset && #Ultimate.C_memset_#ptr.base == #Ultimate.C_memset_#res.base;
    calloc_model_#t~memset1.base, calloc_model_#t~memset1.offset := #Ultimate.C_memset_#res.base, #Ultimate.C_memset_#res.offset;
    calloc_model_#res.base, calloc_model_#res.offset := calloc_model_~ptr~0.base, calloc_model_~ptr~0.offset;
    havoc calloc_model_#t~memset1.base, calloc_model_#t~memset1.offset;
    l1_insert_#t~ret8.offset, l1_insert_#t~ret8.base := calloc_model_#res.offset, calloc_model_#res.base;
    l1_insert_~item~1.offset, l1_insert_~item~1.base := l1_insert_#t~ret8.offset, l1_insert_#t~ret8.base;
    havoc l1_insert_#t~ret8.offset, l1_insert_#t~ret8.base;
    assume !(0 == l1_insert_~item~1.base) || !(0 == l1_insert_~item~1.offset);
    l2_insert_#in~list.base, l2_insert_#in~list.offset := l1_insert_~item~1.base, l1_insert_~item~1.offset + 4;
    havoc l2_insert_~list.base, l2_insert_#t~ret2.offset, l2_insert_#t~mem5.offset, l2_insert_#t~ret2.base, l2_insert_#t~malloc3.base, l2_insert_#t~malloc3.offset, l2_insert_~item~0.base, l2_insert_~list.offset, l2_insert_~item~0.offset, l2_insert_#t~mem4.offset, l2_insert_#t~mem4.base, l2_insert_#t~mem5.base;
    l2_insert_~list.base, l2_insert_~list.offset := l2_insert_#in~list.base, l2_insert_#in~list.offset;
    calloc_model_#in~size, calloc_model_#in~nmemb := 8, 1;
    havoc calloc_model_#res.base, calloc_model_#res.offset;
    havoc calloc_model_#t~malloc0.offset, calloc_model_~size, calloc_model_~ptr~0.offset, calloc_model_#t~memset1.base, calloc_model_~nmemb, calloc_model_~ptr~0.base, calloc_model_#t~malloc0.base, calloc_model_#t~memset1.offset;
    calloc_model_~nmemb := calloc_model_#in~nmemb;
    calloc_model_~size := calloc_model_#in~size;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := calloc_model_~nmemb * calloc_model_~size;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    calloc_model_#t~malloc0.offset, calloc_model_#t~malloc0.base := #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    calloc_model_~ptr~0.offset, calloc_model_~ptr~0.base := calloc_model_#t~malloc0.offset, calloc_model_#t~malloc0.base;
    #Ultimate.C_memset_#ptr.offset, #Ultimate.C_memset_#value, #Ultimate.C_memset_#amount, #Ultimate.C_memset_#ptr.base := calloc_model_~ptr~0.offset, 0, (if calloc_model_~nmemb * calloc_model_~size % 4294967296 <= 2147483647 then calloc_model_~nmemb * calloc_model_~size % 4294967296 else calloc_model_~nmemb * calloc_model_~size % 4294967296 + -4294967296), calloc_model_~ptr~0.base;
    assume 1 == #valid[#Ultimate.C_memset_#ptr.base];
    assume #Ultimate.C_memset_#amount + #Ultimate.C_memset_#ptr.offset <= #length[#Ultimate.C_memset_#ptr.base] && 0 <= #Ultimate.C_memset_#ptr.offset;
    assume 1 == #valid[#Ultimate.C_memset_#ptr.base];
    assume #Ultimate.C_memset_#ptr.offset + #Ultimate.C_memset_#amount <= #length[#Ultimate.C_memset_#ptr.base] && 0 <= #Ultimate.C_memset_#ptr.offset;
    havoc #Ultimate.C_memset_#res.base, #Ultimate.C_memset_#res.offset;
    havoc #Ultimate.C_memset_#t~loopctr19;
    #Ultimate.C_memset_#t~loopctr19 := 0;
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume #Ultimate.C_memset_#t~loopctr19 < #Ultimate.C_memset_#amount;
    #memory_$Pointer$.base, #memory_$Pointer$.offset := #memory_$Pointer$.base[#Ultimate.C_memset_#ptr.base := #memory_$Pointer$.base[#Ultimate.C_memset_#ptr.base][#Ultimate.C_memset_#t~loopctr19 + #Ultimate.C_memset_#ptr.offset := 0]], #memory_$Pointer$.offset[#Ultimate.C_memset_#ptr.base := #memory_$Pointer$.offset[#Ultimate.C_memset_#ptr.base][#Ultimate.C_memset_#t~loopctr19 + #Ultimate.C_memset_#ptr.offset := #Ultimate.C_memset_#value % 256]];
    #Ultimate.C_memset_#t~loopctr19 := #Ultimate.C_memset_#t~loopctr19 + 1;
    goto loc2;
  loc2_1:
    assume !(#Ultimate.C_memset_#t~loopctr19 < #Ultimate.C_memset_#amount);
    assume #Ultimate.C_memset_#ptr.base == #Ultimate.C_memset_#res.base && #Ultimate.C_memset_#ptr.offset == #Ultimate.C_memset_#res.offset;
    calloc_model_#t~memset1.base, calloc_model_#t~memset1.offset := #Ultimate.C_memset_#res.base, #Ultimate.C_memset_#res.offset;
    calloc_model_#res.base, calloc_model_#res.offset := calloc_model_~ptr~0.base, calloc_model_~ptr~0.offset;
    havoc calloc_model_#t~memset1.base, calloc_model_#t~memset1.offset;
    l2_insert_#t~ret2.offset, l2_insert_#t~ret2.base := calloc_model_#res.offset, calloc_model_#res.base;
    l2_insert_~item~0.base, l2_insert_~item~0.offset := l2_insert_#t~ret2.base, l2_insert_#t~ret2.offset;
    havoc l2_insert_#t~ret2.offset, l2_insert_#t~ret2.base;
    assume !(l2_insert_~item~0.base == 0) || !(l2_insert_~item~0.offset == 0);
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 119;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base] == 0;
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume 0 == #Ultimate.alloc_#res.offset;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    l2_insert_#t~malloc3.base, l2_insert_#t~malloc3.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := l2_insert_#t~malloc3.base, l2_insert_~item~0.offset, 4, l2_insert_#t~malloc3.offset, l2_insert_~item~0.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base];
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] == #memory_$Pointer$.offset && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]];
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := l2_insert_~item~0.base, 4, l2_insert_~item~0.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume read~$Pointer$_#value.offset == #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] && #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base;
    l2_insert_#t~mem4.offset, l2_insert_#t~mem4.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    assume !(0 == l2_insert_#t~mem4.base) || !(0 == l2_insert_#t~mem4.offset);
    havoc l2_insert_#t~mem4.offset, l2_insert_#t~mem4.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := l2_insert_~list.base, 4, l2_insert_~list.offset;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base && read~$Pointer$_#value.offset == #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset];
    l2_insert_#t~mem5.offset, l2_insert_#t~mem5.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := l2_insert_#t~mem5.base, l2_insert_~item~0.offset + 4, 4, l2_insert_#t~mem5.offset, l2_insert_~item~0.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base];
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] == #memory_$Pointer$.offset && write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]] == #memory_$Pointer$.base;
    havoc l2_insert_#t~mem5.offset, l2_insert_#t~mem5.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := l2_insert_~item~0.base, l2_insert_~list.offset, 4, l2_insert_~item~0.offset, l2_insert_~list.base;
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base];
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base];
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] == #memory_$Pointer$.offset && write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]] == #memory_$Pointer$.base;
    assume 0 <= l1_insert_#t~nondet9 + 2147483648 && l1_insert_#t~nondet9 <= 2147483647;
    assume 0 == l1_insert_#t~nondet9;
    havoc l1_insert_#t~nondet9;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := l1_insert_~list.base, 4, l1_insert_~list.offset;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base && read~$Pointer$_#value.offset == #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset];
    l1_insert_#t~mem10.base, l1_insert_#t~mem10.offset := read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := l1_insert_#t~mem10.base, l1_insert_~item~1.offset, 4, l1_insert_#t~mem10.offset, l1_insert_~item~1.base;
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume #memory_$Pointer$.offset == write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]];
    havoc l1_insert_#t~mem10.base, l1_insert_#t~mem10.offset;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset := #memory_$Pointer$.base, #memory_$Pointer$.offset;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := l1_insert_~item~1.base, l1_insert_~list.offset, 4, l1_insert_~item~1.offset, l1_insert_~list.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base];
    assume #valid[write~$Pointer$_#ptr.base] == 1;
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] == #memory_$Pointer$.offset && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]];
    assume 0 <= main_#t~nondet11 + 2147483648 && main_#t~nondet11 <= 2147483647;
    assume main_#t~nondet11 == 0;
    havoc main_#t~nondet11;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := ~#list~0.base, 4, ~#list~0.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset && read~$Pointer$_#value.base == #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset];
    main_#t~mem12.offset, main_#t~mem12.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := main_#t~mem12.base, 4, main_#t~mem12.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume read~$Pointer$_#value.base == #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    main_#t~mem13.offset, main_#t~mem13.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    main_~next~1.offset, main_~next~1.base := main_#t~mem13.offset, main_#t~mem13.base;
    havoc main_#t~mem12.offset, main_#t~mem12.base;
    havoc main_#t~mem13.offset, main_#t~mem13.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := ~#list~0.base, 4, ~#list~0.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume read~$Pointer$_#value.base == #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    main_#t~mem14.offset, main_#t~mem14.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := main_#t~mem14.base, 4, main_#t~mem14.offset + 4;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset && #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base;
    main_#t~mem15.offset, main_#t~mem15.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    l2_destroy_#in~list.offset, l2_destroy_#in~list.base := main_#t~mem15.offset, main_#t~mem15.base;
    havoc l2_destroy_~next~0.offset, l2_destroy_#t~mem7.offset, l2_destroy_~list.offset, l2_destroy_~next~0.base, l2_destroy_#t~mem6.base, l2_destroy_#t~mem6.offset, l2_destroy_#t~mem7.base, l2_destroy_~list.base;
    l2_destroy_~list.offset, l2_destroy_~list.base := l2_destroy_#in~list.offset, l2_destroy_#in~list.base;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := l2_destroy_~list.base, 4, l2_destroy_~list.offset;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    l2_destroy_#t~mem6.base, l2_destroy_#t~mem6.offset := read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume 0 == l2_destroy_#t~mem6.offset;
    assume 1 == #valid[l2_destroy_#t~mem6.base] || l2_destroy_#t~mem6.base == 0;
    ULTIMATE.dealloc_old_#valid := #valid;
    ULTIMATE.dealloc_~addr.base, ULTIMATE.dealloc_~addr.offset := l2_destroy_#t~mem6.base, l2_destroy_#t~mem6.offset;
    havoc #valid;
    assume #valid == ULTIMATE.dealloc_old_#valid[ULTIMATE.dealloc_~addr.base := 0];
    havoc l2_destroy_#t~mem6.base, l2_destroy_#t~mem6.offset;
    goto loc3;
  loc3:
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := l2_destroy_~list.base, 4, l2_destroy_~list.offset + 4;
    goto loc4;
  loc4:
    goto loc4_0, loc4_1;
  loc4_0:
    assume !(1 == #valid[read~$Pointer$_#ptr.base]);
    goto loc5;
  loc4_1:
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset && read~$Pointer$_#value.base == #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset];
    l2_destroy_#t~mem7.offset, l2_destroy_#t~mem7.base := read~$Pointer$_#value.offset, read~$Pointer$_#value.base;
    l2_destroy_~next~0.offset, l2_destroy_~next~0.base := l2_destroy_#t~mem7.offset, l2_destroy_#t~mem7.base;
    havoc l2_destroy_#t~mem7.offset, l2_destroy_#t~mem7.base;
    assume 0 == l2_destroy_~list.offset;
    assume l2_destroy_~list.base == 0 || 1 == #valid[l2_destroy_~list.base];
    ULTIMATE.dealloc_old_#valid := #valid;
    ULTIMATE.dealloc_~addr.base, ULTIMATE.dealloc_~addr.offset := l2_destroy_~list.base, l2_destroy_~list.offset;
    havoc #valid;
    assume #valid == ULTIMATE.dealloc_old_#valid[ULTIMATE.dealloc_~addr.base := 0];
    l2_destroy_~list.offset, l2_destroy_~list.base := l2_destroy_~next~0.offset, l2_destroy_~next~0.base;
    assume !(l2_destroy_~list.offset == 0) || !(0 == l2_destroy_~list.base);
    goto loc3;
  loc5:
    assert false;
}

