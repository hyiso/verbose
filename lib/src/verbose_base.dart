import 'dart:io';

///
/// Verbose class, 
///
class Verbose {

  /// namesapce for logging message
  final String namespace;

  /// IOSink for this verbose, default to [stdout]
  final IOSink sink;

  Verbose(this.namespace, {IOSink? sink, }) : sink = sink ?? stdout;

  /// Make instance of Verbose callable as a Function
  String? call(String? message) {
    if (enabled) {
      sink.writeln('$namespace - $message');
      return message;
    }
    return null;
  }
  
  /// Whether verbose is enabled.
  static bool get enabled => Platform.environment['VERBOSE'] == 'true';
}
