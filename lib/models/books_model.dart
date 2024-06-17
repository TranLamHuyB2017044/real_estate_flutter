class BookModel {
  int? bookId;
  String? title;
  int? quantitySold;
  int? avgRating;
  int? originalPrice;
  int? discount;
  String? thumbnailUrl;

  BookModel(
      {this.bookId,
      this.title,
      this.quantitySold,
      this.avgRating,
      this.originalPrice,
      this.discount,
      this.thumbnailUrl});

  BookModel.fromJson(Map<String, dynamic> json) {
    bookId = json['book_id'];
    title = json['title'];
    quantitySold = json['quantity_sold'];
    avgRating = json['avg_rating'];
    originalPrice = json['original_price'];
    discount = json['discount'];
    thumbnailUrl = json['thumbnail_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['book_id'] = this.bookId;
    data['title'] = this.title;
    data['quantity_sold'] = this.quantitySold;
    data['avg_rating'] = this.avgRating;
    data['original_price'] = this.originalPrice;
    data['discount'] = this.discount;
    data['thumbnail_url'] = this.thumbnailUrl;
    return data;
  }
}