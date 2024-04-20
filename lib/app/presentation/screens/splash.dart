import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/boarding_screen.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

import '../../../core/utils/components.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  statrDelay() {
    timer = Timer(
      Duration(seconds: 4),
      () => NavAndFinish(context, BoardingScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
    statrDelay();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
            height: context.height * .8,
            width: context.width * 1,
          ),
          Center(
            child: Text('انطق ولون', style: TextStyles.stylebluebold30),
          ),
          SizedBox(height: context.height * 0.04),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.contain,
      height: size.height,
      width: size.width,
    );
  }
}
