import "package:flutter/material.dart";
import 'package:muzz/musicPlayer/pages/discoverPage.dart';
import 'package:muzz/musicPlayer/pages/favouritesPage.dart';
import 'package:muzz/musicPlayer/pages/nowplayingPage.dart';
import 'package:muzz/musicPlayer/pages/searchPage.dart';
import 'package:muzz/musicPlayer/pages/songlistPage.dart';

Color deepPurple = const Color.fromRGBO(38, 13, 57, 1);
Color lightPurple = const Color.fromRGBO(64, 22, 96, 1);
Size appbarHeight = const Size.fromHeight(55.0);

const List<Widget> pagesBody = [
  DiscoverBody(),
  SearchBody(),
  NowplayingBody(),
  FavouriteBody(),
  SonglistBody(),
];

const List<PreferredSizeWidget> pagesAppbar = [
  DiscoverAppbar(),
  SearchAppbar(),
  NowPlayingAppbar(),
  FavouriteAppbar(),
  SongListAppbar(),
];
