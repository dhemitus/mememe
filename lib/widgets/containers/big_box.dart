import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mememe/shared/shared.dart';
import 'package:mememe/widgets/widgets.dart';

class BigBox extends StatelessWidget {
  final String? url, label;
  final File? file;

  const BigBox({Key? key, this.url, this.label, this.file}) : super(key: key);
  @override
  Widget build (BuildContext context) {

    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 1.sw,
          height: 1.sw,
          decoration: BoxDecoration(
            image: ImageUtils.imageNetwork(url!)
          ),
        ),
        file != null ? LogoBox(file: file) : Container(width: 20, height: 20, color: Colors.red,),
        label != null ? MemeLabel(label: label) : Container()
      ]
    );
  }
}
