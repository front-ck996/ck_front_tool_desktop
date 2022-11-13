import 'dart:io';
String printProcessResult(String input)  {
    if(Platform.isWindows){
      var s = input.replaceAll('\r', '');
      return s;
    }
    return input.toString();
}