// devicepicker.dart

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/winrt.dart';

/// {@category Class}
/// {@category winrt}
class DevicePicker extends IInspectable implements IDevicePicker {
  DevicePicker() : super(ActivateClass(_className));
  DevicePicker.fromRawPointer(super.ptr);

  static const _className = 'Windows.Devices.Enumeration.DevicePicker';

  // IDevicePicker methods
  late final _iDevicePicker = IDevicePicker.from(this);

  @override
  DevicePickerFilter get filter => _iDevicePicker.filter;

  @override
  Pointer<COMObject> get appearance => _iDevicePicker.appearance;

  @override
  IVector<String> get requestedProperties => _iDevicePicker.requestedProperties;

  @override
  int add_DeviceSelected(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iDevicePicker.add_DeviceSelected(handler);

  @override
  void remove_DeviceSelected(int token) =>
      _iDevicePicker.remove_DeviceSelected(token);

  @override
  int add_DisconnectButtonClicked(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iDevicePicker.add_DisconnectButtonClicked(handler);

  @override
  void remove_DisconnectButtonClicked(int token) =>
      _iDevicePicker.remove_DisconnectButtonClicked(token);

  @override
  int add_DevicePickerDismissed(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iDevicePicker.add_DevicePickerDismissed(handler);

  @override
  void remove_DevicePickerDismissed(int token) =>
      _iDevicePicker.remove_DevicePickerDismissed(token);

  @override
  void show(Rect selection) => _iDevicePicker.show(selection);

  @override
  void showWithPlacement(Rect selection, Placement placement) =>
      _iDevicePicker.showWithPlacement(selection, placement);

  @override
  Pointer<COMObject> pickSingleDeviceAsync(Rect selection) =>
      _iDevicePicker.pickSingleDeviceAsync(selection);

  @override
  Pointer<COMObject> pickSingleDeviceAsyncWithPlacement(
          Rect selection, Placement placement) =>
      _iDevicePicker.pickSingleDeviceAsyncWithPlacement(selection, placement);

  @override
  void hide() => _iDevicePicker.hide();

  @override
  void setDisplayStatus(Pointer<COMObject> device, String status,
          DevicePickerDisplayStatusOptions options) =>
      _iDevicePicker.setDisplayStatus(device, status, options);
}
