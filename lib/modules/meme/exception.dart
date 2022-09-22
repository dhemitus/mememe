import 'package:mememe/modules/modules.dart';

class MemeException implements Exception {
  final FlipListModel message;

  MemeException(this.message);
}
