import 'package:dashboard_app/core/error/failure.dart';
import 'package:dashboard_app/core/usecase/usecase.dart';
import 'package:dashboard_app/domain/entities/office.dart';
import 'package:dashboard_app/domain/repositories/office_repository.dart';
import 'package:dartz/dartz.dart';

class GetOffice implements UseCase<Office, NoParams> {
  final OfficeRepository repository;

  GetOffice(this.repository);

  @override
  Future<Either<Failure, Office>> call(NoParams noParams) {
    return repository.getOffice();
  }
}
