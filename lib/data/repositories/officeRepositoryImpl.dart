import 'package:dartz/dartz.dart';
import 'package:dashboard_app/core/error/failure.dart';
import 'package:dashboard_app/data/data_sources/office_remote_data_source.dart';
import 'package:dashboard_app/domain/entities/office.dart';
import 'package:dashboard_app/domain/repositories/office_repository.dart';

class OfficeRepositoryImp extends OfficeRepository {
  final OfficeRemoteDataSource remoteDataSource;

  OfficeRepositoryImp(this.remoteDataSource);
  @override
  Future<Either<Failure, Office>> getOffice() async {
    final officeModel = await remoteDataSource.getOffice();
    return Right(officeModel);
  }
}
