import 'package:flutter/material.dart';
import 'package:trysplash/core/resources/app_styles.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_details_listview.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_item_listview.dart';

import '../../../data/model/book_model.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 162,
                    height: 243,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child:  Image.network(bookModel.volumeInfo?.imageLinks?.thumbnail ?? "",
                        fit: BoxFit.cover,
                      ),)
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(bookModel.volumeInfo!.title??"",style: AppStyles.text30,
                       maxLines: 2,
                        overflow: TextOverflow.ellipsis,),
                      Text(bookModel.volumeInfo!.authors.toString(),style: AppStyles.text18,),
                      SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,
                            color: Colors.amber,size: 20,),
                          SizedBox(width: 3,),
                          Text("${bookModel.volumeInfo?.averageRating?? '0.0'}",style: AppStyles.text16,),
                          SizedBox(width: 5,),
                          Text('(${bookModel.volumeInfo?.ratingsCount??'0'})',style: AppStyles.text14,)
                        ],
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(


                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                        ),),

                            child: Text('${bookModel.saleInfo?.retailPrice?.amount?.toInt()??"0.0"}'
                                '${bookModel.saleInfo?.retailPrice?.currencyCode??''}',style: AppStyles.text16b,),
                          ),
                          Container(

                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF8766),
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Free preview',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),

              ],
            ),
          ),

        ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                    child: Text("You Can Also Like",style: AppStyles.text14,)),

                ),
             //BookItemListview(),
                BookDetailsListview()

             ] )
        )));


  }
}
