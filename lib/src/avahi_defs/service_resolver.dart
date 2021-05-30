// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object org.freedesktop.Avahi.ServiceResolver.xml

import 'package:dbus/dbus.dart';

/// Signal data for org.freedesktop.Avahi.ServiceResolver.Found.
class AvahiServiceResolverFound extends DBusSignal {
  int get interfaceValue => (values[0] as DBusInt32).value;
  int get protocol => (values[1] as DBusInt32).value;
  String get serviceName => (values[2] as DBusString).value;
  String get type => (values[3] as DBusString).value;
  String get domain => (values[4] as DBusString).value;
  String get host => (values[5] as DBusString).value;
  int get aprotocol => (values[6] as DBusInt32).value;
  String get address => (values[7] as DBusString).value;
  int get port => (values[8] as DBusUint16).value;
  List<List<int>> get txt => (values[9] as DBusArray)
      .children
      .map((child) => (child as DBusArray)
          .children
          .map((child) => (child as DBusByte).value)
          .toList())
      .toList();
  int get flags => (values[10] as DBusUint32).value;

  AvahiServiceResolverFound(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.name,
            signal.values);
}

/// Signal data for org.freedesktop.Avahi.ServiceResolver.Failure.
class AvahiServiceResolverFailure extends DBusSignal {
  String get error => (values[0] as DBusString).value;

  AvahiServiceResolverFailure(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.name,
            signal.values);
}

class AvahiServiceResolver extends DBusRemoteObject {
  /// Stream of org.freedesktop.Avahi.ServiceResolver.Found signals.
  late final Stream<AvahiServiceResolverFound> found;

  /// Stream of org.freedesktop.Avahi.ServiceResolver.Failure signals.
  late final Stream<AvahiServiceResolverFailure> failure;

  AvahiServiceResolver(
      DBusClient client, String destination, DBusObjectPath path)
      : super(client, destination, path) {
    found = DBusRemoteObjectSignalStream(
            this, 'org.freedesktop.Avahi.ServiceResolver', 'Found',
            signature: DBusSignature('iissssisqaayu'))
        .map((signal) => AvahiServiceResolverFound(signal));

    failure = DBusRemoteObjectSignalStream(
            this, 'org.freedesktop.Avahi.ServiceResolver', 'Failure',
            signature: DBusSignature('s'))
        .map((signal) => AvahiServiceResolverFailure(signal));
  }

  /// Invokes org.freedesktop.DBus.Introspectable.Introspect()
  Future<String> callIntrospect(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod(
        'org.freedesktop.DBus.Introspectable', 'Introspect', [],
        replySignature: DBusSignature('s'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return (result.returnValues[0] as DBusString).value;
  }

  /// Invokes org.freedesktop.Avahi.ServiceResolver.Free()
  Future<void> callFree(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.Avahi.ServiceResolver', 'Free', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.freedesktop.Avahi.ServiceResolver.Start()
  Future<void> callStart(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.freedesktop.Avahi.ServiceResolver', 'Start', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }
}
