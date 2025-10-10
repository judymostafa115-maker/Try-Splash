import 'package:dartz/dartz.dart';
import 'package:trysplash/features/home/data/model/book_model.dart';

abstract class HomeRepo{
  Future<Either<String,List<BookModel>>>  fetchAllBooks();
  Future<Either<String,List<BookModel>>> fetchFreeBooks();

}