import 'package:draw_royale/navigation/route_generator.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
