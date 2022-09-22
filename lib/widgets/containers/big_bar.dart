import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BigBar extends StatelessWidget {
  final String? label;

  const BigBar({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(label ?? '', style: GoogleFonts.lato(fontStyle: FontStyle.normal, color: Colors.black, fontSize: 24.sp),),
      backgroundColor: Colors.white,
      expandedHeight: 200.0.w,
    );
  }
}
