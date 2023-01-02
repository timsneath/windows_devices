// igeoposition2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/winrt.dart';

import 'civicaddress.dart';
import 'geocoordinate.dart';
import 'igeoposition.dart';
import 'venuedata.dart';

/// @nodoc
const IID_IGeoposition2 = '{7f62f697-8671-4b0d-86f8-474a8496187c}';

/// {@category Interface}
/// {@category winrt}
class IGeoposition2 extends IInspectable implements IGeoposition {
  // vtable begins at 6, is 1 entries long.
  IGeoposition2.fromRawPointer(super.ptr);

  factory IGeoposition2.from(IInspectable interface) =>
      IGeoposition2.fromRawPointer(interface.toInterface(IID_IGeoposition2));

  VenueData get venueData {
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

    return VenueData.fromRawPointer(retValuePtr);
  }

  // IGeoposition methods
  late final _iGeoposition = IGeoposition.from(this);

  @override
  Geocoordinate get coordinate => _iGeoposition.coordinate;

  @override
  CivicAddress get civicAddress => _iGeoposition.civicAddress;
}
