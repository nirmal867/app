import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../core/usecase/usecase.dart';
import '../entities/employee.dart';
import '../repositories/dashboard_repository.dart';

class GetEmployee implements UseCase<List<Employee>, NoParams> {
  final DashboardRepository repository;

  const GetEmployee(this.repository);

  @override
  Future<Either<Failure, List<Employee>>> call(NoParams noParams) {
    return repository.getEmployee();
  }
}
