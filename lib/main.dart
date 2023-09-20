import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main(List<String> args) {
  return runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
