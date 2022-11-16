import 'package:ck_front_tool_dart/app/mock_and_watch_api/logic.dart';
import 'package:ck_front_tool_dart/model/model_mock.dart';
import 'package:ck_front_tool_dart/utils/u_store.dart';
import 'package:get/get.dart';

class MockAndWatchApiPageAddLogic extends GetxController {
  submit(ModelMock data) async {
    List<ModelMock> list = [];
    try{
      list = await UStore.get("mock_list");
    }catch(e){}

    list.add(data);

    await UStore.update("mock_list", list);
    final mockLogic =  Get.find<MockAndWatchApiLogic>();
    mockLogic.loadMockConfigList();
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
