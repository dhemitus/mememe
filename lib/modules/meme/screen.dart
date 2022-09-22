import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';
import 'package:mememe/widgets/widgets.dart';

class MemeScreen extends StatelessWidget {
  const MemeScreen({Key? key}) : super(key: MemeRoute.key);

  @override
  Widget build(BuildContext context) {

    final TextEditingController _controller = TextEditingController();

    void _onLoad() async {
      MemeModel _meme = context.read<MemeBloc>().state.props.first as MemeModel;
      File _file = await ImageUtils.load();
      _meme = _meme.copyWith(logo: _file);
      BlocProvider.of<MemeBloc>(context).add(LogoLoad(_meme));
    }

    void _onInsert() {
      MemeModel _meme = context.read<MemeBloc>().state.props.first as MemeModel;
       _meme = _meme.copyWith(label: _controller.text);
      BlocProvider.of<MemeBloc>(context).add(LabelLoad(_meme));
    }

    Widget _load(MemeState state) {
      if(state is MemeLoading) {
        return const InLoading();
      }

      if(state is MemeLoaded) {
        return BoxList(url: state.meme.pic!.url!, onLoad: _onLoad, onInsert: _onInsert, controller: _controller,);
      }

      if(state is LogoLoaded) {
        return BoxList(url: state.meme.pic!.url!, file: state.meme.logo!, onLoad: _onLoad, onInsert: _onInsert, controller: _controller,);
      }

      if(state is LabelLoaded) {
        return BoxList(url: state.meme.pic!.url!, label: state.meme.label!, file: state.meme.logo!, onLoad: _onLoad, onInsert: _onInsert, controller: _controller,);
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
          if(state is MemeLoaded) {
            _label = state.meme.pic!.name!;
          }
        return CustomScrollView(
          slivers: [
            SmallBar(label: _label),
            _load(state)
          ],
        );
      }),
    );
  }
}
