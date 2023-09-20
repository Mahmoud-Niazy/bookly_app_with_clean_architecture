import 'package:bookly_with_clean_architecture/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBools();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBools() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}