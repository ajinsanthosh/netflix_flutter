import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 200,
              width: 40,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kRadius20,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://pbs.twimg.com/media/GElt718XkAAWgCD.jpg:large"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 70,
          child: BorderedText(
            strokeWidth: 2.0,
            strokeColor: kWhitecolor,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  fontSize: 120,
                  color: kBlackcolor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
