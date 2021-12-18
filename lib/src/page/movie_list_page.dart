import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/src/bloc/movie_list_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:movie_app/src/model/movie.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MovieListPage extends StatelessWidget {
  static final route =
      ChildRoute('/:genreId/', child: (context, args) => const MovieListPage());
  const MovieListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = Modular.args.data;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const _BodyMovieListPage(),
    );
  }
}

class _BodyMovieListPage extends StatefulWidget {
  const _BodyMovieListPage({Key? key}) : super(key: key);

  @override
  State<_BodyMovieListPage> createState() => _BodyMovieListPageState();
}

class _BodyMovieListPageState extends State<_BodyMovieListPage> {
  final int genreId = int.parse(Modular.args.params['genreId']);
  final refreshController = RefreshController();
  int page = 1;

  @override
  void initState() {
    super.initState();
    context.read<MovieListBloc>().add(GetMovieListByGenre(genreId, 1));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<MovieListBloc, MovieListState>(
        builder: (context, state) {
          if (state is LoadingMovieListState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ErrorMovieListState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Something wrong'),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => context
                      .read<MovieListBloc>()
                      .add(GetMovieListByGenre(genreId, 1)),
                  child: const Icon(Icons.refresh, size: 35),
                )
              ],
            ));
          }
          if (state is SuccessMovieListState) {
            final movies = state.movies;
            return SmartRefresher(
              controller: refreshController,
              enablePullUp: true,
              onRefresh: () {
                page = 1;
                context
                    .read<MovieListBloc>()
                    .add(GetMovieListByGenre(genreId, page));
                refreshController.refreshCompleted();
              },
              onLoading: () {
                page += 1;
                context
                    .read<MovieListBloc>()
                    .add(LoadMoreMovieListByGenre(genreId, page, movies));
                refreshController.loadComplete();
              },
              child: GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      mainAxisSpacing: 25,
                      mainAxisExtent: 290,
                      crossAxisSpacing: 25,
                      crossAxisCount: 2),
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return _MovieCard(
                      movie: movie,
                      onTap: () =>
                          Modular.to.pushNamed('/$genreId/${movie.id}/'),
                    );
                  }),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback? onTap;

  const _MovieCard({
    Key? key,
    required this.movie,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final releaseDate = movie.releaseDate;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          'https://image.tmdb.org/t/p/w500/${movie.posterPath}'))),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (releaseDate != null && releaseDate.isNotEmpty)
                        Text(
                          intl.DateFormat.yMMMd()
                              .format(DateTime.parse(releaseDate)),
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black),
                        ),
                      Row(
                        children: [
                          const Text(
                            '★ ',
                            style: TextStyle(
                                fontSize: 12, color: Colors.orangeAccent),
                          ),
                          Text(
                            '${movie.voteAverage}',
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
