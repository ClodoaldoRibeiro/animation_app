import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller});

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: InkWell(
          onTap: () {
            print("Clicou no botão Sign In ás ${DateTime.now()}");
          },
          child: Container(
            width: 320,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromRGBO(247, 64, 106, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            child: Text(
              "Sign in",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.3),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }
}
