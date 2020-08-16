import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/employee.dart';

abstract class EmployeeRepository {
  Future<Either<Failure, List<Employee>>> getEmployee();
}
