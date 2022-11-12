import 'dart:io';
class LocationFileHost {
  static getHostData() async {
    var file = File('c:\\windows\\system32\\drivers\\etc\\hosts');
    return file.readAsString();
  }
}