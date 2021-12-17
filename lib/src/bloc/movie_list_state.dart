part of 'movie_list_bloc.dart';

@immutable
abstract class MovieListState {}

class MovieListInitial extends MovieListState {}

class LoadingMovieListState extends MovieListState {}

class SuccessMovieListState extends MovieListState {
  final List<Movie> movies;

  SuccessMovieListState(this.movies);
}

class ErrorMovieListState extends MovieListState {}
