// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#include "pointer_crash_example_plugin.h"


long subtract(int *a, int b)
{
    return *a - b;
}

