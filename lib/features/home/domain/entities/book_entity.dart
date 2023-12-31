import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity extends Equatable{
  @HiveField(0)
  final String image ;
  @HiveField(1)
  final String bookName;
  @HiveField(2)
  final String autherName;
  @HiveField(3)
  final dynamic price ;
  @HiveField(4)
  final dynamic rate ;
  @HiveField(5)
  final String url;

  const BookEntity({
    required this.image,
    required this.price,
    required this.bookName,
    required this.autherName,
    required this.rate,
    required this.url,
});

  @override
  List<Object?> get props => [
    image,
    price,
    bookName,
    autherName,
    rate,
    url,
  ];
}