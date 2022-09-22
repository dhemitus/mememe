import 'package:equatable/equatable.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';

class FlipListModel extends Equatable {
  final List<ImgFlipModel>? list;
  final FlipListStatus? status;

  const FlipListModel({this.list, this.status});

  factory FlipListModel.fromJsonList(_json) {
    List<ImgFlipModel> _list = [];
    _json.map((_j) {
      _list.add(ImgFlipModel.fromJson(_j));
    }).toList();
    return FlipListModel(list: _list);
  }

  FlipListModel copyWith({
    List<ImgFlipModel>? list,
    FlipListStatus? status
  }) => FlipListModel(
    list: list ?? this.list,
    status: status ?? this.status
  );

  @override
  List<Object?> get props => [list, status];
}
