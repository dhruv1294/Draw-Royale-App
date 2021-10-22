import 'package:flutter/material.dart';

class DrawBoard extends StatelessWidget {
  const DrawBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: const Center(
          child: Text("Draw Board"),
        ),
      );
}
