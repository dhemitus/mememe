import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mememe/shared/shared.dart';


class SmallBox extends StatelessWidget {
  final String? label, url;
  final int? index;
  final VoidCallback? onClick;

  _call() {}

  const SmallBox({Key? key, this.label, this.url, this.index, this.onClick}) : super(key: key);
  @override
  Widget build (BuildContext context) {

    return InkWell(
      onTap: onClick ?? _call,
      child: Container(
      alignment: Alignment.center,
      child: Text(label ?? '', style: GoogleFonts.lato(fontStyle: FontStyle.normal, color: Colors.white, fontSize: 10.sp),),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity((index! % 9)/10),
        image: ImageUtils.imageNetwork(url!)
      ),
    )
    );
  }
}
