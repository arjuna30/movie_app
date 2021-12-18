import 'dart:convert';

import 'package:movie_app/src/model/genre.dart';
import 'package:movie_app/src/model/movie.dart';
import 'package:movie_app/src/model/review.dart';
import 'package:movie_app/src/model/video.dart';
import 'package:movie_app/src/repository/network/movie_network.dart';

class MovieRepository {
  final MovieNetwork _movieNetwork;

  MovieRepository(this._movieNetwork);

  Future<MovieDetail> getMovieDetail(int movieId) async {
    final response = await _movieNetwork.getMovieDetail(movieId);
    final body = jsonDecode(response.body);
    return MovieDetail.fromJson(body);
  }

  Future<List<Genre>> getGenre() async {
    final response = await _movieNetwork.getGenre();
    final body = jsonDecode(response.body);
    final genres = Genres.fromJson(body);
    return genres.genres;
  }

  Future<List<Movie>> getMovieByGenre(int genreId, int page) async {
    final movies = <Movie>[];
    final response = await _movieNetwork.getMoviesByGenre(genreId, page);
    final body = jsonDecode(response.body);
    final movieResponse = body['results'];
    for (final movieRespond in movieResponse) {
      final movie = Movie.fromJson(movieRespond);
      movies.add(movie);
    }
    return movies;
  }

  Future<List<Movie>> loadMoreMovieByGenre(
    int genreId,
    int page, {
    required List<Movie> movies,
  }) async {
    if (page <= 500) {
      final response = await _movieNetwork.getMoviesByGenre(genreId, page);
      final body = jsonDecode(response.body);
      final movieResponse = body['results'];
      if (page < body['total_pages']) {
        for (final movieRespond in movieResponse) {
          final movie = Movie.fromJson(movieRespond);
          movies.add(movie);
        }
      }
    }
    return movies;
  }

  Future<List<Video>> getVideoTrailer(int movieId) async {
    final videos = <Video>[];
    final response = await _movieNetwork.getVideoTrailer(movieId);
    final body = jsonDecode(response.body);
    final videoResponse = body['results'];
    for (final videoRespond in videoResponse) {
      final video = Video.fromJson(videoRespond);
      videos.add(video);
    }
    return videos;
  }

  Future<List<Review>> getReviews(int movieId) async {
    final reviews = <Review>[];
    final response = await _movieNetwork.getReviews(movieId, 1);
    final body = jsonDecode(response.body);
    final reviewResponse = body['results'];
    for (final videoRespond in reviewResponse) {
      final review = Review.fromJson(videoRespond);
      reviews.add(review);
    }
    return reviews;
  }

  Future<List<Review>> loadMoreReview(
    int movieId,
    int page, {
    required List<Review> reviews,
  }) async {
    if (page <= 1000) {
      final response = await _movieNetwork.getReviews(movieId, page);
      final body = jsonDecode(response.body);
      final reviewResponse = body['results'];
      if (page < body['total_pages']) {
        for (final videoRespond in reviewResponse) {
          final review = Review.fromJson(videoRespond);
          reviews.add(review);
        }
      }
    }
    return reviews;
  }
}
