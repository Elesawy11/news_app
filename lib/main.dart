import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/cubit/news_cubit.dart';
import 'package:news_app/simple_bloc_observer.dart';

import 'views/home_view.dart';

void main(List<String> args) {
  Bloc.observer = SimpleBlocObserver();
  return runApp(BlocProvider(
    create: (context) => NewsCubit(),
    child: const NewsApp(),
  ));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewsCubit>(context).getNews();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
