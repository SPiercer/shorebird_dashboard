import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension WidgetExtensions on Widget {
  Page get toMaterialPage => MaterialPage(child: this);

  Page get toCupertinoPage => CupertinoPage(child: this);

  Page get toNoTransitionPage => NoTransitionPage(child: this);
}
