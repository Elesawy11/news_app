part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

final class NewsInitial extends NewsState {}
final class NewsLoading extends NewsState {}
final class NewsSuccess extends NewsState {
  final List<ArticalModel>articalList;

  NewsSuccess({required this.articalList});
}
final class NewsFailure extends NewsState {
  final String errMessage;

  NewsFailure(this.errMessage);
}
