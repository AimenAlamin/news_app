import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/view/category_view.dart';
import 'package:news_app/widgets/category_card.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetUrl: "assests/images/science.jpg", imageTitle: 'Science'),
    CategoryModel(
        imageAssetUrl: "assests/images/health2.jpg", imageTitle: 'Health'),
    CategoryModel(
        imageAssetUrl: "assests/images/technology.jpg",
        imageTitle: 'Technology'),
    CategoryModel(
        imageAssetUrl: "assests/images/sports.jpg", imageTitle: 'Sports')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CategoryView(
                        categoryName: categories[index].imageTitle);
                  },
                ),
              );
            },
            child: CategoryCard(
              img: categories[index].imageAssetUrl,
              txt: categories[index].imageTitle,
            ),
          );
        },
      ),

      // child: CustomScrollView(
      //   slivers: [
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         childCount: categories.length,
      //         (context, index)
      //          {

      //       },),

      //     ),
      //   ],
      // ),
    );
  }
}
