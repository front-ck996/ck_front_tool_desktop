import 'dart:io';
import 'dart:isolate';

// import 'package:ck_front_tool_dart/ffi_binary/go_script.dart';
import 'package:ck_front_tool_dart/grpc/core/other/other.pb.dart';
import 'package:ck_front_tool_dart/grpc/handle.dart';
import 'package:ck_front_tool_dart/utils/print_process_result.dart';
import 'package:ck_front_tool_dart/utils/raw_fithubusercontent_cpm_ips.dart';
import 'package:ck_front_tool_dart/utils/u_toast.dart';
class LocationFileHost {
  static Isolate? _isolate;
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


 static void entryPoint(SendPort sendPort) {
    try{
      RawGithubusercontentComIps data = RawGithubusercontentComIps.run();
      sendPort.send(data);
    }catch(e){
      sendPort.send(null);
    }
  }
  ///  调用脚本并将结果写入本地 hosts 文件
  static updateRowGithubComAndWriteHosts() async {
    // Code res = await UGrpcHandle.getHandle().getRawIps(Empty());
    // print(res);
    if(_isolate != null){
      _isolate!.kill();
    }

    UToast.openLoading();
    final receiver = ReceivePort();
    receiver.listen((data) async {
      if(data == null){
        return;
      }
      data = data as RawGithubusercontentComIps;
      UToast.closeLoading();
      String hostData = await getHostData();
      RegExp regex = RegExp(r'##CkFrontRawGithub Start##([\s\S]*)##CkFrontRawGithub End##');
      var s =  regex.stringMatch(hostData);
      var nlist = data.ips.map((e) => '$e raw.githubusercontent.com').toList();
      var ns = ['\n##CkFrontRawGithub Start##',...nlist,'##CkFrontRawGithub End##\n'].join('\n');
      if(s != null){
        hostData = hostData.replaceAll(regex, ns);
      }else{
        hostData += "\n\n\n$ns";
      }
      save(hostData);
      if(!data.isok){
        UToast.error('获取ip失败');
        return;
      }
      UToast.show(data.ips.join('\n'));
    });
    Isolate isolate = await Isolate.spawn(entryPoint, receiver.sendPort);
    _isolate = isolate;
  }

  /// 更新host文件中的本地标记
  static updateTag(tag, String content) async {
    String hostData = await getHostData();
    String tagStart = '##$tag Start##';
    String tagEnd = '##$tag End##';
    content = '$tagStart\n$content\n$tagEnd';
    String reStr = tagStart;
    reStr += r'([\s\S]*)';
    reStr += tagEnd;
    RegExp regex = RegExp(reStr);

    var s =  regex.stringMatch(hostData);
    if(s != null){
      hostData = hostData.replaceAll(regex, content);
    }else{
      hostData += "$content\n";
    }
    return save(hostData);
  }
}