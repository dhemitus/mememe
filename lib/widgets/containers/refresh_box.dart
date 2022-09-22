import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefreshBox extends StatelessWidget {
  final Widget child;
  final VoidCallback onRefresh;
  const RefreshBox({Key? key, required this.child, required this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        color: Colors.black,
        strokeWidth: 1.0.w,
        backgroundColor: Colors.white,
        child: child,
        onRefresh: () async =>  onRefresh(),
    );
  }
}
