import 'package:ck_front_tool_dart/model/model_mock.dart';
import 'package:ck_front_tool_dart/utils/u_store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MockAndWatchApiLogic extends GetxController{
  late TabController tabController;
  final mockList = <ModelMock>[].obs;
  loadMockConfigList(){
     List<ModelMock> l =  [];
     try{
       final list  = UStore.get("mock_list");
       list.forEach((element){
         l.add(element);
       });
       mockList.value = l;
     }catch(e){
       mockList.value = [];
     }
  }

  @override
  void onReady() {
   loadMockConfigList();
    super.onReady();
  }

  @override
  void onClose() {
    print('close');
    super.onClose();
  }
}
