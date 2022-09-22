part of './bloc.dart';

abstract class MemeState extends Equatable {
  const MemeState();

  @override
  List<Object> get props => [];
}

class MemeLoading extends MemeState {}

class MemeLoaded extends MemeState {
  final MemeModel meme;
  const MemeLoaded(this.meme);
  @override
  List<MemeModel> get props => [meme];
}

class LogoLoaded extends MemeState {
  final MemeModel meme;
  const LogoLoaded(this.meme);
  @override
  List<MemeModel> get props => [meme];
}

class LabelLoaded extends MemeState {
  final MemeModel meme;
  const LabelLoaded(this.meme);
  @override
  List<MemeModel> get props => [meme];
}

class MemeError extends MemeState {
  final MemeModel error;
  const MemeError(this.error);
  @override
  List<MemeModel> get props => [error];
}
