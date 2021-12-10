import 'package:flutter/foundation.dart';

class ProviderDemo with ChangeNotifier {
  String message = 'Hello world';

  void changeValue() {
    message = 'Hello Flutter';
    notifyListeners();
  }
}
