import 'package:equatable/equatable.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';

class FlipListModel extends Equatable {
  final List<ImgFlipModel>? list;
  final FlipListStatus? status;

  const FlipListModel({this.list, this.status});

  @override
  List<Object?> get props => [list, status];
}
