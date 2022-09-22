import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MemeLabel extends StatelessWidget {
  final String? label;
  const MemeLabel({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 144.0.w,
      top: 24.0.w,
      child: Text(label ?? '', style: GoogleFonts.lato(fontStyle: FontStyle.normal, color: Colors.black, fontSize: 42.sp))
    );
  }
}
