import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mememe/modules/modules.dart';

part 'event.dart';
part 'state.dart';

class MemeBloc extends Bloc<MemeEvent, MemeState> {

  MemeBloc() : super(MemeLoading()) {
    on<MemeLoad>(_memeLoad);
    on<LogoLoad>(_logoLoad);
    on<LabelLoad>(_labelLoad);
  }

  Future<void> _memeLoad(MemeLoad event, Emitter<MemeState> emit) async {

    emit(MemeLoading());
    try {
      emit(MemeLoaded(event.meme));
    } catch (e) {
      emit(const MemeError(MemeModel(status: MemeStatus.error)));
    }
  }

  Future<void> _logoLoad(LogoLoad event, Emitter<MemeState> emit) async {

    emit(MemeLoading());
    try {
      emit(LogoLoaded(event.meme));
    } catch (e) {
      emit(const MemeError(MemeModel(status: MemeStatus.error)));
    }
  }

  Future<void> _labelLoad(LabelLoad event, Emitter<MemeState> emit) async {

    emit(MemeLoading());
    try {
      emit(LabelLoaded(event.meme));
    } catch (e) {
      emit(const MemeError(MemeModel(status: MemeStatus.error)));
    }
  }
}

