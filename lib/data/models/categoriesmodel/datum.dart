class CategoriesModel {
  String? id;
  String? nameEn;
  String? nameAr;
  String? image;
  String? categoryDate;

  CategoriesModel(
      {this.id, this.nameEn, this.nameAr, this.image, this.categoryDate});

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
        id: json['id'] as String?,
        nameEn: json['name_en'] as String?,
        nameAr: json['name_ar'] as String?,
        image: json['image'] as String?,
        categoryDate: json['category_date'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name_en': nameEn,
        'name_ar': nameAr,
        'image': image,
        'category_date': categoryDate,
      };
}
