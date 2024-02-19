import 'package:image_picker/image_picker.dart';

class ImageUploadServices {
  final picker = ImagePicker();

  Future<XFile?> uploadImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await picker.pickImage(source: source);
      if (pickedFile != null) {
        final extension = pickedFile.path.split('.').last;
        if (extension != 'jpeg' && extension != 'jpg') {
          return null;
        } else {
          return pickedFile;
        }
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
