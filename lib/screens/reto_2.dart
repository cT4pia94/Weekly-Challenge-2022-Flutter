import 'package:flutter/material.dart';

class Reto2Screen extends StatelessWidget {
  const Reto2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('La Sucesión de Fibonacci'),
        ),
      ),
      body: const Center(
        child: Text('Reto2Screen'),
      ),
    );
  }
}
