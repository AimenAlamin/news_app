import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

import 'package:news_app/widgets/news_page.dart';

class ListViewNews extends StatelessWidget {
  const ListViewNews({super.key, required this.articleList});

  final List<NewsModel> articleList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articleList.length,
        (context, index) {
          return NewsPage(
            newsModel: articleList[index],
          );
        },
      ),
    );
  }
}
