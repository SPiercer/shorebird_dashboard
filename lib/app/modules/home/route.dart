import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shorebird_dashboard/app/core/router/router.dart';
import 'package:shorebird_dashboard/app/core/utils/extensions/widget_extensions.dart';
import 'package:shorebird_dashboard/app/modules/home/home_page.dart';

class HomeRoute extends ShellRoute {
  HomeRoute()
      : super(
          navigatorKey: AppRouter.rootNavigatorKey,
          builder: (context, state, child) => HomePage(child: child),
          routes: [
            GoRoute(
              path: '/apps',
              pageBuilder: (context, state) => const Scaffold(
                body: Center(
                  child: Text('Apps'),
                ),
              ).toNoTransitionPage,
            ),
          ],
        );
}
