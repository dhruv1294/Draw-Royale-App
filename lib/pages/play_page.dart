import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Play")),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: buildDrawArea(),
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

  Widget buildDrawArea() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: const Center(
          child: Text("Draw Area"),
        ),
      );
}
