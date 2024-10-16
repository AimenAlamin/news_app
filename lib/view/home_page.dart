import 'package:flutter/material.dart';
import 'package:news_app/view/listview_category.dart';
//import 'package:news_app/view/listview_news.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         const ListNewsBuilder();
        //       },
        //       icon: const Icon(Icons.refresh))
        // ],
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize
              .min, //tells the row/column to respect size/alignment given to you
          children: [
            Text(
              "News",
              style: TextStyle(
                  color: Color.fromARGB(255, 97, 17, 140),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                  color: Color.fromARGB(255, 5, 65, 99),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListViewCategory(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            ListNewsBuilder(
                displayCategoryName:
                    "top"), //It's already sliver no need for boxAdapter
          ],
        ),

        // child: const Column(
        //   children: [
        //     ListViewCategory(),
        //     SizedBox(
        //       height: 40,
        //     ),
        //     ListViewNews(),
        //   ],
        // ),
      ),
    );
  }
}
