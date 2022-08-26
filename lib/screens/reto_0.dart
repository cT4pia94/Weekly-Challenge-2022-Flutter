import 'package:flutter/material.dart';

class Reto0Screen extends StatelessWidget {
  const Reto0Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List fizzbuzz = List.filled(101, 0);
    int i = 1;
    for (i; i <= 100; i++) {
      int divThree = i % 3;
      int divFive = i % 5;

      if (divThree == 0 && divFive == 0) {
        fizzbuzz[i] = 'fizzbuzz';
        print(fizzbuzz[i]);
      } else if (divThree == 0) {
        fizzbuzz[i] = 'fizz';
        print(fizzbuzz[i]);
      } else if (divFive == 0) {
        fizzbuzz[i] = 'buzz';
        print(fizzbuzz[i]);
      } else {
        fizzbuzz[i] = '$i';
        print(fizzbuzz[i]);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("El Famoso 'Fizz Buzz'"),
        ),
      ),
      body: const Center(
        child: Text('Reto0Screen'),
      ),
    );
  }
}
