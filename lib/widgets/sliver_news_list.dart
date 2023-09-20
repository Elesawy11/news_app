import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsSliverList extends StatelessWidget {
  const NewsSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const NewsTile();
        },
        childCount: 5,
      ),
    );
  }
}
