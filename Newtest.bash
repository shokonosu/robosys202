#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Sho Konosu
# SPDX-License-Identifier: BSD-3-Clause

ng () {
echo NG at Line $1
res=1
}

res=0

#1/0test#
out=$(./calculate)
[ "${out}" = "56, 1.0, 720" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

# strange imput #
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO} 
	        　
out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
		      　
[ "$res" = 0 ] && echo OK
exit $res
