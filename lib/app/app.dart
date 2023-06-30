import 'package:flutter/material.dart';
import 'package:shorebird_dashboard/app/core/router/router.dart';

class ShorebirdDashboard extends StatelessWidget {
  const ShorebirdDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.i,
    );
  }
}
