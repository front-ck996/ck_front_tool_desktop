import 'package:ck_front_tool_dart/app/home/view.dart';
import 'package:ck_front_tool_dart/example_widget/smart_dialog.dart';
import 'package:get/get.dart';

class AppRouter {
  static String pageHome = "/";
  static String pageExampleStartDialog = "/page_example_smart_dialog";

  static List<GetPage>? routers = [
    GetPage(name: pageHome, page: () => const HomePage()),
    GetPage(name: pageExampleStartDialog, page: () => const ExampleSmartDialog())
  ];
}