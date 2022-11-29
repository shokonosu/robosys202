#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Sho Konosu
# SPDX-License-Identifier: BSD-3-Clause
#1/0test#

ng () {
echo NG at line $1
res=1
}

res=0

### I/O TEST ###
out=$(./calculate)
[ "${out}" = 56, 1.0, 720 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}	    
[ "${out}" = "" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res
