import 'package:flutter/material.dart';
import 'package:trysplash/core/resources/app_styles.dart';
import 'package:trysplash/features/home/ui/views/widgets/book_item_listview.dart';
import 'package:trysplash/features/home/ui/views/widgets/bookcategory_listview.dart';
import 'package:trysplash/features/home/ui/views/widgets/custom_appbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
     return  CustomScrollView(
       slivers: [

         SliverToBoxAdapter(
           child: CustomAppbar(),
         ),


         SliverToBoxAdapter(
           child: SizedBox(
             height: 220,
             child: BookItemListview(),
           ),
         ),


         SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               "Best Seller",
               style: AppStyles.text22,
             ),
           ),
         ),


         BookcategoryListview(),
       ],
     );
  }
}
