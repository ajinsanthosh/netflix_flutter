import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widget/background_card.dart';
import 'package:netflix_app/presentation/home/widget/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';


class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  ValueNotifier<bool> scrollNotifire = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifire,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (Notification) {
              final ScrollDirection direction = Notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifire.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifire.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    Main_Title_Card(
                      title: 'Released in the Past Year',
                    ),
                    kHeight,
                    Main_Title_Card(
                      title: 'Trending Now',
                    ),
                    NumberTitleCaed(),
                    Main_Title_Card(
                      title: 'Tense Dramas',
                    ),
                    Main_Title_Card(
                      title: 'South India Cinema',
                    ),
                  ],
                ),
                scrollNotifire.value == true
                    ? AnimatedContainer(
                      duration:  const Duration(milliseconds: 1000),

                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg',
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: kWhitecolor,
                                ),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: kButtoncolorblue,
                                )
                              ],
                            ),
                            kHeight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Tv Shows',style: kHomeTitleText,),
                              Text('Movies',style: kHomeTitleText,),
                               Text('categories',style: kHomeTitleText,),
                            ],
                            )
                          ],
                        ),
                      )
                    : kHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}
