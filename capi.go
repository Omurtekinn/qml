// Copyright 2014 <chaishushan{AT}gmail.com>. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package qml

/*
#include "capi.h"
*/
import "C"

func init() {
	C.initGoQmlLib()
}
