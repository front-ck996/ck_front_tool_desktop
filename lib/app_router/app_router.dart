import 'package:ck_front_tool_dart/app/edit_hosts/view.dart';
import 'package:ck_front_tool_dart/app/home/view.dart';
import 'package:ck_front_tool_dart/app/mock_and_watch_api/view.dart';
import 'package:ck_front_tool_dart/app/small_mysql/view.dart';
import 'package:ck_front_tool_dart/example_widget/smart_dialog.dart';
import 'package:get/get.dart';

class AppRouter {
  static String pageHome = "/";
  static String pageEditHosts = "/edit_hosts";
  static String pageExampleStartDialog = "/page_example_smart_dialog";
  static String pageMockAndWatchUrl = "/page_mock_and_watch_url";
  static String pageSmallMysql = "/small_mysql";


  static List<GetPage>? routers = [
    GetPage(name: pageHome, page: () => const HomePage()),
    GetPage(name: pageExampleStartDialog, page: () => const ExampleSmartDialog()),
    GetPage(name: pageEditHosts, page: () =>  EditHostsPage()),
    GetPage(name: pageMockAndWatchUrl, page: () =>   MockAndWatchApiPage()),
    GetPage(name: pageSmallMysql, page: () =>  const SmallMysqlPage()),
  ];
  static toHome(){
    Get.offAllNamed(pageHome);
  }
}