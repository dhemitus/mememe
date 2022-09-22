import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';
import 'package:mememe/widgets/widgets.dart';

class CaptureScreen extends StatelessWidget {
  const CaptureScreen({Key? key}) : super(key: CaptureRoute.key);

  @override
  Widget build(BuildContext context) {


    void _onSave() async {
      MemeModel _meme = context.read<MemeBloc>().state.props.first as MemeModel;
      File _file = await ImageUtils.load();
      _meme = _meme.copyWith(logo: _file);
      //BlocProvider.of<MemeBloc>(context).add(LogoLoad(_meme));
    }

    void _onShare() {
      MemeModel _meme = context.read<MemeBloc>().state.props.first as MemeModel;
      //BlocProvider.of<MemeBloc>(context).add(LabelLoad(_meme));
    }

    Widget _load(MemeState state) {
      if(state is MemeLoading) {
        return const InLoading();
      }

      if(state is LabelLoaded) {
        return BoxSave(url: state.meme.pic!.url!, label: state.meme.label!, file: state.meme.logo!, onSave: _onSave, onShare: _onShare);
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
