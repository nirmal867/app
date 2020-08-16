import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../core/usecase/usecase.dart';
import '../entities/notice.dart';
import '../repositories/dashboard_repository.dart';

class GetNotice implements UseCase<List<Notice>, NoParams> {
  final DashboardRepository repository;

  GetNotice(this.repository);

  @override
  Future<Either<Failure, List<Notice>>> call(NoParams noParams) {
    return repository.getNotice();
  }
}
