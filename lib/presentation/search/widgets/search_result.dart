import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

final imageUrl = 'https://pbs.twimg.com/media/GElt718XkAAWgCD.jpg:large';

class SearchResult extends StatelessWidget {
  SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchtextTitle(title: 'MOvies & Tv'),
        kHeight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
         crossAxisSpacing: 8,
         mainAxisSpacing: 8,
         childAspectRatio: 1.2/1.6,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadiusDirectional.circular(7),
        image: DecorationImage(
          
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl))
      ),
    );
  }
}
