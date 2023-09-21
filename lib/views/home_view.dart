import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/cubit/news_cubit.dart';
import '../widgets/category_list_view.dart';
import '../widgets/sliver_news_list.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            
            if (state is NewsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is NewsFailure) {
              return Center(
                child: Text(state.errMessage),
              );
            } else if (state is NewsSuccess) {
              return CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  const SliverToBoxAdapter(
                    child: CategoryListView(),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 24),
                  ),
                  NewsSliverList(
                    articals: state.articalList,
                  )
                ],
              );
            } else {
              return const Center(
                child: Text('There is an error'),
              );
            }
          },
        ),
      ),
    );
  }
}
