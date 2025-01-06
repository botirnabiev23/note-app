import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
}