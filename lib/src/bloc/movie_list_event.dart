part of 'movie_list_bloc.dart';

@immutable
abstract class MovieListEvent {}

class GetMovieListByGenre extends MovieListEvent {
  final int genreId;
  final int page;

  GetMovieListByGenre(this.genreId, this.page);
}
