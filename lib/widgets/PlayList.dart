import 'package:f_music/colors.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < 20; i++)
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20, left: 5),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kBlackColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Routemaster.of(context).push('playListPage');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/background.jpeg',
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Images Dragon',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '30 songs',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white.withOpacity(0.6),
                    size: 30,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
