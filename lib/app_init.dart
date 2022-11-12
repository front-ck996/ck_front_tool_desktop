import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
class AppInit{
  init(){
    // navigatorObservers: [FlutterSmartDialog.observer],

  }
  static builder(){
    FlutterSmartDialog.init();
  }
}