import 'package:flutter/material.dart';

import 'components/form_container.dart';
import 'components/padding_container.dart';
import 'components/singup_button.dart';
import 'components/stagger_animation.dart';

class SinginScreen extends StatefulWidget {
  @override
  _SinginScreenState createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    PaddingContainer(),
                    FormContainer(),
                    SingUpButton(),
                  ],
                ),
                StaggerAnimation(controller: _animationController.view)
              ],
            )
          ],
        ),
      ),
    );
  }
}
