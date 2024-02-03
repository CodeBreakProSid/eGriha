import 'package:egraha_app/infrastructure/core/global_services/box_services.dart';

class CacheServices {
  final box = BoxServices.createBox();

  Future<dynamic> readFromCache(String key) async {
    return await box.read(key);
  }

  Future<void> writeToCache(String key, dynamic data) async {
    await box.write(key, data);
  }

  Future<void> removeCache(String key) async {
    await box.remove(key);
  }
}
