import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/features/home/data/repo/home_repo.dart';
import 'package:trysplash/features/home/manager/free_books_cubit/free_books_state.dart';

class FreeBooksCubit extends Cubit<FreeBooksState>{
  final HomeRepo homeRepo;
  FreeBooksCubit(this.homeRepo):super(FreeBooksInitialState());
  getFreeBooks()async{
    emit(FreeBooksLoadingState());
    var result =await homeRepo.fetchAllBooks();
    result.fold((error){
      emit(FreeBooksErrorState(errorMessage: error));
    }, (books){
      emit(FreeBooksSuccessState(books: books));
    });
  }

}