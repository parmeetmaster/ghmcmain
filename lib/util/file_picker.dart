import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class FilePick {
  Future<File>? pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowCompression: true,
    );
    return File((result!.files.first.path)!);
  }

  Future<File?> takecameraPic() async {
    PickedFile? result = await ImagePicker.platform.pickImage(
      source: ImageSource.camera,
      imageQuality: 5,
    );
    return File((result!.path));
  }
}
