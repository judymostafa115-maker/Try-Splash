import 'package:flutter/material.dart';
import 'package:trysplash/features/home/data/model/book_model.dart';
class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
        width:120 ,
        height: 224,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(bookModel.volumeInfo!.imageLinks!.smallThumbnail??"https://images.pexels.com/photos/34123180/pexels-photo-34123180.jpeg")))
    );
  }
}
