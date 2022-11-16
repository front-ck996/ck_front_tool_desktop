import 'package:hive/hive.dart';



class ModelMock {
  String? title;
  String? firstDomain;
  ModelMock({this.title,this.firstDomain});
}

class ModelMockAdapter extends TypeAdapter<ModelMock>{
  @override
  ModelMock read(BinaryReader reader) {
    return ModelMock(
      firstDomain: reader.read()
    );
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, ModelMock obj) {
    writer.write(obj.firstDomain);
  }
}