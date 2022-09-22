import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/models/imgflip_model.dart';

class FlipListRepository {

  Future<FlipListModel> getFlipList() async {
    print('cek cek cek');
    try {
      final http.Response _response = await http.get(Uri.https('api.imgflip.com', '/get_memes'));
      if(_response.statusCode == 200) {

        final Map<String, dynamic> _body = jsonDecode(_response.body);
        List<ImgFlipModel> _list = [];
        _body['data']['memes'].map((_j) {
          _list.add(ImgFlipModel.fromJson(_j));
        }).toList();

        print(_list);

        return FlipListModel(list: _list, status: FlipListStatus.done);
      } else {
        throw FlipListException(const FlipListModel(status: FlipListStatus.undone));
      }
    } catch(e) {
      throw FlipListException(const FlipListModel(status: FlipListStatus.error));
    }
  }

}
