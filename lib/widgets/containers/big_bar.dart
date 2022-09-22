import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigBar extends StatelessWidget {
  final String? label;

  const BigBar({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(label ?? '', style: TextStyle(color: Colors.amber),),
      backgroundColor: Colors.white,
      expandedHeight: 200.0.w,
    );
  }
}
