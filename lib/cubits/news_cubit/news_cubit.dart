import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

 void getNews() async {
    emit(NewsLoading());

    try {
      List<ArticalModel> articals = await NewsServices().getNews(category: 'general');
      emit(NewsSuccess(articalList: articals));
    } on Exception catch (e) {
      emit(NewsFailure(e.toString()));
    }
  }
}
