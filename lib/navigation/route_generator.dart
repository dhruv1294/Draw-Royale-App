import 'package:draw_royale/pages/home_page.dart';
import 'package:draw_royale/pages/play_page.dart';
import 'package:draw_royale/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/play":
        return MaterialPageRoute(builder: (_) => const PlayPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() => MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(title: const Text("Error")),
          body: const Center(
            child: Text("Error"),
          ),
        ),
      );
}
