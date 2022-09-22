import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:mememe/modules/modules.dart';
import 'package:mememe/shared/shared.dart';

class MemeModel extends Equatable {
  final ImgFlipModel? pic;
  final MemeStatus? status;
  final File? logo;
  final String? label;
  const MemeModel({this.pic, this.status, this.logo, this.label});

  MemeModel copyWith({
    ImgFlipModel? pic,
    MemeStatus? status,
    File? logo,
    String? label
  }) => MemeModel(
    pic: pic ?? this.pic,
    status: status ?? this.status,
    logo: logo ?? this.logo,
    label: label ?? this.label
  );

  @override
  List<Object?> get props => [pic, status, logo, label];
}
