import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/office.dart';

abstract class OfficeRepository {
  Future<Either<Failure, Office>> getOffice();
}
