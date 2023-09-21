import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/category_cubit/category_cubit.dart';
import 'package:news_app/widgets/sliver_news_list.dart';

import '../cubits/news_cubit/news_cubit.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategoryLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CategoryFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else if (state is CategorySuccess) {
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: CustomScrollView(
                slivers: [
                  NewsSliverList(
                    articals: state.articalList,
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text(
                'There is an error',
              ),
            );
          }
        },
      ),
    );
  }
}
