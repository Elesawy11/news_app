import 'package:flutter/material.dart';
import '../widgets/category_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            text: 'News',
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: 'Cloud',
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
      ),
      body: const CategoryListView(),
    );
  }
}
