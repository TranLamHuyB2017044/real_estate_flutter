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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['book_id'] = bookId;
    data['title'] = title;
    data['quantity_sold'] = quantitySold;
    data['avg_rating'] = avgRating;
    data['original_price'] = originalPrice;
    data['discount'] = discount;
    data['thumbnail_url'] = thumbnailUrl;
    return data;
  }
}
