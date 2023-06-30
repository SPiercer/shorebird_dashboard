import 'package:flutter/material.dart';

class NavRailItem extends NavigationRailDestination {
  final String initialLocation;

  NavRailItem({
    required this.initialLocation,
    required Widget icon,
    required Widget selectedIcon,
    required Widget label,
  }) : super(
          icon: icon,
          label: label,
          selectedIcon: selectedIcon,
        );
}
