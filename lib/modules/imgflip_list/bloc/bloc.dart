import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mememe/modules/modules.dart';

part 'event.dart';
part 'state.dart';

class FlipListBloc extends Bloc<FlipListEvent, FlipListState> {
  final FlipListRepository repo;

  FlipListBloc({required this.repo}) : super(FlipListLoading()) {
    print('go bloc');
    on<FlipListLoad>(_listLoad);
  }

  Future<void> _listLoad(FlipListLoad event, Emitter<FlipListState> emit) async {
    print('cek load');

    emit(FlipListLoading());
    try {
      final _list = await repo.getFlipList();
      emit(FlipListLoaded(_list));
    } on FlipListException catch (e) {
      emit(FlipListError(e.message));
    }
  }
}
