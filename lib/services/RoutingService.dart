import 'package:flutter/widgets.dart';
import 'package:lottoapp/screens/EntriesScreen.dart';
import 'package:lottoapp/screens/HomeScreen.dart';

class RoutingService {
  // Constructor
  RoutingService({required this.context});

  // Properties
  BuildContext context;

  /// Retrieve route list
  Map<String, Widget Function(BuildContext)> get routeList {
    // Routes
    return {
      // Home screen
      HomeScreen.id: (context) => const HomeScreen(),
      // Entries screen
      EntriesScreen.id: (context) => const EntriesScreen()
    };
  }

  /// Retrieve route list for bottom nav type navigation
  /// Screens listed should be in strict order, since it depends on screen list indexing
  List<Widget> get bottomRouteList {
    // Routes
    return [
      const HomeScreen(),
      const EntriesScreen()
    ];
  }
}