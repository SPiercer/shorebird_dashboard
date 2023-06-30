import 'dart:async';

import 'package:shorebird_dashboard/app/core/router/redirect.dart';

class AuthRedirect extends GoRedirect {
  @override
  FutureOr<String?> call(context, state) async {
    // check if user is logged in or not
    // if not logged in, redirect to login page
    return null;
  }
}
