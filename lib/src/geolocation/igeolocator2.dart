// igeolocator2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/winrt.dart';

/// @nodoc
const IID_IGeolocator2 = '{d1b42e6d-8891-43b4-ad36-27c6fe9a97b1}';

/// {@category Interface}
/// {@category winrt}
class IGeolocator2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGeolocator2.fromRawPointer(super.ptr);

  factory IGeolocator2.from(IInspectable interface) =>
      IGeolocator2.fromRawPointer(interface.toInterface(IID_IGeolocator2));

  void allowFallbackToConsentlessPositions() {
    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
