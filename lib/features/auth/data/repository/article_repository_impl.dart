import 'package:learningdart/core/resources/data_state.dart';
import 'package:learningdart/features/auth/data/models/article.dart';
import 'package:learningdart/features/auth/domain/entities/article.dart';
import 'package:learningdart/features/auth/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
    @override
    Future<DataState<List<ArticleModel>>> getNewsArticles() {
        // TODO: implement getNewsArticles
        throw UnimplementedError();
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
