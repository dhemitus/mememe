import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaveImage extends StatelessWidget {
  final VoidCallback? onClick;
  const SaveImage({Key? key, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.w),
      child: IconButton(
        icon: Icon(Icons.save, color: Colors.black, size: 32.0.w,),
        onPressed: onClick,
      ),
    );
  }
}
