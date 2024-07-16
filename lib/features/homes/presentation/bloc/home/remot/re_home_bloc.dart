


import 'package:clean_spag/features/homes/presentation/bloc/home/remot/re_home_event.dart';
import 'package:clean_spag/features/homes/presentation/bloc/home/remot/re_home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecase/get.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final GetPostsUseCase _getPostsUseCase;

  PostBloc(this._getPostsUseCase) : super(PostInitial()) {
    on<GetPosts>(
          (event, emit) async {
        final result = await _getPostsUseCase.call();

        result.fold((error) {
          emit(PostError(errorMessage: error.errorMessage));
        }, (posts) {
          emit(
            PostSuccess(
              posts: posts,
            ),
          );
        });
      },
    );
  }
}