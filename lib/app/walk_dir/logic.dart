import 'dart:async';
import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';
import 'package:fixnum/fixnum.dart';

import 'package:ck_front_tool_dart/grpc/core/other/other.pb.dart';
import 'package:ck_front_tool_dart/grpc/handle.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class WalkDirLogic extends GetxController {

  RefreshController refreshController = RefreshController(initialRefresh: true);
  final f = ''.obs;
  final process = ''.obs;
  bool loading = false;
  Timer? soundTimer;
  final list = [].obs;
  onRefresh() async {
     var _list =  await UGrpcHandle.getHandle().walkDiskList(WalkDiskListRequest(
        sId: 0,
      ));
     _list.data.forEach((element) {
       list.add(element);
     });
     refreshController.refreshCompleted();
  }
  onLoading() async {
    loading = true;
    try{
      print(list[list.length-1].id);
      var _list =  await UGrpcHandle.getHandle().walkDiskList(WalkDiskListRequest(
        sId: list.length,
      ));
      //
      _list.data.forEach((element) {
        list.add(element);
      });
    }catch(e){
      print(e);
    }

    loading = false;
  }


  @override
  void onReady() {
    super.onReady();
    soundTimer?.cancel();
    soundTimer = Timer.periodic(const Duration(seconds: 3), (timer) async  {
      Code result = await UGrpcHandle.getHandle().walkDiskProcess(Empty());
        process.value = result.msg;
    });

    onRefresh();
  }

  @override
  void onClose() {
    super.onClose();
    soundTimer?.cancel();
  }

}
