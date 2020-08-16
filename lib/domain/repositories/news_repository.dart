import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/news.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<News>>> getNews();
}
