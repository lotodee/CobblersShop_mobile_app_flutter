import "package:get_storage/get_storage.dart";

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }
  TLocalStorage._internal();
  final _storage = GetStorage();

  //generic method to save data

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //generic method o read dta
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //generic method to remoe data

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //cwlar all dat in storage

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
