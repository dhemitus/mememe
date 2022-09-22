import 'package:flutter/material.dart';
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
      child: Text(label ?? ''),
      decoration: BoxDecoration(
        color: Colors.amber[100 * (index! % 9)],
        image: ImageUtils.imageNetwork(url!)
      ),
    )
    );
  }
}
