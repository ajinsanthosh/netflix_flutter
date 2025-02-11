import 'package:flutter/material.dart';
import 'package:netflix_app/core/coloes/colors.dart';

class VideoListItems extends StatelessWidget {
  final int index;
  const VideoListItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.accents[index % Colors.accents.length],
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side

              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black.withOpacity(0.5),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    size: 30,
                  ),
                ),
              ),

              // right side

              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQji7VeicQwHSRawVGCcD5n_L6s1d0nAR6Mw&s'),
                    ),
                  ),
                  VideoActionsWidget(
                    icon: Icons.emoji_emotions,
                    title: 'LOL',
                  ),
                  VideoActionsWidget(
                    icon: Icons.add,
                    title: 'My List',
                  ),
                  VideoActionsWidget(
                    icon: Icons.share,
                    title: 'Share',
                  ),
                  VideoActionsWidget(
                    icon: Icons.play_circle_fill,
                    title: 'Play',
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhitecolor,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(color: kWhitecolor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
