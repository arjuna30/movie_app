part of 'movie_detail_bloc.dart';

@immutable
abstract class MovieDetailEvent {}

class GetMovieDetail extends MovieDetailEvent {
  final int movieId;

  GetMovieDetail(this.movieId);
}
