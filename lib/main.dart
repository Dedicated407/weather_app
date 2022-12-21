import 'package:flutter/material.dart';
import 'internal/application.dart';
import 'internal/dependencies/injection.dart' as di;

void main() async {
  await di.init();
  runApp(const Application());
}
