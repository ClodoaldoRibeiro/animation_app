import 'package:flutter/material.dart';

import 'components/form_container.dart';

class SinginScreen extends StatefulWidget {
  @override
  _SinginScreenState createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
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
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 70),
                      child: Image.asset(
                        'assets/images/tickicon.png',
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FormContainer()
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
