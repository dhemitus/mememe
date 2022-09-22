import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InLoading extends StatelessWidget {
  const InLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(child: CircularProgressIndicator(color: Colors.black, strokeWidth: 1.0.w,)),
    );
  }
}
