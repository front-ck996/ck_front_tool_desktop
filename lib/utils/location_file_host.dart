import 'dart:io';
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
      return true;
    }catch(e){
      return false;
    }
  }
}