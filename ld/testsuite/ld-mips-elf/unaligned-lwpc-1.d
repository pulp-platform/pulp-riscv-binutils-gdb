#name: MIPS LWPC from unaligned symbol 1
#source: unaligned-lwpc-1.s
#source: unaligned-data.s
#as: -EB -32 -mips32r6
#ld: -EB -Ttext 0x1c000000 -Tdata 0x1c080000 -e 0x1c000000
#error: \A[^\n]*: In function `foo':\n
#error:   \(\.text\+0x[0-9a-f]+\): PC-relative load from unaligned address\n
#error:   [^\n]*: In function `foo':\n
#error:   \(\.text\+0x[0-9a-f]+\): PC-relative load from unaligned address\Z
