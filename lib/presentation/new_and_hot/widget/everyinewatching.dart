
import 'package:flutter/material.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widget/video_widget.dart';
import 'package:netflix_app/presentation/widgets/Custome_button_widget.dart';

class EveryoneWatchingwidget extends StatelessWidget {
  const EveryoneWatchingwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'By setting the indicator property, the default underline is automatically replaced. However, sometimes a slight shadow or line may still be visible. To completely remove any remaining lines or effects, you can set the indicatorColor to Colors.transparent to ensure no default line shows up.,',
          style: TextStyle(color: kgreycolor),
        ),
        kHeight50,
        VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomeButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconsize: 25,
              fontSize: 16,
            ),
            kWidth20,
            CustomeButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconsize: 25,
              fontSize: 16,
            ),
            kWidth20,
            CustomeButtonWidget(
              icon: Icons.play_arrow_outlined,
              title: "Play",
              iconsize: 25,
              fontSize: 16,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}
