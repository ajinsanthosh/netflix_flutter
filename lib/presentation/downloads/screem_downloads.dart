import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
   ScreenDownloads({super.key});

  final _widgetList=[
    const _SmartsDownloads(),
            Section2(),
            const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding:EdgeInsets.all(10) ,
          itemBuilder: (ctx,index)=>_widgetList[index], 
          separatorBuilder: (ctx,index)=>SizedBox(height: 25,), 
          itemCount: _widgetList.length)
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQji7VeicQwHSRawVGCcD5n_L6s1d0nAR6Mw&s',
    'https://ew.com/thmb/2nzZnTK6v-gy7avcYbvw0F17cbQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/endgame-poster-2000-513c47c947ae462da2bb7941c7bbc14f.jpg',
    'https://pbs.twimg.com/media/GElt718XkAAWgCD.jpg:large',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhitecolor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          'We well download a personalised selection of\nmovies and showa for you, there is\na always something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(color: kgreycolor, fontSize: 16),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: kgreycolor,
                  radius: size.width * 0.38,
                ),
              ),
              DownloadsImageWidgets(
                imageUrls: imageUrls[0],
                margin: const EdgeInsets.only(left: 150, ),
                angle: 25,
                size: Size(size.width * 0.58, size.width * 0.56),
                borderRadius: 10,
              ),
              DownloadsImageWidgets(
                imageUrls: imageUrls[1],
                margin: const EdgeInsets.only(right: 150, ),
                angle: -25,
                size: Size(size.width * 0.58, size.width * 0.56),
                borderRadius: 20,
              ),
              DownloadsImageWidgets(
                imageUrls: imageUrls[2],
                margin: const EdgeInsets.only(bottom: 5),
                size: Size(size.width * 0.46, size.width * 0.6),
                borderRadius: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
         
          child: MaterialButton(
            color: kButtoncolorbluethink,
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kWhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kButtoncolorwhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartsDownloads extends StatelessWidget {
  const _SmartsDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhitecolor,
        ),
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets({
    super.key,
    required this.imageUrls,
    this.angle = 0,
    required this.margin,
    required this.size,
    required this.borderRadius,
  });

  final String imageUrls;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ClipRRect(
        child: Transform.rotate(
          angle: angle * pi / 180,
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              image: DecorationImage(
                //fit: BoxFit.cover,
                image: NetworkImage(imageUrls),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
