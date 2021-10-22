import 'package:draw_royale/pages/home_page.dart';
import 'package:draw_royale/pages/play_page.dart';
import 'package:draw_royale/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => const HomePage(),
          '/play': (context) => const PlayPage(),
        },
      ),
    );
