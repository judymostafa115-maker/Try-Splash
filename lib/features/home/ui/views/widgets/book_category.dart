import 'package:flutter/material.dart';
import 'package:trysplash/core/resources/app_styles.dart';
import 'package:trysplash/features/home/data/model/book_model.dart';
import 'package:trysplash/features/home/ui/views/book_details_screen.dart';
class BookCategory extends StatelessWidget {
 BookCategory({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetailsScreen(bookModel: bookModel,)));
      },
      child: Container(
       padding: EdgeInsets.all(10),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                child: Image.network(bookModel.volumeInfo!.imageLinks!.thumbnail??"https://images.pexels.com/photos/34123180/pexels-photo-34123180.jpeg"

                  ,width: 70,height:105 ,fit: BoxFit.cover,)
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bookModel.volumeInfo!.title??"",style: AppStyles.text20,
                  maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                  ),


                  SizedBox(height:  12,),
                  Text(bookModel.volumeInfo!.authors != null && bookModel.volumeInfo!.authors!.isNotEmpty
                      ? bookModel.volumeInfo!.authors![0]
                      : ""),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${bookModel.saleInfo?.listPrice?.amount ?? '0.0 EGP'} ${bookModel.saleInfo?.listPrice?.currencyCode ?? ''}"),
                      Text(  bookModel.volumeInfo!.averageRating != null
                          ? "⭐ ${bookModel.volumeInfo!.averageRating}"
                          : "No Rating",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
