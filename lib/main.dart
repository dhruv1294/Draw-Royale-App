import 'package:draw_royale/pages/home.dart';
import 'package:draw_royale/pages/play_page.dart';
import 'package:draw_royale/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => const Home(),
          '/play': (context) => const PlayPage(),
        },
      ),
    );
