import 'package:flutter/material.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/Custome_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(MainImage),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomeButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                ),
                playbutton(),
                const CustomeButtonWidget(
                  icon: Icons.info,
                  title: 'Info',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

Container playbutton() {
  return Container(
    height: 40,
    width: 110,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
    ),
    child: TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
      icon: const Icon(
        Icons.play_circle_fill,
        size: 25,
        color: kBlackcolor,
      ),
      label: const Text(
        'Play',
        style: TextStyle(fontSize: 20, color: kBlackcolor),
      ),
    ),
  );
}
