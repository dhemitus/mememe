import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InserText extends StatelessWidget {
  final VoidCallback? onClick;
  const InserText({Key? key, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.w),
      child: IconButton(
        icon: Icon(Icons.edit_note, color: Colors.black, size: 32.0.w,),
        onPressed: onClick,
      ),
    );
  }
}
