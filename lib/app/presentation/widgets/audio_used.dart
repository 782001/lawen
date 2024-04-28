import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

late AudioPlayer _audioPlayer;

// late StreamSubscription subscription;

// class PossitionData {
//   final Duration position;
//   final Duration bufferedPosition;
//   final Duration duration;

//   const PossitionData(this.position, this.bufferedPosition, this.duration);
// }

class Controls extends StatelessWidget {
  final AudioPlayer audioPlayer;
  final VoidCallback? onPlayPressed;
  final VoidCallback? onCompleted;

  const Controls({
    Key? key,
    required this.audioPlayer,
    this.onPlayPressed,
    this.onCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        // final processingState = playerState?.processingState;
        final playing = playerState?.playing;

        return GestureDetector(
          onTap: onPlayPressed,
          child: Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 20, start: 20, end: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.blue.shade900,
              ),
              width: context.width * 1,
              height: context.height * .07,
              child: playing == true
                  ? const SizedBox()
                  : Container(
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
                          "استمع",
                          style: TextStyles.stylewhitebold25,
                          // textAlign: TextAlign.center,
                        ),
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}

// Stream<PossitionData> get _positionDataStream =>
//     Rx.combineLatest3<Duration, Duration, Duration?, PossitionData>(
//         _audioPlayer.positionStream,
//         _audioPlayer.bufferedPositionStream,
//         _audioPlayer.durationStream,
//         (position, bufferedPosition, duration) => PossitionData(
//             position, bufferedPosition, duration ?? Duration.zero));

void playAudioAudio(String imageAudioPath) {
  try {
    print(imageAudioPath);
    _audioPlayer = AudioPlayer()..setAsset(imageAudioPath);
    // _audioPlayer.positionStream;
    // _audioPlayer.bufferedPositionStream;
    // _audioPlayer.durationStream;
    _audioPlayer.play();
  } catch (e) {
    print("Error playing audio: $e");
    // Handle the error here, such as displaying an error message to the user
  }
}
