import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lawen/app/presentation/screens/levels.dart';
import 'package:lawen/app/presentation/widgets/audio_used.dart';
import 'package:lawen/app/presentation/widgets/confetti.dart';
import 'package:lawen/core/utils/components.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

class MovingScreen extends StatefulWidget {
  final LevelsModel levelsModel;
  final bool isFruit;

  const MovingScreen({super.key, required this.levelsModel, required this.isFruit});
  @override
  _MovingScreenState createState() => _MovingScreenState();
}

class _MovingScreenState extends State<MovingScreen> {
  bool _isAppleMoved = false;
  ConfettiController? _controllerTopCenter;
  @override
  void initState() {
    _controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 4));

    super.initState();

    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _controllerTopCenter!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Draggable(
                      feedback: Image.asset(widget.levelsModel.image,
                          width: context.width * .3,
                          height: context.height * .3),
                      childWhenDragging: SizedBox(
                          width: context.width * .3,
                          height: context.height * .3),
                      data: widget.levelsModel.title,
                      child: _isAppleMoved
                          ? SizedBox(
                              width: context.width * .3,
                              height: context.height * .3)
                          : Image.asset(widget.levelsModel.image,
                              width: context.width * .3,
                              height: context.height * .3),
                    ),
                    const SizedBox(width: 50),
                    DragTarget<String>(
                      builder:
                          (context, List<String?> candidateData, rejectedData) {
                        return _isAppleMoved
                            ? Image.asset(widget.levelsModel.image,
                                width: context.width * .3,
                                height: context.height * .3)
                            : Image.asset(
                                widget.levelsModel.image,
                                width: context.width * .3,
                                height: context.height * .3,
                                color: Colors.grey.withOpacity(.8),
                              );
                      },
                      onWillAccept: (data) => true,
                      onAccept: (data) {
                        setState(() {
                          _isAppleMoved = true;
                        });
                        Future.delayed(Duration(milliseconds: 1)).then((value) {
                          playAudioAudio(widget.levelsModel.heySound1);
                          setState(() {});
                          _controllerTopCenter!.play();
                        }).then(
                          (value) => Future.delayed(Duration(seconds: 5)).then(
                            (value) => NavAndFinish(
                              context,
                              LevelsScreen(
                                homeModelId: widget.isFruit?1:2,
                                fromMoving:true,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                width: context.width * .42,
                height: 30,
                child: Text("حرك الصوره",
                    textAlign: TextAlign.center,
                    style: TextStyles.styleellipsisblueShade900bold22),
              ),
            ],
          ),
          if (_controllerTopCenter != null)
            showConfetti(
              controllerTopCenter: _controllerTopCenter!,
              levelsModel: widget.levelsModel,
            ),
        ],
      ),
    );
  }
}

late AudioPlayer _audioPlayer;
