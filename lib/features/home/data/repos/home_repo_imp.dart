import 'package:bookly_with_clean_architecture/core/errors/errors.dart';
import 'package:bookly_with_clean_architecture/core/function/check_internet_connection.dart';
import 'package:bookly_with_clean_architecture/features/home/data/data_sources/local_data_source/home_local_data_source.dart';
import 'package:bookly_with_clean_architecture/features/home/data/data_sources/remote_data_source/home_remote_data_source.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  HomeRemoteDataSource homeRemoteDataSource;
  HomeLocalDataSource homeLocalDataSource;

  HomeRepoImp(
    this.homeLocalDataSource,
    this.homeRemoteDataSource,
  );

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books = [];
      if(await isInternetConnected()){
        books = homeLocalDataSource.fetchFeaturedBooks();
        if (books.isNotEmpty) {
          return right(books);
        }
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (error) {
      if(error is DioException){
        return left(ServerFailure.fromDioException(error));
      }
      else{
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks()async {
    try {
      List<BookEntity> books =[];
      if(await isInternetConnected()){
        books = homeLocalDataSource.fetchNewestBooks();
        if(books.isNotEmpty){
          return right(books);
        }
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    }
    catch (error) {
      if(error is DioException){
        return left(ServerFailure.fromDioException(error));
      }
      else{
        return left(ServerFailure(error.toString()));
      }
    }
  }
}



