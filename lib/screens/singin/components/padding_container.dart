import 'package:flutter/material.dart';

class PaddingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 70, bottom: 70),
        child: Image.asset(
          'assets/images/tickicon.png',
          width: 150.0,
          height: 150.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
