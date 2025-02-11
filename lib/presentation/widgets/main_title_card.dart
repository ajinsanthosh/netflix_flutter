
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/main_card.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';




class Main_Title_Card extends StatelessWidget {
  const Main_Title_Card({
    super.key, required this.title,
  });
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => MainCardWidget(), 
            ),
          ),
        ),
        // Added comma for consistency
      ],
    );
  }
}
