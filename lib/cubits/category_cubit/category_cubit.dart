import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/artical_model.dart';
import '../../services/news_services.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  void getCategoryNews({required String category}) async {
    emit(CategoryLoading());

    try {
      List<ArticalModel> articals =
          await NewsServices().getNews(category: category);
      emit(CategorySuccess(articalList: articals));
    } on Exception catch (e) {
      emit(CategoryFailure(e.toString()));
    }
  }
}
