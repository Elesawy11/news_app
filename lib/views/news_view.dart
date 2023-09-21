import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_tile_form.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 50,
        ),
        child: NewsTileForm(
          articalModel: articalModel,
          titleOverflow: TextOverflow.visible,
          subTitleOverflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
