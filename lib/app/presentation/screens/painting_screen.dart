import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
import 'package:lawen/app/presentation/screens/display_image_screen.dart';
import 'package:lawen/app/presentation/screens/levels.dart';
import 'package:lawen/app/presentation/screens/moving_screen.dart';
import 'package:lawen/app/presentation/widgets/audio_used.dart';
import 'package:lawen/core/utils/assets_images_path.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

class PaintingScreen extends StatefulWidget {
  const PaintingScreen(
      {Key? key,
      required this.levelsModel,
      required this.isFruit,
      required this.requiredPoints})
      : super(key: key);
  final LevelsModel levelsModel;
  final bool isFruit;
  final int requiredPoints;

  @override
  State<PaintingScreen> createState() => _PaintingScreenState();
}

class _PaintingScreenState extends State<PaintingScreen> {
  // late AudioPlayer _audioPlayer;
      final player = AudioPlayer();
                    
  List<List<Offset>> _paths = [];
  bool _isDrawingComplete = false;
  // ConfettiController? _controllerTopCenter;

  @override
  void initState() {
    // _controllerTopCenter =
    //     ConfettiController(duration: const Duration(seconds: 4));

    super.initState();
    // _requiredPoints = calculateTotalPoints([
    //   widget.levelsModel.pathData1,
    //   widget.levelsModel.pathData2,
    //   widget.levelsModel.pathData3,
    //   widget.levelsModel.pathData4,
    //   widget.levelsModel.pathData5,
    // ]);
    // _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    // _controllerTopCenter!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Path path1 = parseSvgPathData(widget.levelsModel.pathData1);
    final Path path2 = parseSvgPathData(widget.levelsModel.pathData2);
    final Path path3 = parseSvgPathData(widget.levelsModel.pathData3);
    final Path path4 = parseSvgPathData(widget.levelsModel.pathData4);
    final Path path5 = parseSvgPathData(widget.levelsModel.pathData5);

// Create a list of paths
// Combine paths individually
    final Path combinedPath = path1
        // ..addPath(path2, Offset.zero)
        // ..addPath(path3, Offset.zero)
        // ..addPath(path4, Offset.zero)
        // ..addPath(path5, Offset.zero)
        ;
// Usage

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          // title: Text(''),
          ),
      body: _isDrawingComplete
          ? Column(
              children: [
                Image.asset(widget.levelsModel.image),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovingScreen(
                          levelsModel: widget.levelsModel,
                          isFruit: widget.isFruit,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.blue.shade900,
                      ),
                      width: context.width * 1,
                      height: context.height * .07,
                      child: Center(
                        child: Text(
                          "انتقل",
                          style: TextStyles.stylewhitebold25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Center(
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    RenderBox renderBox =
                        context.findRenderObject() as RenderBox;
                    Offset localPosition =
                        renderBox.globalToLocal(details.globalPosition);
                    if (_isPointInsideShape(localPosition)) {
                      _paths.last.add(localPosition);
                    }
                  });
                },
                onPanStart: (details) {
                  setState(() {
                    RenderBox renderBox =
                        context.findRenderObject() as RenderBox;
                    Offset localPosition =
                        renderBox.globalToLocal(details.globalPosition);
                    if (_isPointInsideShape(localPosition)) {
                      _paths.add([localPosition]);
                    }
                  });
                },
                onPanEnd: (details) async {
                  double paintedPoints = 0;

                  for (final path in _paths) {
                    for (final point in path) {
                      paintedPoints++;
                    }
                  }

                  final double totalLength = calculateTotalLengthOfPath([
                    widget.levelsModel.pathData1,
                  ]);
                  final double coveredLength = calculateCoveredLength(_paths);
                  final double percentagePainted =
                      (coveredLength / totalLength) * 100;

                  print("percentagePainted $percentagePainted");
                  print("coveredLength $coveredLength");
                  print("totalLength $totalLength");
                  // if (paintedPoints >=
                  //     (widget.levelsModel.id == 6
                  //         ? widget.requiredPoints
                  //         : widget.requiredPoints)) {
                  if (percentagePainted >=
                      (widget.levelsModel.id == 12
                          ? 110
                          : widget.levelsModel.id == 9
                              ? 70
                              : widget.levelsModel.id == 10
                                  ? 85
                                  : widget.levelsModel.id == 11
                                      ? 120
                                      : widget.levelsModel.id == 13
                                          ? 120
                                          : widget.levelsModel.id == 15
                                              ? 120
                                              : 100)) {
                    setState(() {
                      _isDrawingComplete = true;
                    });
                    final List<String> audioFiles = [bravo2, bravo1];
                    Random random = Random();
                    int randomIndex = random.nextInt(audioFiles.length);
                    String randomAudio = audioFiles[randomIndex];
                    // playAudioAudio(randomAudio);
              //        _audioPlayer = AudioPlayer()
              //   ..setAsset(
              //  randomAudio
              //   );

              // _audioPlayer.play();
                    // playAudioAudio(bravo2);
                        await   player.play(AssetSource(randomAudio));   
                  }
                },
                child: ClipPath(
                  clipper: CombinedPathClipper(
                    combinedPath,
                    onClipComplete: () {},
                  ),
                  child: CustomPaint(
                    // size: const Size(200, 250),
                    painter: DrawingPainter2(
                      paths: _paths,
                      paintColor: widget.levelsModel.paintColor,
                    ),
                    child: Container(
                      // width: double.infinity,
                      // height: context.height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  // void _handleFullyPaintedShape() {
  //   // Handle when the shape is fully painted
  //   _handleConfetti();
  // }

  void _completeDrawing() {
    setState(() {
      _isDrawingComplete = true;
    });
  }

  // void _handleConfetti() {
  //   Future.delayed(const Duration(milliseconds: 1)).then((value) {
  //     playAudioAudio(widget.levelsModel.heySound2);
  //     setState(() {});
  //     _controllerTopCenter!.play();
  //   }).then((value) {
  //     Future.delayed(const Duration(seconds: 5)).then((value) {
  //       _controllerTopCenter!.stop();
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => MovingScreen(
  //             levelsModel: widget.levelsModel,
  //             isFruit: widget.isFruit,
  //           ),
  //         ),
  //       );
  //     });
  //   });
  // }
}

bool _isPointInsideShape(Offset point) {
  // Logic to check if point is inside the  shape
  // Adjust this according to your custom shape
  return true; // Assuming all points are within the  shape
}

class DrawingPainter2 extends CustomPainter {
  final List<List<Offset?>> paths;
  final Color paintColor;
  DrawingPainter2({required this.paths, required this.paintColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = paintColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 120.0;

    for (final path in paths) {
      for (int i = 0; i < path.length - 1; i++) {
        if (path[i] != null && path[i + 1] != null) {
          canvas.drawLine(path[i]!, path[i + 1]!, paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Path parseSvgPathData(String svgPathData) {
  final path = Path();
  final dataSegments = svgPathData.split(RegExp(r'[,\s]'));

  var i = 0;
  while (i < dataSegments.length) {
    final segment = dataSegments[i];
    switch (segment) {
      case 'M':
        path.moveTo(double.parse(dataSegments[i + 1]),
            double.parse(dataSegments[i + 2]));
        i += 3;
        break;
      case 'L':
        path.lineTo(double.parse(dataSegments[i + 1]),
            double.parse(dataSegments[i + 2]));
        i += 3;
        break;
      case 'C':
        path.cubicTo(
          double.parse(dataSegments[i + 1]),
          double.parse(dataSegments[i + 2]),
          double.parse(dataSegments[i + 3]),
          double.parse(dataSegments[i + 4]),
          double.parse(dataSegments[i + 5]),
          double.parse(dataSegments[i + 6]),
        );
        i += 7;
        break;
      case 'Z':
        path.close();
        i++;
        break;
      default:
        // Unsupported segment, skip
        i++;
        break;
    }
  }

  return path;
}

class CombinedPathClipper extends CustomClipper<Path> {
  final Path combinedPath;
  final VoidCallback onClipComplete;

  CombinedPathClipper(this.combinedPath, {required this.onClipComplete});

  @override
  Path getClip(Size size) {
    final bounds = combinedPath.getBounds();
    final topLeft = Offset(bounds.left, bounds.top);
    final bottomRight = Offset(bounds.right, bounds.bottom);

    // Check if the combinedPath covers the entire canvas
    if (bounds.contains(topLeft) && bounds.contains(bottomRight)) {
      // If it does, notify that clipping is complete
      onClipComplete();
    }

    return combinedPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
