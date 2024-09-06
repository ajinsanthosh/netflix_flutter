
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widget/number_card.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

class NumberTitleCaed extends StatelessWidget {
  const NumberTitleCaed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MainTitle(
        title: 'Top 10 Tv Show In India Today ',
      ),
      kHeight,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            10,
            (index) =>  NumberCard(index: index,),
          ),
        ),
      ),
    ]
    );
  }
}
