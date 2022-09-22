part of './bloc.dart';

abstract class MemeEvent extends Equatable {
  const MemeEvent();
}

class MemeLoad extends MemeEvent {
  final MemeModel meme;
  const MemeLoad(this.meme);
  @override
  List<MemeModel> get props => [meme];
}

