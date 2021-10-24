import 'package:flutter/material.dart';
import 'package:painter/painter.dart';

class DrawBoard extends StatelessWidget {
  DrawBoard({Key? key}) : super(key: key);

  final _controller = _newController();

  static PainterController _newController() {
    PainterController controller = PainterController();
    controller.thickness = 5.0;
    controller.drawColor = Colors.blue;
    return controller;
  }

  @override
  Widget build(BuildContext context) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Painter(_controller),
        ),
      );
}
