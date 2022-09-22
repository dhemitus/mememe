part of './bloc.dart';

abstract class FlipListEvent extends Equatable {
  const FlipListEvent();
}

class FlipListLoad extends FlipListEvent {
  @override
  List<Object> get props => [];
}
