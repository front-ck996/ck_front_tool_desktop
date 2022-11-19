import 'dart:async';

import 'package:get/get.dart';
import 'package:grpc/grpc.dart';

import 'package:ck_front_tool_dart/grpc/core/other/other.pb.dart';
import 'package:ck_front_tool_dart/grpc/handle.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class WalkDirLogic extends GetxController {

  RefreshController refreshController = RefreshController(initialRefresh: false);
  final f = ''.obs;
  final process = ''.obs;
  Timer? soundTimer;

  onRefresh(){

  }


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
