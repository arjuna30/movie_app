import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_app/src/model/review.dart';
import 'package:movie_app/src/repository/movie_repository.dart';

part 'review_event.dart';
part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  static ReviewBloc create(BuildContext context) => ReviewBloc._(Modular.get());
  final MovieRepository _movieRepository;

  ReviewBloc._(this._movieRepository) : super(ReviewInitial()) {
    on<GetReview>(_getReview);
    on<LoadMoreReview>(_loadMoreReview);
  }

  Future<void> _getReview(GetReview event, Emitter emit) async {
    try {
      final movieId = event.movieId;
      emit(LoadingReview());
      final reviews = await _movieRepository.getReviews(movieId);
      emit(SuccessReview(reviews));
    } catch (_) {
      emit(ErrorReview());
    }
  }

  Future<void> _loadMoreReview(LoadMoreReview event, Emitter emit) async {
    try {
      final movieId = event.movieId;
      final page = event.page;
      final reviews = event.reviews;
      final newReviews = await _movieRepository.loadMoreReview(movieId, page,
          reviews: reviews);
      emit(SuccessReview(newReviews));
    } catch (_) {
      emit(ErrorReview());
    }
  }
}
