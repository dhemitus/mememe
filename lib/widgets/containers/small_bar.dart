import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallBar extends StatelessWidget {
  final String? label;
  final bool? next;
  final VoidCallback? onNext;

  const SmallBar({Key? key, this.label, this.next = true, this.onNext}) : super(key: key);

  void _call() {}

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
      elevation: 0.0,
      floating: false,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      leading: IconButton(
        icon: Icon(Icons.chevron_left, size: 32.w,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(label ?? '', style: GoogleFonts.lato(fontStyle: FontStyle.normal, color: Colors.black, fontSize: 12.sp),),
        centerTitle: true,
      ),
      actions: next! ? <Widget>[
        IconButton(
          icon: Icon(Icons.check, size: 32.w,),
          tooltip: 'Add new entry',
          onPressed: next! ? onNext! : _call,
        ),
      ] : <Widget>[],
      backgroundColor: Colors.white,
      expandedHeight: 100.0.w,
    );
  }
}
