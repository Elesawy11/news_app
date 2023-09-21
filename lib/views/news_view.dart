import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_tile_form.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsTileForm(articalModel: articalModel),
    );
  }
}
