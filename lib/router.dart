import 'package:f_music/pages/HomePage.dart';
import 'package:f_music/pages/MusicPage.dart';
import 'package:f_music/pages/PlayListPage.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(
  routes: {
    "/": (route) => const MaterialPage(child: HomePage()),
    "/playListPage": (route) => const MaterialPage(child: PlatListPage()),
    "/musicPage": (route) => const MaterialPage(child: MusicPage()),
  },
);
