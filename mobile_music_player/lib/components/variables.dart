import "package:flutter/material.dart";
import 'package:muzz/musicPlayer/pages/discoverPage.dart';
import 'package:muzz/musicPlayer/pages/favouritesPage.dart';
import 'package:muzz/musicPlayer/pages/nowplayingPage.dart';
import 'package:muzz/musicPlayer/pages/searchPage/searchPage.dart';
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

List<String> values = [
  "hello",
  "metro",
  "mark",
  "vivian",
  "hello",
  "metro",
  "mark",
  "vivian",
  "hello",
  "metro",
  "mark",
  "vivian",
  "hello",
  "metro",
  "mark",
  "vivian",
];
List<Map<String, String>> device = [
  {
    "index": "0",
    "album": "undefined",
    "time": "03:14",
    "name": "mark",
    "image": ""
  },
  {
    "index": "1",
    "album": "undefined",
    "time": "03:14",
    "name": "vivian",
    "image": ""
  },
  {
    "index": "2",
    "album": "undefined",
    "time": "03:14",
    "name": "Lucas",
    "image": ""
  },
  {
    "index": "3",
    "album": "undefined",
    "time": "03:14",
    "name": "Gregory",
    "image": ""
  },
  {
    "index": "4",
    "album": "undefined",
    "time": "03:14",
    "name": "antony",
    "image": ""
  },
  {
    "index": "5",
    "album": "undefined",
    "time": "03:14",
    "name": "patric",
    "image": ""
  },
];
List<Map<String, String>> online = [
  {
    "index" : "0",
    "album": "undefined",
    "time": "03:14",
    "name": "mark",
    "image": "",
    "percentage": "10"
  },
  {
    "index" : "1",
    "album": "undefined",
    "time": "03:14",
    "name": "joseph",
    "image": "",
    "percentage": "10"
  },
  {
    "index" : "2",
    "album": "undefined",
    "time": "03:14",
    "name": "patricia",
    "image": "",
    "percentage": "10"
  },
  {
    "index" : "3",
    "album": "undefined",
    "time": "03:14",
    "name": "moses",
    "image": "",
    "percentage": "10"
  },
  {
    "index" : "4",
    "album": "undefined",
    "time": "03:14",
    "name": "kyle",
    "image": "",
    "percentage": "10"
  },
  {
    "index" : "5",
    "album": "undefined",
    "time": "03:14",
    "name": "mark",
    "image": "",
    "percentage": "10"
  },
];

