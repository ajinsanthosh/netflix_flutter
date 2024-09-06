import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://pbs.twimg.com/media/GElt718XkAAWgCD.jpg:large"),
        ),
      ),
    );
  }
}
