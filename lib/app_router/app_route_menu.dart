import 'package:ck_front_tool_dart/app_router/app_router.dart';

class AppRouterMenuItem {
  String routeName;
  String routePath;
  List<AppRouterMenuItem>? children;
  AppRouterMenuItem({required this.routeName, required this.routePath, this.children});
}
class AppRouterMenu {
  static List<AppRouterMenuItem> pages = [
    AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts)
  ];
  static getMenuWidget(List<AppRouterMenu> children){

  }
}