abstract class LocalStorage {
  Future<void> write(String key, dynamic value);
  Future<dynamic> read(String key);
  Future<bool> exists(String key);
  Future<void> remove(String key);
  Future<void> removeAll();
}
