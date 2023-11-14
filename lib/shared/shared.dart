import 'dart:convert';
import 'dart:io';
import 'dart:math' as maths;

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:secure_shared_preferences/secure_shared_pref.dart';

part 'theme.dart';
part 'shared_image.dart';
part 'shared_string.dart';
part 'shared_size.dart';
part 'shared_dialog.dart';
part 'shared_value.dart';

class FileConverter {
  static String getBase64FormateFile(String path) {
    File file = File(path);
    List<int> fileInByte = file.readAsBytesSync();
    String fileInBase64 = base64Encode(fileInByte);
    return fileInBase64;
  }

  static Future<int> getSizeFile(String path) async {
    File file = File(path);
    int fileSizeInBytes = await file.length();
    return fileSizeInBytes;
  }
}

class MyMap {
  static double calculateDistance(
      {required double lat1,
      required double long1,
      required double lat2,
      required double long2}) {
    var p = 0.017453292519943295;
    var c = maths.cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((long2 - long1) * p)) / 2;
    return 12742 * maths.asin(maths.sqrt(a));
  }
}
