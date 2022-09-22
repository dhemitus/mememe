import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mememe/widgets/widgets.dart';

class BoxList extends StatelessWidget {
  final String? url, label;
  final VoidCallback? onLoad, onInsert;
  final File? file;
  final TextEditingController? controller;
  const BoxList({Key? key, this.url, this.label, this.file, this.onLoad, this.onInsert, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 2.0.w),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          BigBox(url: url!, file: file, label: label,),
          Row(
            children: <Widget>[
              LoadLogo(onClick: onLoad),
              file != null ? InsertField(controller: controller,) : Container(),
              file != null ? InserText(onClick: onInsert,) : Container()
            ],
          )
        ])
      ),
    );
  }
}
