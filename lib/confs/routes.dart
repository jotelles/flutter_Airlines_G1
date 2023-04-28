import 'package:flutter_airlines/home.dart';
import 'package:flutter_airlines/map_page.dart';

const String HOME_PAGE = '/';
const String MAP_PAGE = '/map';

var routesOfApp = {
  HOME_PAGE: (context) => const HomePage(),
  MAP_PAGE: (context) => const MapPage(),
};
