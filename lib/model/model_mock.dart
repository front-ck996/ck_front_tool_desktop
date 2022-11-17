import 'package:hive/hive.dart';



class ModelMock {
  String? title; // 任务显示的标题
  String? firstDomain; // 域名前缀
  String? proxyUrl; // 反向代理地址
  ModelMock({this.title,this.firstDomain, this.proxyUrl});
  toJson(){
    return {
      "title":title,
      "firstDomain": firstDomain,
      "proxyUrl": proxyUrl,
    };
  }
}

class ModelMockAdapter extends TypeAdapter<ModelMock>{
  @override
  ModelMock read(BinaryReader reader) {
    return ModelMock(
      firstDomain: reader.read(),
      title: reader.read(),
      proxyUrl: reader.read(),
    );
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, ModelMock obj) {
    writer.write(obj.firstDomain);
    writer.write(obj.title);
    writer.write(obj.proxyUrl);
  }
}