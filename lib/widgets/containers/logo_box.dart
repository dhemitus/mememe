import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mememe/shared/shared.dart';

class LogoBox extends StatelessWidget {
  final File? file;

  const LogoBox({Key? key, this.file}) : super(key: key);
  @override
  Widget build (BuildContext context) {

    return Container(
      margin: EdgeInsets.all(24.0.w),
      alignment: Alignment.center,
      width: 96.w,
      height: 96.w,
      decoration: BoxDecoration(
        image: ImageUtils.imageFile(file!, fit: BoxFit.contain)
      ),
    );
  }
}
