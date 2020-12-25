import 'package:flutter/material.dart';

import 'components/form_container.dart';
import 'components/padding_container.dart';
import 'components/singup_button.dart';

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
                    PaddingContainer(),
                    FormContainer(),
                    SingUpButton(),
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
