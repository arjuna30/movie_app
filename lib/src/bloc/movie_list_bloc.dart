import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/src/model/movie.dart';
import 'package:movie_app/src/repository/movie_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'movie_list_event.dart';
part 'movie_list_state.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  static MovieListBloc create(BuildContext context) =>
      MovieListBloc._(Modular.get());
  final MovieRepository _movieRepository;

  MovieListBloc._(this._movieRepository) : super(MovieListInitial()) {
    on<GetMovieListByGenre>(_movieByGenre);
  }

  Future<void> _movieByGenre(GetMovieListByGenre event, Emitter emit) async {
    try {
      final genreId = event.genreId;
      final page = event.page;
      emit(LoadingMovieListState());
      final movies = await _movieRepository.getMovieByGenre(genreId, page);
      emit(SuccessMovieListState(movies));
    } catch (_) {
      emit(ErrorMovieListState());
    }
  }
}
