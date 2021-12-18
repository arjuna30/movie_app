part of 'movie_list_bloc.dart';

@immutable
abstract class MovieListEvent {}

class GetMovieListByGenre extends MovieListEvent {
  final int genreId;
  final int page;

  GetMovieListByGenre(this.genreId, this.page);
}

class LoadMoreMovieListByGenre extends MovieListEvent {
  final int genreId;
  final int page;
  final List<Movie> movies;

  LoadMoreMovieListByGenre(this.genreId, this.page, this.movies);
}
