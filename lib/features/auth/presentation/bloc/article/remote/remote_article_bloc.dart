import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningdart/core/resources/data_state.dart';
import 'package:learningdart/features/auth/domain/usecases/get_article.dart';
import 'package:learningdart/features/auth/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:learningdart/features/auth/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticlesBloc
    extends Bloc<RemoteArticlesEvent, RemoteArticlesState> {
    final GetArticleUseCase _getArticleUseCase;

    RemoteArticlesBloc(this._getArticleUseCase)
        : super(const RemoteArticlesLoading()) {
        on<GetArticles>(onGetArticles);
    }

  void onGetArticles(
      GetArticles event, Emitter<RemoteArticlesState> emit) async {
    final dataState = await _getArticleUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteArticlesDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RemoteArticlesError(dataState.error!));
    }
  }
}