import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize
              .min, //tells the row/column to respect size/alignment given to you
          children: [
            Text(
              categoryName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 97, 17, 140),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "News",
              style: TextStyle(
                  color: Color.fromARGB(255, 5, 65, 99),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            ListNewsBuilder(
              displayCategoryName: categoryName,
            ),
          ],
        ),
      ),
    );
  }
}
