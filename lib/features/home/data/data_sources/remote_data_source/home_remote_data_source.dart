import 'package:bookly_with_clean_architecture/constants.dart';
import 'package:bookly_with_clean_architecture/core/api_services/api_services.dart';
import 'package:bookly_with_clean_architecture/core/utils/end_points.dart';
import 'package:bookly_with_clean_architecture/features/home/data/models/book_model.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';

import '../../../../../core/function/save_books_locally.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewestBooks();

  Future<List<BookEntity>> fetchSearchedBooks({required String search});
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  ApiServices apiServices;

  HomeRemoteDataSourceImp(this.apiServices);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.getData(
      endPoint: EndPoints.fetchFeaturedAndNewestBooksEndPoint,
      query: {
        'Filtering': 'free-ebooks',
        'q': 'Mobile Apps Programming',
      },
    );
    List<BookEntity> books = [];
    fetchBooks(data: data, books: books);
    saveBooksLocally(books: books, boxName: kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices.getData(
      endPoint: EndPoints.fetchFeaturedAndNewestBooksEndPoint,
      query: {
        'Filtering': 'free-ebooks',
        'q': 'programming',
        'Sorting': 'newest',
      },
    );
    List<BookEntity> books = [];
    fetchBooks(data: data, books: books);
    saveBooksLocally(books: books, boxName: kNewestBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchSearchedBooks({required String search}) async{
    var data = await apiServices.getData(
      endPoint: EndPoints.fetchFeaturedAndNewestBooksEndPoint,
      query: {
        'q' : search,
      }
    );
    List<BookEntity> books =[];
    fetchBooks(data: data, books: books);
    return books;
  }
}

fetchBooks({
  required Map<String, dynamic> data,
  required List<BookEntity> books,
}) {
  for (var book in data['items']) {
    books.add(BookModel.fromJson(book));
  }
}
