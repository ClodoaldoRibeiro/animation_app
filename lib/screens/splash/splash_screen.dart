import 'package:animation_app/screens/singin/singin_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SinginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          height: 130.00,
          width: 130.00,
          child: Image.asset(
            'assets/images/cti.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
