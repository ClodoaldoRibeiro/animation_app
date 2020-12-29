import 'package:animation_app/screens/singin/singin_screen.dart';
import 'package:animation_app/screens/splash/components/stagger_animation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _controller.forward();

    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SinginScreen(),
      ));
    });
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StaggerAnimation(
      controller: _controller,
    );
  }

  /** @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          height: 130.00,
          width: 130.00,
          child: Image.asset(
            'assets/images/logoSplash.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }    */



}
