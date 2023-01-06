import 'package:f_music/colors.dart';
import 'package:f_music/widgets/MusicList.dart';
import 'package:f_music/widgets/PlayList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kGrayColor.withOpacity(0.6),
              kGrayColor.withOpacity(0.9),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomePageHeader(),
                  const TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 3,
                          color: kBlueColor,
                        ),
                      ),
                    ),
                    tabs: [
                      Text('Musics'),
                      Text('Playlists'),
                      Text('Favorites'),
                      Text('Trending'),
                      Text('Collections'),
                      Text('New'),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        MusicList(),
                        PlayList(),
                        Container(color: Colors.red),
                        Container(color: Colors.red),
                        Container(color: Colors.red),
                        Container(color: Colors.red),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.sort_rounded,
                  color: kBlueColor,
                  size: 30,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.more_vert,
                  color: kBlueColor,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "Hello",
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            'What you want to hear sir?',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 20,
            bottom: 20,
          ),
          child: Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
              color: kDarkColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search the music',
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
