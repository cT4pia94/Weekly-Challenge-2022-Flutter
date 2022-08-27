import 'package:flutter/material.dart';

class Reto1Screen extends StatelessWidget {
  const Reto1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('¿Es un Anagrama?'),
        ),
      ),
      body: const Center(
        child: Text('Reto1Screen'),
      ),
    );
  }
}
