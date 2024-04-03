import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/levels.dart';
import 'package:lawen/app/presentation/screens/moving_screen.dart';
import 'package:lawen/core/utils/components.dart';

class PaintingScreen extends StatelessWidget {
  const PaintingScreen({Key? key, required this.levelsModel}) : super(key: key);
  final LevelsModel levelsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          IconButton(
              onPressed: () {
                NavTo(context, MovingScreen(levelsModel: levelsModel));
              },
              icon: Icon(Icons.abc))
        ],
      ),
      body: Container(),
    );
  }
}
