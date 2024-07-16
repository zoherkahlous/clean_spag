

import 'package:dartz/dartz.dart';

import '../../data/models/home.dart';
import '../entity/home.dart';

abstract class PostRepository {
  Future<Either<ErrorModel, List<PostModel>>> getPosts();
}
