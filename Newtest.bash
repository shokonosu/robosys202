#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Sho Konosu
# SPDX-License-Identifier: BSD-3-Clause
#1/0test#

### I/O TEST ###
ng () {
      echo NG at Line $1
      res=1
}

res = 0

out=$(./calculate)
[ "${out}" = 56, 1.0, 720 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
