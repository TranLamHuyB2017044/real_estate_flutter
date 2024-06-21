class ProductModel {
  String? sId;
  String? title;
  String? desc;
  String? img;
  dynamic price;
  int? inStock;

  ProductModel({
    this.sId,
    this.title,
    this.desc,
    this.img,
    this.price,
    this.inStock,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    desc = json['desc'];
    img = json['img'][0]['url_img'];
    price = json['price'];
    inStock = json['inStock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['desc'] = desc;
    data['img'] = img;
    data['price'] = price;
    data['inStock'] = inStock;
    return data;
  }
}
