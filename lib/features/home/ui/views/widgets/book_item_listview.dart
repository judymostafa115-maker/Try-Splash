import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/features/home/manager/all_books_cubit/all_books_cubit.dart';
import 'package:trysplash/features/home/manager/all_books_cubit/all_books_state.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_item.dart';
class BookItemListview extends StatelessWidget {
   BookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubit,AllBooksState>(
        builder: (context,state) {
      if(state is AllBooksSuccessState){
        return SizedBox(

        height: 224,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return BookItem(bookModel: state.books[index],imageWidth: 150,);
            },
            itemCount: state.books.length,
          ),
        );
      }
      else if(state is AllBooksErrorState){
        return Text("Error${state.errorMessage}");
      }
        return Center(child: CircularProgressIndicator());
    }
    );
  }//
}
