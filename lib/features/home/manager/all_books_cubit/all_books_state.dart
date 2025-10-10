import 'package:trysplash/features/home/data/model/book_model.dart';

abstract class AllBooksState{}
class AllBooksInitialState extends  AllBooksState{}
class AllBooksLoadingState extends  AllBooksState{}
class AllBooksSuccessState extends  AllBooksState{
  final List <BookModel> books;

  AllBooksSuccessState({required this.books});
}
class AllBooksErrorState extends  AllBooksState{
  final String errorMessage;

  AllBooksErrorState({required this.errorMessage});
}