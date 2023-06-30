import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shorebird_dashboard/app/modules/home/widgets/nav_rail.dart';

class HomePage extends StatelessWidget {
  final Widget child;

  HomePage({super.key, required this.child});

  final _tabs = [
    NavRailItem(
      initialLocation: '/apps',
      icon: Icon(Icons.apps),
      selectedIcon: Icon(Icons.apps_outlined),
      label: Text('Apps'),
    ),
    NavRailItem(
      initialLocation: '/apps',
      icon: Icon(Icons.apps),
      selectedIcon: Icon(Icons.apps_outlined),
      label: Text('Apps'),
    )
  ];

  int _locationToTabIndex(String location) {
    final index =
        _tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    return index < 0 ? 0 : index;
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    if (_tabs[tabIndex].initialLocation != GoRouterState.of(context).location) {
      context.go(_tabs[tabIndex].initialLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex:
                _locationToTabIndex(GoRouterState.of(context).location),
            onDestinationSelected: (int index) => _onItemTapped(context, index),
            destinations: _tabs
                .map(
                  (e) => NavigationRailDestination(
                    icon: e.icon,
                    selectedIcon: e.selectedIcon,
                    label: e.label,
                  ),
                )
                .toList(),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: child),
        ],
      ),
    );
  }
}
