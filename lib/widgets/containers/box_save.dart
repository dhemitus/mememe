import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mememe/widgets/widgets.dart';

class BoxSave extends StatelessWidget {
  final String? url, label;
  final GlobalKey globalKey;
  final VoidCallback? onSave, onShare;
  final File? file;
  const BoxSave({Key? key, required this.globalKey, this.url, this.label, this.file, this.onSave, this.onShare}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 2.0.w),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          RepaintBoundary(
            key: globalKey,
            child: BigBox(url: url!, file: file, label: label,),
          ),
          Row(
            children: <Widget>[
              SaveImage(onClick: onSave,)
            ],
          )
        ])
      ),
    );
  }
}
