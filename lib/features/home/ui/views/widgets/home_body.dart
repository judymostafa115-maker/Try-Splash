import 'package:flutter/material.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_category.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_item.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_item_listview.dart';
import 'package:trysplash/features/home/ui/views/widgets/bookcategory_listview.dart';
import 'package:trysplash/features/home/ui/views/widgets/custom_appbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             CustomAppbar(),

             //BookItemListview()
             BookcategoryListview()







           ],
         );

  }
}
