import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:mememe/modules/modules.dart';

class CaptureModel extends Equatable {
  final MemeModel? meme;
  final CaptureStatus? status;
  final File? pic;
  const CaptureModel({this.pic, this.status, this.meme});

  CaptureModel copyWith({
    MemeModel? meme,
    CaptureStatus? status,
    File? pic
  }) => CaptureModel(
    pic: pic ?? this.pic,
    status: status ?? this.status,
    meme: meme ?? this.meme,
  );

  @override
  List<Object?> get props => [pic, status, meme];
}
