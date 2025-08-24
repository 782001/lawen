import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
import 'package:lawen/app/presentation/widgets/audio_used.dart';
import 'package:lawen/app/presentation/widgets/confetti.dart';
import 'package:lawen/core/utils/assets_images_path.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

// Model class representing a question
class QuestionModel {
  final List<String> images;
  final int correctAnswerIndex;

  QuestionModel({
    required this.images,
    required this.correctAnswerIndex,
  });
}

class LevelRatingScreen extends StatefulWidget {
  final int homeModelId;

  const LevelRatingScreen({
    Key? key,
    required this.homeModelId,
  }) : super(key: key);

  @override
  State<LevelRatingScreen> createState() => _LevelRatingScreenState();
}

class _LevelRatingScreenState extends State<LevelRatingScreen> {
  // late AudioPlayer _audioPlayer;
  final player = AudioPlayer();
         
  ConfettiController? _controllerTopCenter;
  late PageController pageController;
  @override
  void initState() {
    _controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 4));
    pageController = PageController();
    super.initState();

    // playAudioAudio(apple);
  }

  @override
  void dispose() {
    player.dispose();
    pageController.dispose();
    _controllerTopCenter!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Define a list of QuestionModel instances
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text("قيم نفسك", style: TextStyles.styleblueShade900bold18),
        ),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.homeModelId == 1
                ? Fruitquestions.length
                : Vegetablesquestions.length,
            itemBuilder: (context, index) {
              if (widget.homeModelId == 1) {
                // playAudioAudio(
                //   index == 0
                //       ? Applemp3
                //       : index == 1
                //           ? Guavamp3
                //           : index == 2
                //               ? Mangomp3
                //               : Strawberrymp3,
                // );
                 player.play(AssetSource(   index == 0
                        ? Applemp3
                        : index == 1
                            ? Guavamp3
                            : index == 2
                                ? Mangomp3
                                : Strawberrymp3,));
                // _audioPlayer = AudioPlayer();
                // _audioPlayer = AudioPlayer()
                //   ..setAsset(
                //     index == 0
                //         ? Applemp3
                //         : index == 1
                //             ? Guavamp3
                //             : index == 2
                //                 ? Mangomp3
                //                 : Strawberrymp3,
                //   );

                // _audioPlayer.play();
              }
              if (widget.homeModelId == 2) {
                     player.play(AssetSource( index == 0
                      ? Cornmp3
                      : index == 1
                          ? Onionmp3
                          : index == 2
                              ? Potatomp3
                              : Cucumbermp3));
                // _audioPlayer = AudioPlayer();
                // _audioPlayer = AudioPlayer()
                //   ..setAsset(index == 0
                //       ? Cornmp3
                //       : index == 1
                //           ? Onionmp3
                //           : index == 2
                //               ? Potatomp3
                //               : Cucumbermp3);

                // _audioPlayer.play();
                // playAudioAudio(index == 0
                //     ? Cornmp3
                //     : index == 1
                //         ? Onionmp3
                //         : index == 2
                //             ? Potatomp3
                //             : Cucumbermp3);
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  QuestionPage(
                    question: widget.homeModelId == 1
                        ? Fruitquestions[index]
                        : Vegetablesquestions[index],
                    controllerTopCenter: _controllerTopCenter!,
                    pageController: pageController,
                    audioPlayer: player,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  if (widget.homeModelId == 1)
                    Text(
                        index == 0
                            ? "اختر التفاحه"
                            : index == 1
                                ? "اختر الجوافه"
                                : index == 2
                                    ? "اختر المانجا"
                                    : "اختر الفراوله ",
                        style: TextStyles.styleellipsisblueShade900bold22),
                  if (widget.homeModelId == 2)
                    Text(
                        index == 0
                            ? "اختر الذره"
                            : index == 1
                                ? "اختر البصل"
                                : index == 2
                                    ? "اختر البطاطس "
                                    : "اختر الخيار",
                        style: TextStyles.styleellipsisblueShade900bold22),
                ],
              );
            },
          ),
          showConfetti(
            controllerTopCenter: _controllerTopCenter,
            // levelsModel: widget.levelsModel,
          ),
        ],
      ),
    );
  }
}

class QuestionPage extends StatelessWidget {
  final QuestionModel question;
  final ConfettiController controllerTopCenter;
  final PageController pageController;
  final AudioPlayer audioPlayer;
  QuestionPage({
    Key? key,
    required this.question,
    required this.controllerTopCenter,
    required this.pageController,
    required this.audioPlayer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width * 1,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: context.width * 0.01,
                mainAxisSpacing: context.width * 0.05,
                mainAxisExtent: context.height * 0.24,
              ),
              itemCount: question.images.length,
              itemBuilder: (BuildContext context, int index) {
                return RatingQuestCard(
                  question: question,
                  index: index,
                  controllerTopCenter: controllerTopCenter,
                  pageController: pageController,
                  audioPlayer: audioPlayer,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class RatingQuestCard extends StatefulWidget {
  final QuestionModel question;
  final int index;
  final PageController pageController;
  final ConfettiController controllerTopCenter;
  late AudioPlayer audioPlayer;

  RatingQuestCard(
      {required this.question,
      required this.index,
      required this.controllerTopCenter,
      required this.pageController,
      required this.audioPlayer});

  @override
  State<RatingQuestCard> createState() => _RatingQuestCardState();
}

class _RatingQuestCardState extends State<RatingQuestCard> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Future.delayed(Duration(milliseconds: 100), () {
          if (widget.index == widget.question.correctAnswerIndex) {
            final List<String> audioFiles = [heymp31, heymp32];
            Random random = Random();
            int randomIndex = random.nextInt(audioFiles.length);
            String randomAudio = audioFiles[randomIndex];
            // widget.audioPlayer = AudioPlayer();
            // widget.audioPlayer = AudioPlayer()..setAsset(randomAudio);

            // widget.audioPlayer.play();
                         widget.audioPlayer.play(AssetSource( randomAudio));
            // playAudioAudio(randomAudio);
            // setState(() {});
            widget.controllerTopCenter.play();
            Future.delayed(Duration(seconds: 4)).then(
                (value) => WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (widget.pageController.page ==
                          widget.pageController.page!.roundToDouble()) {
                        widget.pageController.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    }));
          } else {
            //   widget.audioPlayer = AudioPlayer();
            // widget.audioPlayer = AudioPlayer()..setAsset(errormp32);

            // widget.audioPlayer.play();
              widget.audioPlayer.play(AssetSource( errormp32));
            // playAudioAudio(errormp32);
            showDialog(
              barrierColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                // _timer = Timer(Duration(seconds: 3), () {
                //   Navigator.of(context).pop();
                // });
                return AlertDialog(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  content: Image.asset(
                    sadCloud,
                  ),
                );
              },
            );
          }
        });
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          widget.question.images[widget.index],
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

List<QuestionModel> Fruitquestions = [
  QuestionModel(
    images: [
      apple,
      banana,
    ],
    correctAnswerIndex: 0,
  ),
  QuestionModel(
    images: [
      mango,
      grape,
      guava,
    ],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    images: [
      strawberry,
      mango,
      orange,
      apple,
    ],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    images: [
      grape,
      strawberry,
      banana,
      guava,
    ],
    correctAnswerIndex: 1,
  ),
];
List<QuestionModel> Vegetablesquestions = [
  QuestionModel(
    images: [
      corn,
      carrot,
    ],
    correctAnswerIndex: 0,
  ),
  QuestionModel(
    images: [cucumber, lettuce, onion, carrot],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    images: [pepper, potato, tomato, corn],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    images: [carrot, pepper, lettuce, cucumber],
    correctAnswerIndex: 3,
  ),
];
