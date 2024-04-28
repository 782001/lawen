import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lawen/app/presentation/widgets/audio_used.dart';
import 'package:lawen/app/presentation/widgets/confetti.dart';
import 'package:lawen/core/utils/assets_images_path.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

// Model class representing a Rating
class RatingModel {
  final List<String> images;
  final int correctAnswerIndex;

  RatingModel({
    required this.images,
    required this.correctAnswerIndex,
  });
}

class RatingScreen extends StatefulWidget {
  const RatingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  late AudioPlayer _audioPlayer;

  ConfettiController? _controllerTopCenter;
  final PageController pageController = PageController();
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
    // Define a list of RatingModel instances
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
            itemCount: RatingsList.length,
            itemBuilder: (context, index) {
              _audioPlayer = AudioPlayer()
                ..setAsset(
                  index == 0
                      ? Applemp3
                      : index == 1
                          ? Cucumbermp3
                          : index == 2
                              ? Peppermp3
                              : index == 3
                                  ? Onionmp3
                                  : index == 4
                                      ? Mangomp3
                                      : Grapemp3,
                );

              _audioPlayer.play();
              // playAudioAudio(
              //   index == 0
              //       ? Applemp3
              //       : index == 1
              //           ? Cucumbermp3
              //           : index == 2
              //               ? Peppermp3
              //               : index == 3
              //                   ? Onionmp3
              //                   : index == 4
              //                       ? Mangomp3
              //                       : Grapemp3,
              // );

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingPage(
                    Rating: RatingsList[index],
                    controllerTopCenter: _controllerTopCenter!,
                    pageController: pageController,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                      index == 0
                          ? "اختر التفاحه"
                          : index == 1
                              ? "اختر الخيار"
                              : index == 2
                                  ? "اختر الفلفل"
                                  : index == 3
                                      ? "اختر البصل"
                                      : index == 4
                                          ? "اختر المانجا"
                                          : "اختر العنب ",
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

class RatingPage extends StatelessWidget {
  final RatingModel Rating;
  final ConfettiController controllerTopCenter;
  final PageController pageController;
  RatingPage({
    Key? key,
    required this.Rating,
    required this.controllerTopCenter,
    required this.pageController,
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
              itemCount: Rating.images.length,
              itemBuilder: (BuildContext context, int index) {
                return RatingQuestCard(
                  Rating: Rating,
                  index: index,
                  controllerTopCenter: controllerTopCenter,
                  pageController: pageController,
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
  final RatingModel Rating;
  final int index;
  final PageController pageController;
  final ConfettiController controllerTopCenter;

  const RatingQuestCard(
      {required this.Rating,
      required this.index,
      required this.controllerTopCenter,
      required this.pageController});

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
          if (widget.index == widget.Rating.correctAnswerIndex) {
            final List<String> audioFiles = [heymp31, heymp32];
            Random random = Random();
            int randomIndex = random.nextInt(audioFiles.length);
            String randomAudio = audioFiles[randomIndex];
            playAudioAudio(randomAudio);
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
            playAudioAudio(errormp32);
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
          widget.Rating.images[widget.index],
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

List<RatingModel> RatingsList = [
  RatingModel(
    images: [
      apple,
      corn,
    ],
    correctAnswerIndex: 0,
  ),
  RatingModel(
    images: [
      strawberry,
      grape,
      cucumber,
    ],
    correctAnswerIndex: 2,
  ),
  RatingModel(
    images: [
      tomato,
      pepper,
      orange,
      apple,
    ],
    correctAnswerIndex: 1,
  ),
  RatingModel(
    images: [
      potato,
      onion,
      banana,
      watermelon,
    ],
    correctAnswerIndex: 1,
  ),
  RatingModel(
    images: [
      carrot,
      corn,
      lettuce,
      mango,
    ],
    correctAnswerIndex: 3,
  ),
  RatingModel(
    images: [
      carrot,
      corn,
      lettuce,
      grape,
    ],
    correctAnswerIndex: 3,
  ),
];
