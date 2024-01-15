import 'package:get_it/get_it.dart';

import 'package:dio/dio.dart';
import 'package:learningdart/features/auth/data/data_sources/remote/news_api_service.dart';

import 'package:learningdart/features/auth/data/repository/article_repository_impl.dart';
import 'package:learningdart/features/auth/domain/repository/article_repository.dart';
import 'package:learningdart/features/auth/domain/usecases/get_article.dart';
import 'package:learningdart/features/auth/presentation/bloc/article/remote/remote_article_bloc.dart';
final sl = GetIt.instance;

Future<void> initializeDependencies() async {
    // Dio
    sl.registerSingleton<Dio>(Dio());

    // Dependencies
    sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

    sl.registerSingleton<ArticleRepository>(
        ArticleRepositoryImpl(sl())
    );
    
    //UseCases
    sl.registerSingleton<GetArticleUseCase>(
        GetArticleUseCase(sl())
    );

    //Blocs
    sl.registerFactory<RemoteArticlesBloc>(
        ()=> RemoteArticlesBloc(sl())
    );
}
