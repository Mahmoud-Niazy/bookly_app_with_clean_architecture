class BookEntity {
  final String image ;
  final String bookName;
  final String autherName;
  final dynamic price ;
  final dynamic rate ;

  BookEntity({
    required this.image,
    required this.price,
    required this.bookName,
    required this.autherName,
    required this.rate,
});
}