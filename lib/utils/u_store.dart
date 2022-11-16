import 'package:hive/hive.dart';

class UStore {
  static late Box boxHandle;

  static init() async {
    Hive.init("db/db.hive");
    boxHandle = await Hive.openBox("db0");
  }

  // add 需保证原始数据不存在
  static Future<bool> add(key, value) async {
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

  static Future<bool> delete(key) async {

    if (!isExists(key)) {
      return false;
    }
    await boxHandle.delete(key);
    return true;
  }

  static update(key, value) async {
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

  static get(key) {
    return boxHandle.get(key);
  }

  static Future<bool> addOrUpdate(key, value) async {
    try {
      await boxHandle.put(key, value);
    } catch (e) {
      print(e);
      return false;
    }
    return true;
  }

  static bool isExists(key) {
    if (boxHandle.get(key) != null) {
      return true;
    }
    return false;
  }
}
