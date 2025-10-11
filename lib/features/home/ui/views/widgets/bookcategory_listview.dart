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
           return SliverList(
             delegate: SliverChildBuilderDelegate(
                 (context, index) {
               return BookCategory(bookModel: state.books[index]);
             },
             childCount: state.books.length,
           ),
           );
          }else if(state is FreeBooksErrorState){
            return  SliverToBoxAdapter(child: Text("Error${state.errorMessage}"));
          }
          return SliverToBoxAdapter(child:Center(child: CircularProgressIndicator()));

        });
  }
}



