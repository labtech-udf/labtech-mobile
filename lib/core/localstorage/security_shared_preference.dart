import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'security_local_storage.dart';

class SecuritySharedPreference implements SecurityLocalStorage {
  final storage = const FlutterSecureStorage();
  @override
  exists(String key) async {
    try {
      return await storage.containsKey(key: key);
    } catch (e) {
      return throw Exception(e);
    }
  }

  @override
  read(String key) async {
    var value;
    try {
      value = await storage.read(key: key);
    } catch (e) {
      return throw Exception(e);
    }
    return value;
  }

  @override
  remove(String key) async {
    try {
      await storage.delete(key: key);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  removeAll() async {
    try {
      await storage.deleteAll();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  write(String key, dynamic value) async {
    try {
      await storage.write(key: key, value: value);
    } catch (e) {
      throw Exception(e);
    }
  }
}
