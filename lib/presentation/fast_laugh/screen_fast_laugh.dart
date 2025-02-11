import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/fast_laugh/widget/video_list_items.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:PageView(
        scrollDirection: Axis.vertical,
       children: List.generate(20, (index){
        return  VideoListItems(index: index,);
       }),
      )
      ),
      );
    
  }
}

