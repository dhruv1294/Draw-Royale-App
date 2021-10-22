import 'package:draw_royale/components/draw_board.dart';
import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Play")),
        body: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: DrawBoard(),
                ),
              ),
            ),
            Expanded(
              child: buildPlayersList(),
            ),
          ],
        ),
      );

  Widget buildPlayersList() => ListView.builder(
        itemCount: 12,
        itemBuilder: (_, i) => Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Player: $i"),
        ),
      );
}
