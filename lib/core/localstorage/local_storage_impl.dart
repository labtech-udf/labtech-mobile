import 'package:shared_preferences/shared_preferences.dart';

import 'local_storage.dart';

class LocalStorageImpl implements LocalStorage {
  final SharedPreferences prefs;
  LocalStorageImpl(this.prefs);
  @override
  Future<bool> exists(String key) async {
    try {
      return prefs.containsKey(key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> read(String key) async {
    try {
      return prefs.get(key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> remove(String key) async {
    try {
      await prefs.remove(key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeAll() async {
    try {
      await prefs.clear();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> write(String key, value) async {
    try {
      if (value is String) {
        await prefs.setString(key, value);
      } else if (value is int) {
        await prefs.setInt(key, value);
      } else if (value is double) {
        await prefs.setDouble(key, value);
      } else if (value is bool) {
        await prefs.setBool(key, value);
      } else if (value is List<String>) {
        await prefs.setStringList(key, value);
      } else {
        throw Exception('Tipo de dado não suportado');
      }
    } catch (e) {
      rethrow;
    }
  }
}
