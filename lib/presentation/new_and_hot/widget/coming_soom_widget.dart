
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widget/video_widget.dart';
import 'package:netflix_app/presentation/widgets/Custome_button_widget.dart';

class Coming_SoonWidget extends StatelessWidget {
  const Coming_SoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      
      children: [
        const SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Feb',
                style: TextStyle(fontSize: 16, color: kgreycolor),
              ),
              Text(
                "11",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: kWhitecolor),
              )
            ],
          ),
        ),
        kHeight,
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const  VideoWidget(),
              Row(
                children: [
                  Text(
                    'TALL GIRL 2 ',
                    style: GoogleFonts.nerkoOne(
                      fontSize: 40,
                      letterSpacing: -3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      CustomeButtonWidget(
                        icon: Icons.notifications,
                        title: "Remind Me",
                      ),
                      kWidth20,
                      CustomeButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              const Text('Coming on Friday'),
              kHeight,
              const Text(
                "Tall Girl 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'By setting the indicator property, the default underline is automatically replaced. However, sometimes a slight shadow or line may still be visible. To completely remove any remaining lines or effects, you can set the indicatorColor to Colors.transparent to ensure no default line shows up.,',
                style: TextStyle(color: kgreycolor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
