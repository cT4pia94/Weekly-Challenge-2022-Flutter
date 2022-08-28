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

    String? response_one;
    String? response_two;

    bool isAnagram(responseOne, responseTwo) {
      String normalize(String str) => (str
              .toLowerCase()
              .replaceAll(
                  RegExp(
                    r'[^a-z0-9]',
                    caseSensitive: false,
                  ),
                  '')
              .split('')
            ..sort())
          .join('');
      if (normalize(responseOne) == normalize(responseTwo)) {
        return true;
      } else {
        return false;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('¿Es un Anagrama?'),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              bottom: 20,
            ),
            child: Text(
              'Ingresa dos palabras y verifica si son o no anagramas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
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
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('Agrega dos palabras');
                          return;
                        }
                        response_one = formValues['primary_text'];
                        response_two = formValues['secondary_text'];

                        print(isAnagram(response_one, response_two));
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text('Verificar'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
