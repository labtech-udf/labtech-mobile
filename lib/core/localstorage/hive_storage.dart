import 'local_storage.dart';

class HiveStorage implements LocalStorage {
  HiveStorage({required String boxName}) {}
  @override
  Future<bool> exists(String key) {
    // TODO: implement exists
    throw UnimplementedError();
  }

  @override
  Future read(String key) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> remove(String key) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<void> removeAll() {
    // TODO: implement removeAll
    throw UnimplementedError();
  }

  @override
  Future<void> write(String key, value) {
    // TODO: implement write
    throw UnimplementedError();
  }
}
