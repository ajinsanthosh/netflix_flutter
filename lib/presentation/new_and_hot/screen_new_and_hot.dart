import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/coloes/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widget/coming_soom_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widget/everyinewatching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: AppBar(
              title: Text(
                'New & Hot',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  color: kWhitecolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: kWhitecolor,
                  size: 30,
                ),
                kWidth,
                Container(
                  width: 30,
                  height: 25,
                  color: Colors.blue,
                ),
                kWidth,
              ],
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: kWhitecolor,
                dividerColor: kBlackcolor,
                labelColor: kBlackcolor,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                indicator: BoxDecoration(
                  color: kWhitecolor,
                  borderRadius: BorderRadius.circular(30),
                ),
                tabs: const [
                  Tab(text: '       🍿 Coming Soon   '),
                  Tab(text: '   👀 Everyone Watching  '),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryoneWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const Coming_SoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryoneWatching() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const EveryoneWatchingwidget(),
      itemCount: 10,
    );
  }
}
