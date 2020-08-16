import 'package:dartz/dartz.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/entities/employee.dart';
import '../../domain/entities/news.dart';
import '../../domain/entities/notice.dart';
import '../../domain/entities/office.dart';
import '../../domain/entities/video.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../data_sources/dashboard_remote_data_source.dart';

class DashboardRepositoryImpl extends DashboardRepository {
  final DashboardRemoteDataSource remoteDataSource;

  DashboardRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, Office>> getOffice() async {
    try {
      final officeModel = await remoteDataSource.getOffice();
      return Right(officeModel);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Employee>>> getEmployee() {
    // TODO: implement getEmployee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<News>>> getNews() {
    // TODO: implement getNews
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Notice>>> getNotice() {
    // TODO: implement getNotice
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Video>>> getVideo() {
    // TODO: implement getVideo
    throw UnimplementedError();
  }
}
