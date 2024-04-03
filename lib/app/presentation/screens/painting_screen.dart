import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/levels.dart';
import 'package:lawen/app/presentation/screens/moving_screen.dart';
import 'package:lawen/core/utils/components.dart';

class PaintingScreen extends StatelessWidget {
  const PaintingScreen(
      {Key? key, required this.levelsModel, required this.isFruit})
      : super(key: key);
  final LevelsModel levelsModel;
  final bool isFruit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          IconButton(
              onPressed: () {
                NavTo(
                    context,
                    MovingScreen(
                      levelsModel: levelsModel,
                      isFruit: isFruit,
                    ));
              },
              icon: Icon(Icons.abc))
        ],
      ),
      body: Container(),
    );
  }
}
