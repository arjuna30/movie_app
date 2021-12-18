part of 'movie_detail_bloc.dart';

@immutable
abstract class MovieDetailEvent {}

class GetMovieDetail extends MovieDetailEvent {
  final int movieId;

  GetMovieDetail(this.movieId);
}

// class LoadMoreReview extends MovieDetailEvent {
//   final int page;
//   final MovieDetail movieDetail;
//   final List<Video> videos;
//   final List<Review> reviews;
//
//   LoadMoreReview(this.page, this.movieDetail, this.videos, this.reviews);
// }
