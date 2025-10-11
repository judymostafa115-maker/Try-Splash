import 'package:flutter/material.dart';
import 'package:trysplash/features/home/data/model/book_model.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_details_body.dart';
class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: BookDetailsBody(bookModel: bookModel,),

        )
    );
  }
}
