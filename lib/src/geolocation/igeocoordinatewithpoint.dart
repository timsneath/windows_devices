// igeocoordinatewithpoint.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/winrt.dart';

import 'geopoint.dart';

/// @nodoc
const IID_IGeocoordinateWithPoint = '{feea0525-d22c-4d46-b527-0b96066fc7db}';

/// {@category Interface}
/// {@category winrt}
class IGeocoordinateWithPoint extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGeocoordinateWithPoint.fromRawPointer(super.ptr);

  factory IGeocoordinateWithPoint.from(IInspectable interface) =>
      IGeocoordinateWithPoint.fromRawPointer(
          interface.toInterface(IID_IGeocoordinateWithPoint));

  Geopoint get point {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Geopoint.fromRawPointer(retValuePtr);
  }
}
