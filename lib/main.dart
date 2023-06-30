import 'package:flutter/material.dart';
import 'package:shorebird_dashboard/app/app.dart';
import 'package:shorebird_dashboard/injector.dart';

Future<void> main() async {
  await initDependencies();
  runApp(const ShorebirdDashboard());
}
