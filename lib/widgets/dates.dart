import 'package:flutter/material.dart';

class MyDates extends StatelessWidget {
  int i;
  MyDates({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    List<String> dates = ["16th February", "17th February", "18th February", "19th February", "20th February", "21st February", "22nd February", "23rd February", "24th February"];
    return Text(dates[(i)], style: const TextStyle(fontSize: 14, fontFamily: "SFPRO", color: Color.fromARGB(255, 14, 76, 185)));
  }
}