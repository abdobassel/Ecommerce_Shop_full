class ItemsModel {
  String? id;
  String? nameEn;
  String? nameAr;
  String? descEn;
  String? descAr;
  String? image;
  String? itemsCount;
  String? active;
  String? price;
  String? date;
  String? discount;
  String? catId;
  String? catnameEn;
  String? catnameAr;

  ItemsModel({
    this.id,
    this.nameEn,
    this.nameAr,
    this.descEn,
    this.descAr,
    this.image,
    this.itemsCount,
    this.active,
    this.price,
    this.date,
    this.discount,
    this.catId,
    this.catnameEn,
    this.catnameAr,
  });

  factory ItemsModel.fromJson(Map<String, dynamic> json) => ItemsModel(
        id: json['id'] as String?,
        nameEn: json['name_en'] as String?,
        nameAr: json['name_ar'] as String?,
        descEn: json['desc_en'] as String?,
        descAr: json['desc_ar'] as String?,
        image: json['image'] as String?,
        itemsCount: json['items_count'] as String?,
        active: json['active'] as String?,
        price: json['price'] as String?,
        date: json['date'] as String?,
        discount: json['discount'] as String?,
        catId: json['cat_id'] as String?,
        catnameEn: json['catname_en'] as String?,
        catnameAr: json['catname_ar'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name_en': nameEn,
        'name_ar': nameAr,
        'desc_en': descEn,
        'desc_ar': descAr,
        'image': image,
        'items_count': itemsCount,
        'active': active,
        'price': price,
        'date': date,
        'discount': discount,
        'cat_id': catId,
        'catname_en': catnameEn,
        'catname_ar': catnameAr,
      };
}
