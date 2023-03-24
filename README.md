# verbose

A tiny Dart debugging utility package for verbosely logging message.


## Installation
```bash
dart pub add verbose
```

## Usage

For example, add this code to `lib/main.dart`

```dart
import 'package:verbose/verbose.dart';

void main() {
  var verbose = Verbose('exmaple');
  verbose('message');
}
```
Then, run `dart lib/main.dart` will see nothing output.

While run `VERBOSE=true dart lib/main.dart` will see `example - message` 