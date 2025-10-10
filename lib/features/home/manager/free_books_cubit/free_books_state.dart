import 'package:trysplash/features/home/data/model/book_model.dart';

abstract class FreeBooksState{}
class FreeBooksInitialState extends  FreeBooksState{}
class FreeBooksLoadingState extends  FreeBooksState{}
class FreeBooksSuccessState extends  FreeBooksState{
  final List <BookModel> books;

  FreeBooksSuccessState({required this.books});


}
class FreeBooksErrorState extends  FreeBooksState{
  final String errorMessage;

  FreeBooksErrorState({required this.errorMessage});


}