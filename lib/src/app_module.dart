import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_app/src/page/genre_page.dart';
import 'package:movie_app/src/page/movie_detail_page.dart';
import 'package:movie_app/src/page/movie_list_page.dart';
import 'package:movie_app/src/repository/movie_repository.dart';
import 'package:movie_app/src/repository/network/movie_network.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => MovieNetwork()),
        Bind.singleton((i) => MovieRepository(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        GenrePage.route,
        MovieListPage.route,
        MovieDetailPage.route,
      ];
}
