part of './bloc.dart';

abstract class FlipListState extends Equatable {
  const FlipListState();

  @override
  List<Object> get props => [];
}

class FlipListLoading extends FlipListState {}

class FlipListLoaded extends FlipListState {
  final FlipListModel list;
  const FlipListLoaded(this.list);
  @override
  List<FlipListModel> get props => [list];
}

class FlipListError extends FlipListState {
  final FlipListModel error;
  const FlipListError(this.error);
  @override
  List<FlipListModel> get props => [error];
}
