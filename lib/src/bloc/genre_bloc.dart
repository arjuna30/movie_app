import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_app/src/model/genre.dart';
import 'package:movie_app/src/repository/movie_repository.dart';

part 'genre_event.dart';
part 'genre_state.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final MovieRepository _movieRepository;

  static GenreBloc create(BuildContext context) =>
      GenreBloc._(Modular.get())..add(GetGenreEvent());

  GenreBloc._(this._movieRepository) : super(GenreInitial()) {
    on<GetGenreEvent>(_getGenre);
  }

  Future<void> _getGenre(GetGenreEvent event, Emitter emit) async {
    try {
      emit(LoadingGenreState());
      final genres = await _movieRepository.getGenre();
      emit(SuccessGenreState(genres));
    } catch (e) {
      emit(ErrorGenreState());
    }
  }
}
