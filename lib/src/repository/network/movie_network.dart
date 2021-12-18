import 'package:http/http.dart' as http;
import 'package:movie_app/src/const.dart';

class MovieNetwork {
  final _baseUrl = 'https://api.themoviedb.org/3';

  Future<http.Response> getMovieDetail(int movieId) async {
    final url = '/movie/$movieId?api_key=$apiKey';
    final fullUrl = _baseUrl + url;

    final response = await http.get(Uri.parse(fullUrl));
    return response;
  }

  Future<http.Response> getGenre() async {
    const url = '/genre/movie/list?api_key=$apiKey';
    final fullUrl = _baseUrl + url;

    final response = await http.get(Uri.parse(fullUrl));
    return response;
  }

  Future<http.Response> getMoviesByGenre(int genreId, int page) async {
    final url =
        '/discover/movie?api_key=$apiKey&with_genres=$genreId&page=$page';
    final fullUrl = _baseUrl + url;

    final response = await http.get(Uri.parse(fullUrl));
    return response;
  }

  Future<http.Response> getVideoTrailer(int movieId) async {
    final url = '/movie/$movieId/videos?api_key=$apiKey';
    final fullUrl = _baseUrl + url;

    final response = await http.get(Uri.parse(fullUrl));
    return response;
  }

  Future<http.Response> getReviews(int movieId, int page) async {
    final url = '/movie/$movieId/reviews?api_key=$apiKey&page=$page';
    final fullUrl = _baseUrl + url;

    final response = await http.get(Uri.parse(fullUrl));
    return response;
  }
}
