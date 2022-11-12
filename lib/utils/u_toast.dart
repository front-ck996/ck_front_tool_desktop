import 'dart:convert';
import 'package:ck_front_tool_dart/utils/u_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class UToastParse extends StatelessWidget {
  const UToastParse({Key? key, required this.msg}) : super(key: key);
  final String msg;
  @override
  Widget build(BuildContext context) {
    _p info = _p.fromJson(jsonDecode(msg));
    var color;
    var fillColor;
    if (info.mType == _UToastType.message){
      color = UColor.hex('#606266');
      fillColor = UColor.hex('#ffffff');
    }else if(info.mType == _UToastType.primary){
      color = UColor.hex('#ffffff');
      fillColor = UColor.hex('#409eff');
    }else if(info.mType == _UToastType.info){
      color = UColor.hex('#ffffff');
      fillColor = UColor.hex('#909399');
    }else if(info.mType == _UToastType.warn){
      color = UColor.hex('#ffffff');
      fillColor = UColor.hex('#e6a23c');
    }else if(info.mType == _UToastType.error){
      color = UColor.hex('#ffffff');
      fillColor = UColor.hex('#f56c6c');
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color, width: 1),
        color: fillColor,
      ),
      padding: EdgeInsets.all(15),
      child: Text(info.msg.toString(), style: TextStyle(color: color,fontSize: 17),),
    );
  }
}
class _UToastType {
  static String message = 'message';
  static String primary = 'primary';
  static String info = 'info';
  static String warn = 'warn';
  static String error = 'error';
}

class _p {
  String? msg;
  String? mType;
  _p({required this.msg, required this.mType});
  _p.fromJson(Map<String,dynamic> json){
    msg = json['msg'];
    mType = json['mType'];
  }

  Map<String, dynamic> toJson({_p? value}) {
    value ??= this;
    return {"msg": msg, "mType": mType};
  }
}
class UToast {
  static message(msg){
    String toastInfo = jsonEncode(_p(msg: msg, mType: _UToastType.message).toJson());
    SmartDialog.showToast(toastInfo);
  }
  static primary(msg){
    String toastInfo = jsonEncode(_p(msg: msg, mType: _UToastType.primary).toJson());
    SmartDialog.showToast(toastInfo);
  }
  static info(msg){
    String toastInfo = jsonEncode(_p(msg: msg, mType: _UToastType.info).toJson());
    SmartDialog.showToast(toastInfo);
  }
  static warn(msg){
    String toastInfo = jsonEncode(_p(msg: msg, mType: _UToastType.warn).toJson());
    SmartDialog.showToast(toastInfo);
  }
  static error(msg){
    String toastInfo = jsonEncode(_p(msg: msg, mType: _UToastType.error).toJson());
    SmartDialog.showToast(toastInfo);
  }
}