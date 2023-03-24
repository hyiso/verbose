import 'package:verbose/verbose.dart';
import 'package:test/test.dart';

void main() {
  group('verbose', () {
    test('disabled if VERBOSE=true not in environment', () {
      final verbose = Verbose('test');
      expect(Verbose.enabled, isFalse);
      final message = verbose('message');
      expect(message, equals(null));
    });
  });
}