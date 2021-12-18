part of 'review_bloc.dart';

@immutable
abstract class ReviewState {}

class ReviewInitial extends ReviewState {}

class LoadingReview extends ReviewState {}

class SuccessReview extends ReviewState {
  final List<Review> reviews;

  SuccessReview(this.reviews);
}

class ErrorReview extends ReviewState {}
