import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryForm extends StatelessWidget {
  const CategoryForm({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(categoryModel.image),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 120,
      width: 200,
      child: Center(
        child: Text(
          categoryModel.categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
