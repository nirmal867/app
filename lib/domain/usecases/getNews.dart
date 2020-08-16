import 'package:dashboard_app/core/error/failure.dart';
import 'package:dashboard_app/core/usecase/usecase.dart';
import 'package:dashboard_app/domain/entities/news.dart';
import 'package:dashboard_app/domain/repositories/news_repository.dart';
import 'package:dartz/dartz.dart';

class GetNews implements UseCase<List<News>, NoParams> {
  final NewsRepository repository;

  GetNews(this.repository);

  @override
  Future<Either<Failure, List<News>>> call(NoParams noParams) {
    return repository.getNews();
  }
}
