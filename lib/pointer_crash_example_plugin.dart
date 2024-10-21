import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'package:ffi/ffi.dart';

import 'pointer_crash_example_plugin_bindings_generated.dart';

int substract(int a, int b) {
  final pointer = calloc<Int32>();
  pointer.value = a;
  return _bindings.subtract(pointer, b);
}

const String _libName = 'pointer_crash_example_plugin';

/// The dynamic library in which the symbols for [PointerCrashExamplePluginBindings] can be found.
final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

/// The bindings to the native functions in [_dylib].
final PointerCrashExamplePluginBindings _bindings =
    PointerCrashExamplePluginBindings(_dylib);
