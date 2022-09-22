import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mememe/modules/modules.dart';

class FlipListRepository {

  Future<FlipListModel> getFlipList() async {
    try {
      final http.Response _response = await http.get(Uri.https('api.imgflip.com', '/get_memes'));
      if(_response.statusCode == 200) {

        final Map<String, dynamic> _body = jsonDecode(_response.body);

        FlipListModel _data = FlipListModel.fromJsonList(_body['data']['memes']);
        _data = _data.copyWith(status: FlipListStatus.done);
        return _data;
      } else {
        throw FlipListException(const FlipListModel(status: FlipListStatus.undone));
      }
    } catch(e) {
      throw FlipListException(const FlipListModel(status: FlipListStatus.error));
    }
  }

}
