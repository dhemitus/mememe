import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUtils {
  static DecorationImage imageNetwork(String url, {BoxFit? fit, ColorFilter? filter}) {
    return DecorationImage(image: NetworkImage(url), fit: fit ?? BoxFit.cover, colorFilter: filter);
  }

  static DecorationImage imageFile(File file, {BoxFit? fit, ColorFilter? filter}) {
    return DecorationImage(image: FileImage(file), fit: fit ?? BoxFit.cover, colorFilter: filter);
  }

  static Future<File> load() async {
    ImagePicker _picker = ImagePicker();
    XFile? _file = await _picker.pickImage(source: ImageSource.gallery, maxWidth: 350, maxHeight: 350, imageQuality: 60);

    return File(_file!.path);
  }
}
