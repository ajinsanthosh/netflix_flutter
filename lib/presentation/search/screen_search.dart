import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
           
            children: [
              CupertinoSearchTextField(
                backgroundColor: searchgreycolor,
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kgreycolor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgreycolor,
                ),
                style: const TextStyle(color: kWhitecolor),
              ),
              kHeight,
             
              kHeight,
              //  Expanded(child: SearchIdlewidget())
               Expanded(child:SearchResult() )
            ],
          ),
        ),
      ),
    );
  }
}
