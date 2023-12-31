import 'package:flutter/material.dart';

import '../models/artical_model.dart';

class NewsTileForm extends StatelessWidget {
  const NewsTileForm({
    super.key,
    required this.articalModel,
    this.titleOverflow = TextOverflow.ellipsis,
    this.subTitleOverflow = TextOverflow.ellipsis,
  });

  final ArticalModel articalModel;
  final TextOverflow? titleOverflow;
  final TextOverflow? subTitleOverflow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: articalModel.image != null
                  ? Image.network(
                      articalModel.image!,
                      fit: BoxFit.fill,
                      height: 200,
                    )
                  : const Center(
                      child: Text(''),
                    ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articalModel.title,
              maxLines: 2,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                overflow: titleOverflow,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articalModel.description ?? '',
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                overflow: subTitleOverflow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
