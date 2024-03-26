import 'datum.dart';

class CategoriesDataModel {
  String? status;
  List<CategoriesModel>? data;

  CategoriesDataModel({this.status, this.data});

  factory CategoriesDataModel.fromJson(Map<String, dynamic> json) {
    return CategoriesDataModel(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
