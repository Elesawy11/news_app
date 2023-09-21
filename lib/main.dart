import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/category_cubit/category_cubit.dart';
import 'package:news_app/simple_bloc_observer.dart';

import 'cubits/news_cubit/news_cubit.dart';
import 'views/home_view.dart';

void main(List<String> args) {
  Bloc.observer = SimpleBlocObserver();
  return runApp(BlocProvider(
    create: (context) => NewsCubit(),
    child: const NewsApp(),
  ));
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NewsCubit>(context).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => CategoryCubit(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
