import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:tsb/home_screen.dart';
import 'package:tsb/zeekem.dart';
import 'package:tsb/zekr_sabaah.dart';

import 'doaaa.dart';

main() {
  runApp(const Zeekr());
}

class Zeekr extends StatelessWidget {
  const Zeekr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'zekrS': (context) => ZekrS(),
        'ZekrM': (context) => ZekrM(),
        'DoAaaa': (context) => DoAaaa()
      },
      title: "اِذِّكَار",
      debugShowCheckedModeBanner: false,
      // home: AnimatedSplashScreen(
      //   splashIconSize: 700,
      //   nextScreen: HomeScreen(),
      //   duration: 3000,
      //   splash: Image.network("https://static.vecteezy.com/system/resources/previews/002/294/626/non_2x/mecca-mosque-and-lantern-design-background-cartoon-illustration-vector.jpg",
      //   fit: BoxFit.cover,
      //   ),
      //   splashTransition: SplashTransition.fadeTransition,
      //   pageTransitionType: PageTransitionType.fade,
      //   //backgroundColor: Colors.blue,
      // )
      home: Container(
        child: SplashScreenView(
          backgroundColor: Colors.white,
          imageSrc: "images/59402-happy-muslim-couple.gif",
          imageSize: 500,
          duration: 7040,
          navigateRoute: HomeScreen(),
        ),
      ),
    );
  }
}
