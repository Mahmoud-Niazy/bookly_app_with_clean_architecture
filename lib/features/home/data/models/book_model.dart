import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';

class BookModel extends BookEntity{
   String? bookId;
   VolumeInfo? volumeInfo;

  BookModel({
    required this.bookId,
    required this.volumeInfo,
}) : super(
    image: volumeInfo!.image!,
    bookName: volumeInfo.title!,
    autherName: volumeInfo.autherName!,
    price: 'Free',
    rate: volumeInfo.rating,
  );

  factory BookModel.fromJson(Map<String,dynamic> json) => BookModel(
      bookId : json['id'],
      volumeInfo : VolumeInfo.fromJson(json['volumeInfo']),
  );

}

class VolumeInfo{
  String? title ;
  String? autherName;
  String? image;
  dynamic rating ;
  
  VolumeInfo.fromJson(Map<String,dynamic> json){
    title = json['title'];
    autherName = json['authors'][0];
    image = json['imageLinks']['thumbnail'];
    rating = json['averageRating'];
  }
}