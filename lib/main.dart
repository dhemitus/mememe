import 'package:flutter/material.dart';
import 'package:mememe/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/observ.dart';
import 'package:mememe/app.dart';

void main() {
  Bloc.observer = FlipObserv();
  Utils.initSystem();
  runApp(const App());
}

