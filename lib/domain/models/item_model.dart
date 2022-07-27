import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel(
{required String id,
    required String title,}
  ) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}


// import 'package:json_annotation/json_annotation.dart';

// part 'item_model.g.dart';
// @JsonSerializable()
// class ItemModel {
//   ItemModel({
//     required this.id,
//     required this.title,
//   });

//   final String title;
//   final String id;

//   factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);

//   Map<String, dynamic> toJson() => _$ItemModelToJson(this);

// }
