import 'package:ck_front_tool_dart/model/model_mock.dart';
import 'package:hive/hive.dart';

class UStoreHive {
  late Box boxHandle;

  UStoreHive();

  init(String dbName) async {
    boxHandle = await Hive.openBox(dbName);
  }

  Box getBox() {
    return boxHandle;
  }

  // add 需保证原始数据不存在
  Future<bool> add(key, value) async {
    if (isExists(key)) {
      print('key 不允许重复添加');
      return false;
    }
    try {
      await boxHandle.put(key, value);
    } catch (e) {
      print(e);
      return false;
    }
    return true;
  }

  Future<bool> delete(key) async {
    if (!isExists(key)) {
      return false;
    }
    await boxHandle.delete(key);
    return true;
  }

  update(key, value) async {
    if (!isExists(key)) {
      print('key 不存在先添加');
      return false;
    }
    try {
      await boxHandle.put(key, value);
    } catch (e) {
      print(e);
      return false;
    }
    return true;
  }

  T get<T>(key) {
    return boxHandle.get(key);
  }

  Future<bool> addOrUpdate(key, value) async {
    try {
      await boxHandle.put(key, value);
    } catch (e) {
      print(e);
      return false;
    }
    return true;
  }

  bool isExists(key) {
    if (boxHandle.get(key) != null) {
      return true;
    }
    return false;
  }
}
