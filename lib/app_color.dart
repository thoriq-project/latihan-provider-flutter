import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppColor with ChangeNotifier {
  bool _isGreen = false;

  bool get isGreen => _isGreen;

  set isGreen(bool value) {
    _isGreen = value;
    notifyListeners();
  }

  Color setColor() => (_isGreen) ? Colors.pink : Colors.green;
}
