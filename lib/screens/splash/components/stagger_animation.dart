import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller})
      : containerGrow =
            CurvedAnimation(parent: controller, curve: Curves.ease);

  final Animation<double> containerGrow;

  Widget _builderAnimated(BuildContext context, Widget child) {
    return Center(
      child: Container(
        width: containerGrow.value * 150,
        height: containerGrow.value * 150,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/logoSplash.png"),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,
        builder: _builderAnimated,
      ),
    );
  }
}
