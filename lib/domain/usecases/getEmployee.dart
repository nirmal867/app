import 'package:dashboard_app/core/error/failure.dart';
import 'package:dashboard_app/core/usecase/usecase.dart';
import 'package:dashboard_app/domain/entities/employee.dart';
import 'package:dashboard_app/domain/repositories/employee_repository.dart';
import 'package:dartz/dartz.dart';

class GetEmployee implements UseCase<List<Employee>, NoParams> {
  final EmployeeRepository repository;

  const GetEmployee(this.repository);

  @override
  Future<Either<Failure, List<Employee>>> call(NoParams noParams) {
    return repository.getEmployee();
  }
}
