import 'package:learningdart/core/resources/data_state.dart';
// import 'package:learningdart/features/auth/data/data_sources/remote/news_api_service.dart';
import '../data_sources/remote/news_api_service.dart';
import 'package:learningdart/features/auth/data/models/article.dart';
import 'package:learningdart/features/auth/domain/entities/article.dart';
import 'package:learningdart/features/auth/domain/repository/article_repository.dart';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:learningdart/core/constants/constants.dart';

class ArticleRepositoryImpl implements ArticleRepository {
    final NewsApiService _newsApiService;
    ArticleRepositoryImpl(this._newsApiService);
    @override
    Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
        final httpResponse = await _newsApiService.getNewsArticles(
            apiKey: newsAPIKey,
            country: countryQuery,
            category: categoryQuery,
        );

        if (httpResponse.response.statusCode == HttpStatus.ok) {
            return DataSuccess(httpResponse.data);
        } else {
            return DataFailed(DioException(
                error: httpResponse.response.statusMessage,
                response: httpResponse.response,
                type: DioExceptionType.badResponse,
                requestOptions: httpResponse.response.requestOptions));
        }
        } on DioException catch (e) {
            return DataFailed(e);
        }
    }

    @override
    Future<List<ArticleEntity>> getSavedArticles() {
        // TODO: implement getSavedArticles
        throw UnimplementedError();
    }

    @override
    Future<void> removeArticle(ArticleEntity article) {
        // TODO: implement removeArticle
        throw UnimplementedError();
    }

    @override
    Future<void> saveArticle(ArticleEntity article) {
        // TODO: implement saveArticle
        throw UnimplementedError();
    }
}
