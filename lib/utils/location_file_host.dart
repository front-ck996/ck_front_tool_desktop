import 'dart:io';

import 'package:ck_front_tool_dart/utils/print_process_result.dart';
import 'package:ck_front_tool_dart/utils/u_toast.dart';
class LocationFileHost {
  static String filePath = 'c:\\windows\\system32\\drivers\\etc\\hosts';
  static getHostData() async {
    var file = File(filePath);
    return file.readAsString();
  }
  static bool save(String data){
    var file = File(filePath);
    try{
      file.writeAsStringSync(data);
      Future.delayed(const Duration(seconds: 1),() {
        flushDns();
      });
      return true;
    }catch(e){
      return false;
    }
  }
  static flushDns() async{
    if (Platform.isWindows){
      var runSync = Process.runSync("cmd.exe",["/c","ipconfig/flushdns"]);
      if(runSync.stderr != ""){
        UToast.error(printProcessResult(runSync.stderr));
      }else{
        UToast.show(printProcessResult(runSync.stdout));
      }
    }
  }
}