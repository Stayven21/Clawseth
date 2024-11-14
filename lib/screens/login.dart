import 'package:aquaseth/buttons/rounded_button.dart';
import 'package:aquaseth/textfield/rounded_textfields.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              ClipOval(
                child: Image.asset(
                  'assets/image/clawseth.png',
                  width: 300, // set the desired width
                  height: 300, // set the desired height
                  fit: BoxFit.cover, // ensures the image fills the circle
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  hinttext: 'Username', controller: emailcontroller),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  hinttext: 'Password', controller: passwordController),
              SizedBox(
                height: 20,
              ),
              RoundButtons.primary(text: 'Login', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
