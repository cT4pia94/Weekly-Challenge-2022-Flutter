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
      } else if (divThree == 0) {
        fizzbuzz[i] = 'fizz';
      } else if (divFive == 0) {
        fizzbuzz[i] = 'buzz';
      } else {
        fizzbuzz[i] = '$i';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("El Famoso 'Fizz Buzz'"),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(
            fizzbuzz[index].toString(),
          ),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: fizzbuzz.length,
      ),
    );
  }
}
