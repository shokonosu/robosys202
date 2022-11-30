#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Sho Konosu
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      res=0
}

### 1/0 TEST ###
out=$(./calculate)
[ "${out}" = "56 1.0 720" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
