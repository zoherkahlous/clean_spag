
import 'package:clean_spag/features/homes/domain/entity/home.dart';

sealed class PostState {}

final class PostInitial extends PostState {}

final class PostLoading extends PostState {}

final class PostSuccess extends PostState {
final List<PostEntity> posts;

PostSuccess({required this.posts});
}

final class PostError extends PostState {
final String errorMessage;

PostError({required this.errorMessage});
}
