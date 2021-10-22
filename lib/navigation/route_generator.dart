import 'package:draw_royale/pages/home_page.dart';
import 'package:draw_royale/pages/play_page.dart';
import 'package:draw_royale/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return GetPageRoute(routeName: "/", page: () => const SplashPage());
      case "/home":
        return GetPageRoute(
          routeName: "/home",
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 500),
          page: () => const HomePage(),
        );
      case "/play":
        return GetPageRoute(routeName: "/play", page: () => const PlayPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() => GetPageRoute(
        routeName: "/error",
        page: () => Scaffold(
          appBar: AppBar(title: const Text("Error")),
          body: const Center(
            child: Text("Error"),
          ),
        ),
      );
}
