import 'package:ck_front_tool_dart/app/home/view.dart';
import 'package:get/get.dart';

class AppRouter {
  static String pageHome = "/";
  List<GetPage> routers = [
    GetPage(name: pageHome, page: () => const HomePage())
  ];
}