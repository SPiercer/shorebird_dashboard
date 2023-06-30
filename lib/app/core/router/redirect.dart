import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class GoRedirect {
  static FutureOr<String?> Function(
    BuildContext context,
    GoRouterState state,
  ) compose(List<GoRedirect> redirects) {
    return (
      BuildContext context,
      GoRouterState state,
    ) async {
      for (final redirect in redirects) {
        final redirectPath = redirect(context, state);
        if (redirectPath != null) {
          return (await redirectPath);
        }
      }
      return null;
    };
  }

  FutureOr<String?> call(BuildContext context, GoRouterState state);
}
