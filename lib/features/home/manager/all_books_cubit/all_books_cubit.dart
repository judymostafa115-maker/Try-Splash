import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/features/home/data/repo/home_repo.dart';
import 'package:trysplash/features/home/manager/all_books_cubit/all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState>{
  final HomeRepo homeRepo;
  AllBooksCubit(this.homeRepo):super(AllBooksInitialState());
  getAllBooks()async{
 emit(AllBooksLoadingState());
 var result =await homeRepo.fetchAllBooks();
 result.fold((error){
   emit(AllBooksErrorState(errorMessage: error));
 }, (books){
   emit(AllBooksSuccessState(books: books));
 });
  }

}