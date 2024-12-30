import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NavigatorService {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Push a new route onto the navigator.
  static Future<dynamic> pushNamed(
    String routeName, {
    dynamic arguments,
  }) async {
    return navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  /// Pop the top-most route off the navigator.
  static void goBack() {
    navigatorKey.currentState?.pop();
  }
 
  /// Push a new route onto the navigator, and remove all the previous routes until the predicate returns true.
  static Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    bool routePredicate = false,
    dynamic arguments,
  }) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
      (route) => routePredicate,
      arguments: arguments,
    );
  }

  /// Pop the current route off the navigator and push a new route in its place.
  static Future<dynamic> popAndPushNamed(
    String routeName, {
    dynamic arguments,
  }) async {
    return navigatorKey.currentState?.popAndPushNamed(routeName, arguments: arguments);
  }
}
