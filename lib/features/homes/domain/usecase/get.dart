


import 'package:dartz/dartz.dart';

import '../../../../core/const/usecase.dart';
import '../entity/home.dart';
import '../repository/home_repo.dart';

class GetPostsUseCase
    implements UseCase<Either<ErrorModel, List<PostEntity>>, void> {
  final PostRepository _postRepository;

  GetPostsUseCase({required PostRepository postRepository})
      : _postRepository = postRepository;
  @override
  Future<Either<ErrorModel, List<PostEntity>>> call({void params}) {
    return _postRepository.getPosts.call();
  }
}
