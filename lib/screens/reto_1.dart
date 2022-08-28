import 'package:flutter/material.dart';
import 'package:weekly_challenge_2022_flutter/widgets/widgets.dart';

class Reto1Screen extends StatelessWidget {
  const Reto1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'primary_text': 'Anagrama',
      'secondary_text': 'Anagrama',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('¿Es un Anagrama?'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInput(
                  labelText: 'Palabra uno',
                  hintText: 'Anagrama',
                  formProperty: 'primary_text',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInput(
                  labelText: 'Palabra dos',
                  hintText: 'Anagrama',
                  formProperty: 'secondary_text',
                  formValues: formValues,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
