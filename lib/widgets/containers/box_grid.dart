import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxGrid extends StatelessWidget {

  final SliverChildBuilderDelegate delegate;

  const BoxGrid(this.delegate, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: delegate, 
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0.w,
        mainAxisSpacing: 10.0.w,
        crossAxisSpacing: 10.0.w,
        childAspectRatio: 1.0
      )
    );
  }
}
