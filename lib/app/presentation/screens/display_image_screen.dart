import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lawen/app/presentation/screens/levels.dart';
import 'package:lawen/app/presentation/screens/painting_screen.dart';
import 'package:lawen/app/presentation/widgets/audio_used.dart';
import 'package:lawen/app/presentation/widgets/confetti.dart';
import 'package:lawen/core/utils/components.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

class DisplayImageScreen extends StatefulWidget {
  DisplayImageScreen(
      {Key? key, required this.levelsModel, required this.isFruit})
      : super(key: key);
  final LevelsModel levelsModel;
  final bool isFruit;
  @override
  State<DisplayImageScreen> createState() => _DisplayImageScreenState();
}

class _DisplayImageScreenState extends State<DisplayImageScreen> {
  ConfettiController? _controllerTopCenter;
  bool _isPlaying = false;
  @override
  void initState() {
    _controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 4));

    super.initState();

    _audioPlayer = AudioPlayer();
    playAudioAudio(widget.levelsModel.imageAudio);

    // Future.delayed(Duration(microseconds: 10))
    //     .then((value) => playAudioAudio(widget.levelsModel.imageAudio))
    //     .then((value) =>
    //         Future.delayed(Duration(seconds: 3)).then((value) => NavTo(
    //               context,
    //               PaintingScreen(levelsModel: widget.levelsModel),
    //             )));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _controllerTopCenter!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Stack(
        children: [
          Column(children: [
            Container(
              width: double.infinity / 1.2,
              child:
                  DisplayImageCard(widget.levelsModel, widget.isFruit, context),
            ),
            Controls(
              audioPlayer: _audioPlayer,
              onPlayPressed: () {
                // Start playing audio again when استمع button is tapped
                playAudioAudio(widget.levelsModel.imageAudio);
                // _audioPlayer.playerStateStream.listen((playerState) {
                //   if (playerState.processingState ==
                //       ProcessingState.completed) {

                // }
                // });
                Future.delayed(Duration(milliseconds: 1650)).then((value) {
                  playAudioAudio(widget.levelsModel.heySound1);
                  setState(() {});
                  _controllerTopCenter!.play();
                });
                // .then((value) => _controllerTopCenter!.play());
                // playAudioAudio(widget.levelsModel.heySound1);
                // _controllerTopCenter!.play();

                // Future.delayed(Duration(seconds: 1))
                //     .then((value) => _controllerTopCenter!.play());
                // Future.delayed(Duration(milliseconds: 300))
                //     .then((value) => setState(() {
                //           _isPlaying = true;
                //         }))
                //     .then((value) => Future.delayed(Duration(seconds: 2))
                //         .then((value) => _controllerTopCenter!.play()));
              },
            ),
          ]),
          if (_controllerTopCenter != null || _isPlaying)
            showConfetti(
              controllerTopCenter: _controllerTopCenter!,
              levelsModel: widget.levelsModel,
            ),
        ],
      ),
    );
  }
}

DisplayImageCard(LevelsModel model, bool isFruit, BuildContext context) =>
    InkWell(
      onTap: () {
        NavTo(
            context,
            PaintingScreen(
              levelsModel: model,
              isFruit: isFruit,
            ));
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          SizedBox(
            height: context.height * .55,
            width: context.width * .9,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 50,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Image(
                image: AssetImage(model.image),
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Card(
          //   child: Image(
          //     image: AssetImage(model.image),
          //     width: 100,
          //     height: 100,
          //   ),
          // ),

          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            width: context.width * .9,
            height: 50,
            child: Center(
              child: Text(model.title,
                  textAlign: TextAlign.center,
                  style: TextStyles.styleellipsisblueShade900bold22),
            ),
          ),
        ],
      ),
    );

// class PossitionData {
//   final Duration position;
//   final Duration bufferedPosition;
//   final Duration duration;

//   const PossitionData(this.position, this.bufferedPosition, this.duration);
// }

// class Controls extends StatelessWidget {
//   final AudioPlayer audioPlayer;

//   const Controls({super.key, required this.audioPlayer});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<PlayerState>(
//       stream: audioPlayer.playerStateStream,
//       builder: (context, snapshot) {
//         final playerState = snapshot.data;
//         final processingState = playerState?.processingState;
//         final playing = playerState?.playing;

//         if (!(playing ?? false)) {
//           return Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               width: context.width * 1,
//               height: context.height * 0.07,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: const Color(0xffE95C1F),
//               ),
//               // ignore: dead_code
//               child: ElevatedButton(
//                   style: ButtonStyle(
//                     //padding: EdgeInsets.all(10.0),
//                     backgroundColor: MaterialStateProperty.all(
//                       const Color(0xffE95C1F),
//                     ),
//                     textStyle: MaterialStateProperty.all(
//                         const TextStyle(color: Colors.white)),
//                     elevation: MaterialStateProperty.resolveWith<double>(
//                       (Set<MaterialState> states) {
//                         // if the button is pressed the elevation is 10.0, if not
//                         // it is 5.0
//                         if (states.contains(MaterialState.pressed)) {
//                           return 10.0;
//                         }
//                         return 0;
//                       },
//                     ),
//                     // textColor: Colors.white,
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                         // side: const BorderSide(
//                         //     color: Color(0xff04685C), width: 2),
//                       ),
//                     ),
//                   ),
//                   onPressed: audioPlayer.play,
//                   child: const Text(
//                     'استمع',
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontFamily: cairoFont,
//                         color: Colors.white),
//                   )),
//             ),
//           );
//         } else if (processingState != ProcessingState.completed) {
//           return Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               width: context.width * 1,
//               height: context.height * 0.07,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: const Color(0xffE95C1F),
//               ),
//               // ignore: dead_code
//               child: ElevatedButton(
//                   style: ButtonStyle(
//                     //padding: EdgeInsets.all(10.0),
//                     backgroundColor: MaterialStateProperty.all(
//                       const Color(0xffE95C1F),
//                     ),
//                     textStyle: MaterialStateProperty.all(
//                         const TextStyle(color: Colors.white)),
//                     elevation: MaterialStateProperty.resolveWith<double>(
//                       (Set<MaterialState> states) {
//                         // if the button is pressed the elevation is 10.0, if not
//                         // it is 5.0
//                         if (states.contains(MaterialState.pressed)) {
//                           return 10.0;
//                         }
//                         return 0;
//                       },
//                     ),
//                     // textColor: Colors.white,
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                         // side: const BorderSide(
//                         //     color: Color(0xff04685C), width: 2),
//                       ),
//                     ),
//                   ),
//                   onPressed: audioPlayer.play,
//                   child: const Text(
//                     'استمع',
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontFamily: cairoFont,
//                         color: Colors.white),
//                   )),
//             ),
//           );
//         } else if (processingState != ProcessingState.loading) {
//           return Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               width: context.width * 1,
//               height: context.height * 0.07,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: const Color(0xffE95C1F),
//               ),
//               // ignore: dead_code
//               child: ElevatedButton(
//                   style: ButtonStyle(
//                     //padding: EdgeInsets.all(10.0),
//                     backgroundColor: MaterialStateProperty.all(
//                       const Color(0xffE95C1F),
//                     ),
//                     textStyle: MaterialStateProperty.all(
//                         const TextStyle(color: Colors.white)),
//                     elevation: MaterialStateProperty.resolveWith<double>(
//                       (Set<MaterialState> states) {
//                         // if the button is pressed the elevation is 10.0, if not
//                         // it is 5.0
//                         if (states.contains(MaterialState.pressed)) {
//                           return 10.0;
//                         }
//                         return 0;
//                       },
//                     ),
//                     // textColor: Colors.white,
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                         // side: const BorderSide(
//                         //     color: Color(0xff04685C), width: 2),
//                       ),
//                     ),
//                   ),
//                   onPressed: audioPlayer.play,
//                   child: const Text(
//                     'استمع',
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontFamily: cairoFont,
//                         color: Colors.white),
//                   )),
//             ),
//           );
//         }
//         return Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Container(
//             width: context.width * 1,
//             height: context.height * 0.07,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//               color: const Color(0xffE95C1F),
//             ),
//             // ignore: dead_code
//             child: ElevatedButton(
//                 style: ButtonStyle(
//                   //padding: EdgeInsets.all(10.0),
//                   backgroundColor: MaterialStateProperty.all(
//                     const Color(0xffE95C1F),
//                   ),
//                   textStyle: MaterialStateProperty.all(
//                       const TextStyle(color: Colors.white)),
//                   elevation: MaterialStateProperty.resolveWith<double>(
//                     (Set<MaterialState> states) {
//                       // if the button is pressed the elevation is 10.0, if not
//                       // it is 5.0
//                       if (states.contains(MaterialState.pressed)) {
//                         return 10.0;
//                       }
//                       return 0;
//                     },
//                   ),
//                   // textColor: Colors.white,
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                       // side: const BorderSide(
//                       //     color: Color(0xff04685C), width: 2),
//                     ),
//                   ),
//                 ),
//                 onPressed: audioPlayer.play,
//                 child: const Text(
//                   'استمع',
//                   style: TextStyle(
//                       fontSize: 25, fontFamily: cairoFont, color: Colors.white),
//                 )),
//           ),
//         );
//       },
//     );
//   }
// }
late AudioPlayer _audioPlayer;

// late StreamSubscription subscription;