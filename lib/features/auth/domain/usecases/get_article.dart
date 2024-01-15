import 'package:learningdart/core/resources/data_state.dart';
import 'package:learningdart/core/usecase/usecase.dart';
import 'package:learningdart/features/auth/domain/entities/article.dart';
import 'package:learningdart/features/auth/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
    final ArticleRepository _articleRepository;

    GetArticleUseCase(this._articleRepository);

    @override
    Future<DataState<List<ArticleEntity>>> call({void params}) {
      return _articleRepository.getNewsArticles();
    }
}
