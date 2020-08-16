import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../core/usecase/usecase.dart';
import '../entities/office.dart';
import '../repositories/dashboard_repository.dart';

class GetOffice implements UseCase<Office, NoParams> {
  final DashboardRepository repository;

  GetOffice(this.repository);

  @override
  Future<Either<Failure, Office>> call(NoParams noParams) {
    return repository.getOffice();
  }
}
