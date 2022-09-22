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

class LogoLoad extends MemeEvent {
  final MemeModel meme;
  const LogoLoad(this.meme);
  @override
  List<MemeModel> get props => [meme];
}

class LabelLoad extends MemeEvent {
  final MemeModel meme;
  const LabelLoad(this.meme);
  @override
  List<MemeModel> get props => [meme];
}

