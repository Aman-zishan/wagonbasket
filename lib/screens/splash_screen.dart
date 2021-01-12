import 'package:flutter/material.dart';
import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/painting.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomSplash(
      imagePath: 'assets/splash.png',
      backGroundColor: Colors.redAccent,
      animationEffect: 'fade-in',

      home: HomeScreen(),
      duration: 2500,
      type: CustomSplashType.StaticDuration,
    
    );
    
  }
}
