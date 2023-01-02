// geoposition.dart

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
import 'igeoposition2.dart';
import 'venuedata.dart';

/// Represents a location that may contain latitude and longitude data or
/// venue data.
///
/// {@category Class}
/// {@category winrt}
class Geoposition extends IInspectable implements IGeoposition, IGeoposition2 {
  Geoposition.fromRawPointer(super.ptr);

  // IGeoposition methods
  late final _iGeoposition = IGeoposition.from(this);

  @override
  Geocoordinate get coordinate => _iGeoposition.coordinate;

  @override
  CivicAddress get civicAddress => _iGeoposition.civicAddress;

  // IGeoposition2 methods
  late final _iGeoposition2 = IGeoposition2.from(this);

  @override
  VenueData get venueData => _iGeoposition2.venueData;
}
