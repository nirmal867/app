import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../core/usecase/usecase.dart';
import '../entities/news.dart';
import '../repositories/dashboard_repository.dart';

class GetNews implements UseCase<List<News>, NoParams> {
  final DashboardRepository repository;

  GetNews(this.repository);

  @override
  Future<Either<Failure, List<News>>> call(NoParams noParams) {
    return repository.getNews();
  }
}
