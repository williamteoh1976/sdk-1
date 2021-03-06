// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "dart:_internal" show patch;

@patch
@pragma("vm:entry-point")
class NativeType {}

@patch
@pragma("vm:entry-point")
class _NativeInteger extends NativeType {}

@patch
@pragma("vm:entry-point")
class _NativeDouble extends NativeType {}

@patch
@pragma("vm:entry-point")
class Int8 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Int16 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Int32 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Int64 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Uint8 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Uint16 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Uint32 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Uint64 extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class IntPtr extends _NativeInteger {}

@patch
@pragma("vm:entry-point")
class Float extends _NativeDouble {}

@patch
@pragma("vm:entry-point")
class Double extends _NativeDouble {}

@patch
@pragma("vm:entry-point")
class Void extends NativeType {}

@patch
@pragma("vm:entry-point")
class NativeFunction<T extends Function> extends NativeType {}
