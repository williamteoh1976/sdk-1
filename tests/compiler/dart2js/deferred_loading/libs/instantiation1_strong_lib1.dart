// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*element: getFoo:OutputUnit(1, {b})*/
T getFoo<T>(T v) => v;

typedef dynamic G<T>(T v);

/*strong.element: m:OutputUnit(1, {b})*/
/*strongConst.element: m:
 OutputUnit(1, {b}),
 constants=[
  InstantiationConstant([int],FunctionConstant(getFoo))=OutputUnit(1, {b})]
*/
m(int x, {G<int> f: getFoo}) {
  print(f(x));
}
