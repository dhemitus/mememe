import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';
import 'package:mememe/widgets/widgets.dart';

class FlipScreen extends StatelessWidget {

  const FlipScreen({Key? key}) : super(key: FlipRoute.key);


  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FlipListBloc>(context).add(FlipListLoad());

    void _refresh() {
      BlocProvider.of<FlipListBloc>(context).add(FlipListLoad());
    }

    void _go(ImgFlipModel flip) {
      BlocProvider.of<MemeBloc>(context).add(MemeLoad(MemeModel(pic: flip)));
      Navigator.of(context).pushNamed(MemeRoute.path);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshBox(
        child: CustomScrollView(
        slivers: [
          const BigBar(
            label: 'meme list',
          ),
          BlocBuilder<FlipListBloc, FlipListState>(
            builder: (BuildContext context, FlipListState state) {
              if(state is FlipListLoading) {
                return const InLoading();
              }
              if(state is FlipListLoaded) {
                FlipListModel _data = state.list;
                List<ImgFlipModel> _list = [];
                if(_data.list!.isNotEmpty) {
                  _list = _data.list!;
                }

                if(_list.isNotEmpty) {
                  return BoxGrid(
                    SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        ImgFlipModel _item = _list[index];
                        return SmallBox(label: _item.name!, url: _item.url!, index: index, onClick: () => _go(_item));
                      },
                      childCount: _list.length
                    ) 
                  );
                } else {
                  return const SliverFillRemaining(
                    child: Text('kosong')
                  );
                }
              }

              return const SliverFillRemaining(
                child: Text('adu')
              );
            }
          )
        ],
      ), onRefresh: _refresh)
    );
  }
}
