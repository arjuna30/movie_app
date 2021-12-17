part of 'genre_bloc.dart';

@immutable
abstract class GenreState {}

class GenreInitial extends GenreState {}

class LoadingGenreState extends GenreState {}

class SuccessGenreState extends GenreState {
  final List<Genre> genres;

  SuccessGenreState(this.genres);
}

class ErrorGenreState extends GenreState {}
