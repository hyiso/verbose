library verbose;

import 'dart:io';

///
/// Verbose class,
///
class Verbose {
  /// namesapce for logging message
  final String namespace;

  /// IOSink for this verbose, default to [stdout]
  final IOSink sink;

  /// Separator used between [namespace] and [message], default to ' - '
  final String separator;

  Verbose(
    this.namespace, {
    this.separator = ' - ',
    IOSink? sink,
  }) : sink = sink ?? stdout;

  /// Make instance of Verbose callable as a Function
  String? call(String message) {
    if (enabled) {
      message = [if (namespace.isNotEmpty) namespace, message].join(separator);
      sink.writeln(message);
      return message;
    }
    return null;
  }

  /// Whether verbose is enabled.
  static bool get enabled => Platform.environment['VERBOSE'] == 'true';
}
