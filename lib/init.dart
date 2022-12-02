import 'package:get/get.dart';
import 'package:grpc/grpc.dart';

import 'grpc/core/other/other.pb.dart';
import 'grpc/handle.dart';

class AppInit extends GetxController{
  static final status = SystemStatus().obs;

  static init() async {
    ResponseStream stream =  UGrpcHandle.getHandle().systemStatus(Empty());
    stream.listen(( value) {
      value = value as SystemStatus;
      status.value = value;
      print(status.value);
      // status.value = AppInitData(status: value);
      // print(status.value);
    },onError: (e){
      init();
    });
  }
}