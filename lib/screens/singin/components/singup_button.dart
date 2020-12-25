import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.only(
          top: 120,
        ),
        onPressed: () {
          print("Clicou ás:  ${DateTime.now()}");
        },
        child: Text(
          "Não possue uma conta? Cadastre-se!",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.5),
        ));
  }
}
