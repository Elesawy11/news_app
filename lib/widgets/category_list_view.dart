import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_form.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categoryList = const [
    CategoryModel(
      categoryName: 'Business',
      image: 'assets/images/work.jpeg',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      image: 'assets/images/entertaiment.avif',
    ),
    CategoryModel(
      categoryName: 'Health',
      image: 'assets/images/health.avif',
    ),
    CategoryModel(
      categoryName: 'Science',
      image: 'assets/images/science.avif',
    ),
    CategoryModel(
      categoryName: 'General',
      image: 'assets/images/_110076497_untitleddesign-1.png',
    ),
    CategoryModel(
      categoryName: 'Sports',
      image: 'assets/images/Fundraising-Ideas-for-High-School-Sports.webp',
    ),
    CategoryModel(
      categoryName: 'Technology',
      image: 'assets/images/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryForm(
            categoryModel: categoryList[index],
          );
        },
      ),
    );
  }
}
