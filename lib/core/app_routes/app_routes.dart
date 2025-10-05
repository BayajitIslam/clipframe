import 'package:clipframe/view/screen/home_screen/home.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppRoutes {
  //=============== Home Screen ==================
  static const String homeScreen = "/HomeScreen";

  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<=====================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  static List<GetPage> pages = [
    //=============== Home Screen ==================
    GetPage(name: homeScreen, page: () => Home()),
  ];
}
