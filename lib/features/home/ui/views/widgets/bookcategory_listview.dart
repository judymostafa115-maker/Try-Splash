import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/features/home/manager/free_books_cubit/free_books_cubit.dart';
import 'package:trysplash/features/home/manager/free_books_cubit/free_books_state.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_category.dart';
class BookcategoryListview extends StatelessWidget {
  const BookcategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FreeBooksCubit,FreeBooksState>(
        builder: (context,state){
          if(state is FreeBooksSuccessState){
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return BookCategory(bookModel:state.books[index]);
                },
                itemCount: 5
              ),
            );
          }else if(state is FreeBooksErrorState){
            return  Text("Error${state.errorMessage}");
          }
          return Center(child: CircularProgressIndicator());

        });
  }
}



