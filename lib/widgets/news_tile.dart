import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

import 'news_tile_form.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articalModel,
  });
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: NewsTileForm(
        articalModel: articalModel,
      ),
    );
  }
}
