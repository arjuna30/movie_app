import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/src/model/movie.dart';
import 'package:movie_app/src/model/review.dart';
import 'package:movie_app/src/model/video.dart';
import 'package:movie_app/src/repository/movie_repository.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  static MovieDetailBloc create(BuildContext context) =>
      MovieDetailBloc._(Modular.get());
  final MovieRepository _movieRepository;

  MovieDetailBloc._(this._movieRepository) : super(MovieDetailInitial()) {
    on<GetMovieDetail>(_getMovieDetail);
  }

  Future<void> _getMovieDetail(GetMovieDetail event, Emitter emit) async {
    try {
      final movieId = event.movieId;
      emit(LoadingMovieDetail());
      final movieDetail = await _movieRepository.getMovieDetail(movieId);
      final videoTrailers = await _movieRepository.getVideoTrailer(movieId);
      final reviews = await _movieRepository.getReviews(movieId);
      emit(SuccessMovieDetail(movieDetail, videoTrailers, reviews));
    } catch (_) {
      emit(ErrorMovieDetail());
    }
  }
}
