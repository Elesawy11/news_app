import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

import 'news_tile.dart';

class NewsSliverList extends StatelessWidget {
  const NewsSliverList({
    super.key,
    required this.articals,
  });
  final List<ArticalModel> articals;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            articalModel: articals[index],
          );
        },
        childCount: articals.length,
      ),
    );
  }
}
