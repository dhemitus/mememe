import 'dart:convert';
import 'package:equatable/equatable.dart';

class ImgFlipModel extends Equatable {
  final String? id, name, url;
  final int? width, height, boxCount;

  const ImgFlipModel({this.id, this.name, this.url, this.width, this.height, this.boxCount});

  factory ImgFlipModel.fromJson(_json) => ImgFlipModel(
    id: _json['id'] ?? '',
    name: _json['name'] ?? '',
    url: _json['url'] ?? '',
    width: _json['width'] ?? 0,
    height: _json['height'] ?? 0,
    boxCount: _json['box_count'] ?? 0
  );

  factory ImgFlipModel.fromString(_string) => ImgFlipModel.fromJson(jsonDecode(_string));

  Map<String, dynamic> toJson() => {
    'id': id ?? '',
    'name': name ?? '',
    'url': url ?? '',
    'width': width ?? 0,
    'height': height ?? 0,
    'box_count': boxCount ?? 0
  };

  ImgFlipModel copyWith(
    String? id,
    String? name,
    String? url,
    int? width,
    int? height,
    int? boxCount
  ) => ImgFlipModel(
    id: id ?? this.id,
    name: name ?? this.name,
    url: url ?? this.url,
    width: width ?? this.width,
    height: height ?? this.height,
    boxCount: boxCount ?? this.boxCount
  );

  @override
  List<Object?> get props => [id, name, url, width, height, boxCount];
}
