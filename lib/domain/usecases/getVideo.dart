import 'package:dashboard_app/core/error/failure.dart';
import 'package:dashboard_app/core/usecase/usecase.dart';
import 'package:dashboard_app/domain/entities/video.dart';
import 'package:dashboard_app/domain/repositories/video_repository.dart';
import 'package:dartz/dartz.dart';

class GetVideo implements UseCase<List<Video>, NoParams> {
  final VideoRepository repository;

  const GetVideo(this.repository);

  @override
  Future<Either<Failure, List<Video>>> call(NoParams noParams) {
    return repository.getVideo();
  }
}
