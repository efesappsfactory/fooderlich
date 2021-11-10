import 'package:flutter/material.dart';
import '../models/models.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;
  final GroceryManager groceryManager;
  final ProfileManager profileManager;

  AppRouter(
      {required this.appStateManager,
      required this.groceryManager,
      required this.profileManager})
      : navigatorKey = GlobalKey<NavigatorState>() {}

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [],
    );
  }

  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
