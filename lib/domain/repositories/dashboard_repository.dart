import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/employee.dart';
import '../entities/news.dart';
import '../entities/notice.dart';
import '../entities/office.dart';
import '../entities/video.dart';

abstract class DashboardRepository {
  Future<Either<Failure, Office>> getOffice();
  Future<Either<Failure, List<Employee>>> getEmployee();
  Future<Either<Failure, List<News>>> getNews();
  Future<Either<Failure, List<Notice>>> getNotice();
  Future<Either<Failure, List<Video>>> getVideo();
}
