import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/notice.dart';

abstract class NoticeRepository {
  Future<Either<Failure, List<Notice>>> getNotice();
}
