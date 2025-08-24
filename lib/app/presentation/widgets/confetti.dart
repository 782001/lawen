import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
import 'package:lawen/app/presentation/screens/levels.dart';

class showConfetti extends StatefulWidget {
  const showConfetti({
    super.key,
    required ConfettiController? controllerTopCenter,
    // required this.levelsModel,
  }) : _controllerTopCenter = controllerTopCenter;

  final ConfettiController? _controllerTopCenter;
  // final LevelsModel levelsModel;
  @override
  State<showConfetti> createState() => _showConfettiState();
}

class _showConfettiState extends State<showConfetti> {
  @override
  void initState() {
    super.initState();

    // _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    // _audioPlayer.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: widget._controllerTopCenter!,
            blastDirection: pi / 2,
            maxBlastForce: 5,
            minBlastForce: 2,
            emissionFrequency: 0.05,
            numberOfParticles: 20,
            gravity: 1,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: ConfettiWidget(
            confettiController: widget._controllerTopCenter!,
            blastDirection: pi / 2,
            maxBlastForce: 5,
            minBlastForce: 2,
            emissionFrequency: 0.05,
            numberOfParticles: 20,
            gravity: 1,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: ConfettiWidget(
            confettiController: widget._controllerTopCenter!,
            blastDirection: pi / 2,
            maxBlastForce: 5,
            minBlastForce: 2,
            emissionFrequency: 0.05,
            numberOfParticles: 20,
            gravity: 1,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ConfettiWidget(
            confettiController: widget._controllerTopCenter!,
            blastDirection: pi / 2,
            maxBlastForce: 5,
            minBlastForce: 2,
            emissionFrequency: 0.05,
            numberOfParticles: 20,
            gravity: 1,
          ),
        ),
      ],
    );
  }
}

// late AudioPlayer _audioPlayer;
