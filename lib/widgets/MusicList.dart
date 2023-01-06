import 'package:f_music/colors.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 15),
          for (int i = 1; i < 20; i++)
            Container(
              margin: const EdgeInsets.only(top: 15, right: 12, left: 5),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: kBlackColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text(
                    i.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 25),
                  InkWell(
                    onTap: () {
                      Routemaster.of(context).push('musicPage');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Imagine Dragons - Believer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Bass',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '-',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '04:30',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 25,
                      color: kDarkColor,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
