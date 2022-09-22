import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/modules/modules.dart';

class Blocs {
  static MultiBlocProvider blocList(Widget child) {
    return MultiBlocProvider(
      providers: [
        FlipRoute.bloc,
        MemeRoute.bloc
      ], 
      child: child
    );
  }
}
