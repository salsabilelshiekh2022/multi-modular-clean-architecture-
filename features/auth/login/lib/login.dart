import 'package:data_source/provider/session_provider_impl.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  var session = DevSessionProviderImpl();
}
