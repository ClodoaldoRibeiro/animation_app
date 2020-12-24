import 'package:animation_app/screens/singin/components/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          children: [
            InputField(
                hint: "Usuário", obscure: false, icon: Icons.person_outlined),
            InputField(hint: "Senha", obscure: true, icon: Icons.lock_outline)
          ],
        ),
      ),
    );
  }
}
