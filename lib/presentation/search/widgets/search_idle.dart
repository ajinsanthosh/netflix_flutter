import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const image =
    'https://media.themoviedb.org/t/p/w500_and_h282_face/1wP1phHo2CROOqzv7Azs0MT5esU.jpg';

class SearchIdlewidget extends StatelessWidget {
  SearchIdlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchtextTitle(title:'Top Searches',),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, context) => TopSearchItemTile(),
              separatorBuilder: (ctx, context) => kHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final sreenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: sreenwidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
        ),
        kWidth,
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: kWhitecolor,
                 fontWeight: FontWeight.bold,
                  fontSize: 16
                  ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kWhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackcolor,
            radius: 23,
            child: Icon(CupertinoIcons.play_fill,color: kWhitecolor,),
          ),
        )
      ],
    );
  }
}
