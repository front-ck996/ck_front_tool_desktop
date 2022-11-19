import 'dart:io';
import 'dart:async';
void openDirResources(String path){
  if(Platform.isWindows){
    print(path);
    Process.run("cmd.exe", ["/c", "start"," ",path]);
  }
}