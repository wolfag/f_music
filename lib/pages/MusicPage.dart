import 'package:f_music/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kBlackColor.withOpacity(0.3),
                kBlackColor.withOpacity(0.5),
                kDarkColor.withOpacity(1),
                kDarkColor.withOpacity(1),
              ],
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 45,
                  horizontal: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Routemaster.of(context).pop();
                      },
                      child: Icon(
                        CupertinoIcons.back,
                        color: kWhiteColor,
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.more_vert,
                        color: kWhiteColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 23,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Imagine Dragons',
                                style: TextStyle(
                                  color: kWhiteColor.withOpacity(0.9),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Singer Name',
                                style: TextStyle(
                                  color: kWhiteColor.withOpacity(0.8),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: kRedAccentColor,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Slider(
                          min: 0,
                          max: 100,
                          value: 40,
                          activeColor: Colors.white,
                          inactiveColor: Colors.white54,
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '02:10',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '04:10',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          CupertinoIcons.backward_end_fill,
                          color: kWhiteColor,
                          size: 32,
                        ),
                        Icon(
                          Icons.list,
                          color: kWhiteColor,
                          size: 32,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: kBlackColor,
                            size: 45,
                          ),
                        ),
                        Icon(
                          Icons.download,
                          color: kWhiteColor,
                          size: 32,
                        ),
                        Icon(
                          CupertinoIcons.forward_end_fill,
                          color: kWhiteColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
