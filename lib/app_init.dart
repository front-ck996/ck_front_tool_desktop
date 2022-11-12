import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
class AppInit{
  init() async  {

  }
  static builder(){
    // navigatorObservers: [FlutterSmartDialog.observer],
    FlutterSmartDialog.init();
  }
}