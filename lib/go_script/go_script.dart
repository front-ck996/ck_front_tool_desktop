import 'dart:ffi' as ffi;
import 'package:ck_front_tool_dart/ffi_binary/ck_front_go_script.dart';
import 'package:ck_front_tool_dart/utils/raw_fithubusercontent_cpm_ips.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';

import 'package:path/path.dart' as path;
import 'dart:io' show Directory;
class GoScript {
  static String libraryPath = path.join(Directory.current.path, 'ext', 'binary' ,'ck_front_tool_go.dll');
  static late CkFrontGoScript goScriptHandle;

  static init(){
    if(kReleaseMode){
       libraryPath = path.join(Directory.current.path,'data','flutter_assets', 'ext', 'binary' ,'ck_front_tool_go.dll');
    }
    goScriptHandle = CkFrontGoScript(ffi.DynamicLibrary.open(libraryPath));
  }
  static String sleepPrint(int s){
    return goScriptHandle.SleepPrint(5).cast<Utf8>().toDartString();
  }
  static startWebsocket() {
   return goScriptHandle.StartWebsocket();
  }
  static stopWebsocket(){
    return goScriptHandle.StopWebsocket();
  }

  static int getServePort(){
    return goScriptHandle.GetServePort();
  }
  static RawGithubusercontentComIps getRawGithubusercontentComIps(){
    return RawGithubusercontentComIps.run();
  }
}