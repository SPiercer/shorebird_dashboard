import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shorebird_dashboard/app/core/provider/app_provider.dart';
import 'package:shorebird_dashboard/app/core/router/redirect.dart';
import 'package:shorebird_dashboard/app/core/router/redirects/auth_redirect.dart';
import 'package:shorebird_dashboard/app/modules/home/route.dart';
import 'package:shorebird_dashboard/injector.dart';

class AppRouter extends GoRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  AppRouter._()
      : super(
          routes: [HomeRoute()],
          initialLocation: '/apps',
          navigatorKey: rootNavigatorKey,
          refreshListenable: sl<AppProvider>(),
          redirect: GoRedirect.compose([
            AuthRedirect(),
          ]),
        );
  static AppRouter get i => _instance;
  static final _instance = AppRouter._();
}
