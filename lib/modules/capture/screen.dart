import 'dart:io';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';
import 'package:mememe/widgets/widgets.dart';
import 'package:path_provider/path_provider.dart';

class CaptureScreen extends StatefulWidget {
  const CaptureScreen({Key? key}) : super(key: key);

  @override
  State<CaptureScreen> createState() => _CaptureScreenState();
}

class _CaptureScreenState extends State<CaptureScreen> {

  final GlobalKey globalKey = GlobalKey();

  Future<void> _onSave() async {
    RenderRepaintBoundary? boundary =
    globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    ui.Image _image = await boundary.toImage();
    var byte = await _image.toByteData(format: ui.ImageByteFormat.png);
    var imagebyte = byte!.buffer.asUint8List();
    print(imagebyte);
    if (imagebyte != null) {
      final directory = await getApplicationDocumentsDirectory();
      final imagePath = await File('${directory.path}/container_image.png').create();
      await imagePath.writeAsBytes(imagebyte);
    }

  }

  void _onShare() {
    MemeModel _meme = context.read<MemeBloc>().state.props.first as MemeModel;
    //BlocProvider.of<MemeBloc>(context).add(LabelLoad(_meme));
  }

  @override
  Widget build(BuildContext context) {


    Widget _load(MemeState state) {
      if(state is MemeLoading) {
        return const InLoading();
      }

      if(state is LabelLoaded) {
        return BoxSave(globalKey: globalKey, url: state.meme.pic!.url!, label: state.meme.label!, file: state.meme.logo!, onSave: _onSave, onShare: _onShare);
      }

      return const SliverFillRemaining(
        child: Text('adu')
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<MemeBloc, MemeState>(
        builder: (BuildContext context, MemeState state) {
          String _label = '';
          if(state is LabelLoaded) {
            _label = state.meme.pic!.name!;
          }
        return CustomScrollView(
          slivers: [
            SmallBar(label: _label, next: false,),
            _load(state)
          ],
        );
      }),
    );
  }
}
