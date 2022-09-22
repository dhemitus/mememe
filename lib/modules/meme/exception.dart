import 'package:mememe/modules/modules.dart';

class MemeException implements Exception {
  final MemeModel message;

  MemeException(this.message);
}
