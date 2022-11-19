import 'dart:async';

import 'package:ck_front_tool_dart/grpc/core/other/other.pb.dart';
import 'package:ck_front_tool_dart/grpc/handle.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';

class WalkDirLogic extends GetxController {

  final f = ''.obs;
  final process = ''.obs;

  Timer? soundTimer;

  @override
  void onReady() {
    super.onReady();
    soundTimer?.cancel();
    soundTimer = Timer.periodic(const Duration(seconds: 3), (timer) async  {
      Code result = await UGrpcHandle.getHandle().walkDiskProcess(Empty());
        process.value = result.msg;
    });
  }

  @override
  void onClose() {
    super.onClose();
    soundTimer?.cancel();
  }

}
