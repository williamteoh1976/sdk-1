// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/src/generated/engine.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../driver_resolution.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(LogicalAndTest);
    defineReflectiveTests(LogicalAndWithNnbdTest);
    defineReflectiveTests(LogicalOrTest);
    defineReflectiveTests(LogicalOrWithNnbdTest);
  });
}

@reflectiveTest
class LogicalAndTest extends DriverResolutionTest {
  test_simple() async {
    addTestFile('''
void f(bool a, bool b) {
  var c = a && b;
  print(c);
}
''');
    await resolveTestFile();
    assertType(findNode.simple('c)'), 'bool');
  }
}

@reflectiveTest
class LogicalAndWithNnbdTest extends LogicalAndTest {
  @override
  AnalysisOptionsImpl get analysisOptions => AnalysisOptionsImpl()
    ..contextFeatures = new FeatureSet.forTesting(
        sdkVersion: '2.3.0', additionalFeatures: [Feature.non_nullable]);

  @override
  bool get typeToStringWithNullability => true;
}

@reflectiveTest
class LogicalOrTest extends DriverResolutionTest {
  test_simple() async {
    addTestFile('''
void f(bool a, bool b) {
  var c = a || b;
  print(c);
}
''');
    await resolveTestFile();
    assertType(findNode.simple('c)'), 'bool');
  }
}

@reflectiveTest
class LogicalOrWithNnbdTest extends LogicalOrTest {
  @override
  AnalysisOptionsImpl get analysisOptions => AnalysisOptionsImpl()
    ..contextFeatures = new FeatureSet.forTesting(
        sdkVersion: '2.3.0', additionalFeatures: [Feature.non_nullable]);

  @override
  bool get typeToStringWithNullability => true;
}
