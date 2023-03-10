import 'package:flutter/material.dart';


class ContentBox extends StatelessWidget {
  int i;

  ContentBox({super.key,required this.i});
  @override
  Widget build(BuildContext context) {

    List<String> rounds = ["Registration","Introduction","Round 1", "Round 1 Results","Round 2", "Round 2 Results", "Finals", "Results Declaration","Prize Distribution"];
    List<String> details = ["Registration starts at 10 am", "Introduction to the event", "Round 1 starts at 11 am", "Round 1 results will be declared at 12 pm", "Round 2 starts at 1 pm", "Round 2 results will be declared at 2 pm", "Finals start at 3 pm", "Results will be declared at 4 pm", "Prize distribution starts at 5 pm"];
    return Container(
      width: 270,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child : Padding(
        padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(rounds[i], style: const TextStyle(fontSize: 20, fontFamily: "SFPRO", color:Color.fromARGB(255, 14, 76, 185))),
          Text(details[i], style: const TextStyle(fontSize: 15, fontFamily: "SFPRO", color: Colors.grey))
      ]
      ),
      )
    );
  }
}