import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mememe/modules/modules.dart';

part 'event.dart';
part 'state.dart';

class MemeBloc extends Bloc<MemeEvent, MemeState> {

  MemeBloc() : super(MemeLoading()) {
    on<MemeLoad>(_memeLoad);
  }

  Future<void> _memeLoad(MemeLoad event, Emitter<MemeState> emit) async {

    emit(MemeLoading());
    try {
      emit(MemeLoaded(event.meme));
    } catch (e) {
      emit(const MemeError(MemeModel(status: MemeStatus.error)));
    }
  }
}

