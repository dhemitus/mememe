import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';
import 'package:mememe/widgets/widgets.dart';

class MemeScreen extends StatelessWidget {

  const MemeScreen({Key? key}) : super(key: MemeRoute.key);

  @override
  Widget build(BuildContext context) {
    Widget _load(MemeState state) {
      //if(state is MemeLoading) {
        return const InLoading();
      //}

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
