part of 'movie_detail_bloc.dart';

@immutable
abstract class MovieDetailState {}

class MovieDetailInitial extends MovieDetailState {}

class LoadingMovieDetail extends MovieDetailState {}

class SuccessMovieDetail extends MovieDetailState {
  final MovieDetail movieDetail;
  final List<Video> videos;
  // final List<Review> reviews;

  SuccessMovieDetail(this.movieDetail, this.videos);
}

class ErrorMovieDetail extends MovieDetailState {}
