import 'package:mememe/modules/modules.dart';

class CaptureException implements Exception {
  final FlipListModel message;

  CaptureException(this.message);
}
