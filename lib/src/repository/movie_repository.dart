import 'package:movie_app/src/model/genre.dart';
import 'package:movie_app/src/model/movie.dart';
import 'package:movie_app/src/model/review.dart';
import 'package:movie_app/src/model/video.dart';
import 'package:movie_app/src/repository/network/movie_network.dart';

class MovieRepository {
  final MovieNetwork _movieNetwork;

  MovieRepository(this._movieNetwork);

  Future<MovieDetail> getMovieDetail(int movieId) async =>
      await _movieNetwork.getMovieDetail(movieId);

  Future<List<Genre>> getGenre() async => await _movieNetwork.getGenre();

  Future<List<Movie>> getMovieByGenre(int genreId, int page) async =>
      await _movieNetwork.getMoviesByGenre(genreId, page);

  Future<List<Video>> getVideoTrailer(int movieId) async =>
      await _movieNetwork.getVideoTrailer(movieId);

  Future<List<Review>> getReviews(int movieId) async =>
      await _movieNetwork.getReviews(movieId);
}
