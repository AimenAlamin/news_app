import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: newsModel.newsImg != null
              ? Image.network(
                  newsModel.newsImg!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  "assests/images/errorImgg.jpg",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          newsModel.newsTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Color.fromARGB(221, 221, 19, 19),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          newsModel.newsSubTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
              color: Color.fromARGB(255, 105, 100, 100), fontSize: 18),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
