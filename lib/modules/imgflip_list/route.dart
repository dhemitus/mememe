import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/modules/modules.dart';

class FlipRoute {
  static const String path = '/';
  static const Key key = Key('__flipscreen__');
  static final bloc = BlocProvider<FlipListBloc>(
    create: (context) => FlipListBloc(repo: FlipListRepository())
  );
}
