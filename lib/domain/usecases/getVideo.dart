import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../core/usecase/usecase.dart';
import '../entities/video.dart';
import '../repositories/dashboard_repository.dart';

class GetVideo implements UseCase<List<Video>, NoParams> {
  final DashboardRepository repository;

  const GetVideo(this.repository);

  @override
  Future<Either<Failure, List<Video>>> call(NoParams noParams) {
    return repository.getVideo();
  }
}
