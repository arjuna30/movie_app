part of 'review_bloc.dart';

@immutable
abstract class ReviewEvent {}

class GetReview extends ReviewEvent {
  final int movieId;

  GetReview(this.movieId);
}

class LoadMoreReview extends ReviewEvent {
  final int movieId;
  final int page;
  final List<Review> reviews;

  LoadMoreReview(this.movieId, this.page, this.reviews);
}
