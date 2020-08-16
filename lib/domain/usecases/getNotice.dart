import 'package:dashboard_app/core/error/failure.dart';
import 'package:dashboard_app/core/usecase/usecase.dart';
import 'package:dashboard_app/domain/entities/notice.dart';
import 'package:dashboard_app/domain/repositories/notice_repository.dart';
import 'package:dartz/dartz.dart';

class GetNotice implements UseCase<List<Notice>, NoParams> {
  final NoticeRepository repository;

  GetNotice(this.repository);

  @override
  Future<Either<Failure, List<Notice>>> call(NoParams noParams) {
    return repository.getNotice();
  }
}
