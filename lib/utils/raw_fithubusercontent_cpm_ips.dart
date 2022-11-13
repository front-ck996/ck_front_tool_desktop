import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;

class RawGithubusercontentComIps {
  late List<String> ips;
  late bool isok;
  RawGithubusercontentComIps({required this.ips, required this.isok}){

  }
  static RawGithubusercontentComIps run() {
    var exePath = path.absolute('ext/exe/getRawIps.exe');
    var p = Process.runSync(exePath, []);
    var jsonDecode2 = jsonDecode(p.stdout);
    return RawGithubusercontentComIps(ips: (jsonDecode2["ips"] as List<dynamic>).map((e) => e.toString()).toList(), isok: jsonDecode2["isok"]);
  }

}
