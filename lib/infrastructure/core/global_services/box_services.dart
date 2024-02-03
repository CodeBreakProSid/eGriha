import 'package:get_storage/get_storage.dart';

class BoxServices {
  final box = createBox();
  BoxServices._internal();
  static final _singleton = BoxServices._internal();
  factory BoxServices() => _singleton;

  static GetStorage createBox() {
    final box = GetStorage();

    return box;
  }
}
