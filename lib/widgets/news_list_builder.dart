import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

import 'package:news_app/services/news_service.dart';
import 'package:news_app/view/listview_news.dart';

class ListNewsBuilder extends StatefulWidget {
  const ListNewsBuilder({super.key, required this.displayCategoryName});
  final String displayCategoryName;

  @override
  State<ListNewsBuilder> createState() => _ListNewsBuilderState();
}

class _ListNewsBuilderState extends State<ListNewsBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future =
        NewsService(Dio()).getGeneralNews(category: widget.displayCategoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListViewNews(articleList: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
              child: Text("oops there is error. try later"));
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator.adaptive()));
        }
      },
    );
  }
}
  //Without the FutureBuilder. I had a statefulWidget and wrote all these
  //List<NewsModel> articleListBuilder = [];
  // bool isLoading = true;
  // @override
  // void initState() {
  //   super.initState();
  //   getTheNews();
  // }

  // Future<void> getTheNews() async {
  //   await Future.delayed(const Duration(seconds: 10));
  //   articleListBuilder = await NewsService(Dio()).getGeneralNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return isLoading
  //       ? const SliverToBoxAdapter(
  //           child: Center(child: CircularProgressIndicator.adaptive()))
  //       : articleList.isNotEmpty? ListViewNews(
  //           articleList: articleListBuilder,
  //        :SliverToBoxAdapter(
  //           child: Center(Text:"oops there is error. try later")
  //         );
  // }
