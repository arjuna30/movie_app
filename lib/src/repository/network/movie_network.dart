import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/src/const.dart';
import 'package:movie_app/src/model/genre.dart';
import 'package:movie_app/src/model/movie.dart';
import 'package:movie_app/src/model/review.dart';
import 'package:movie_app/src/model/video.dart';

class MovieNetwork {
  final _baseUrl = 'https://api.themoviedb.org/3';

  Future<MovieDetail> getMovieDetail(int movieId) async {
    final url = '/movie/$movieId?api_key=$apiKey';
    final fullUrl = _baseUrl + url;

    final response = await http.get(Uri.parse(fullUrl));
    final body = jsonDecode(response.body);
    return MovieDetail.fromJson(body);
  }

  Future<List<Genre>> getGenre() async {
    const url = '/genre/movie/list?api_key=$apiKey';
    final fullUrl = _baseUrl + url;

    final response = await http.get(Uri.parse(fullUrl));
    final body = jsonDecode(response.body);
    final genres = Genres.fromJson(body);
    return genres.genres;
  }

  Future<List<Movie>> getMoviesByGenre(int genreId, int page) async {
    final url =
        '/discover/movie?api_key=$apiKey&with_genres=$genreId&page=$page';
    final fullUrl = _baseUrl + url;
    final movies = <Movie>[];

    final response = await http.get(Uri.parse(fullUrl));
    final body = jsonDecode(response.body);
    final movieResponse = body['results'];
    for (final movieRespond in movieResponse) {
      final movie = Movie.fromJson(movieRespond);
      movies.add(movie);
    }
    return movies;
  }

  Future<List<Video>> getVideoTrailer(int movieId) async {
    final url = '/movie/$movieId/videos?api_key=$apiKey';
    final fullUrl = _baseUrl + url;
    final videos = <Video>[];

    final response = await http.get(Uri.parse(fullUrl));
    final body = jsonDecode(response.body);
    final videoResponse = body['results'];
    for (final videoRespond in videoResponse) {
      final video = Video.fromJson(videoRespond);
      videos.add(video);
    }
    return videos;
  }

  Future<List<Review>> getReviews(int movieId) async {
    final url = '/movie/$movieId/reviews?api_key=$apiKey';
    final fullUrl = _baseUrl + url;
    final reviews = <Review>[];

    final response = await http.get(Uri.parse(fullUrl));
    final body = jsonDecode(response.body);
    final reviewResponse = body['results'];
    for (final videoRespond in reviewResponse) {
      final review = Review.fromJson(videoRespond);
      reviews.add(review);
    }
    return reviews;
  }
}
