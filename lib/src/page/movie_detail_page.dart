import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/src/bloc/movie_detail_bloc.dart';
import 'package:movie_app/src/bloc/review_bloc.dart';
import 'package:movie_app/src/model/movie.dart';
import 'package:movie_app/src/model/review.dart';
import 'package:movie_app/src/model/video.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieDetailPage extends StatelessWidget {
  static final route = ChildRoute('/:genreId/:movieId/',
      child: (context, args) => const MovieDetailPage());

  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _BodyMovieDetailPage());
  }
}

class _BodyMovieDetailPage extends StatefulWidget {
  const _BodyMovieDetailPage({Key? key}) : super(key: key);

  @override
  State<_BodyMovieDetailPage> createState() => _BodyMovieDetailPageState();
}

class _BodyMovieDetailPageState extends State<_BodyMovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final int movieId = int.parse(Modular.args.params['movieId']);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    context.read<MovieDetailBloc>().add(GetMovieDetail(movieId));
    context.read<ReviewBloc>().add(GetReview(movieId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        if (state is LoadingMovieDetail) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is ErrorMovieDetail) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Something wrong'),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => context
                    .read<MovieDetailBloc>()
                    .add(GetMovieDetail(movieId)),
                child: Container(
                  child: Icon(
                    Icons.refresh,
                    size: 35,
                  ),
                ),
              )
            ],
          ));
        }
        if (state is SuccessMovieDetail) {
          final movieDetail = state.movieDetail;
          final videos = state.videos;
          String name = '';
          for (final genre in movieDetail.genres) {
            name += '/${genre.name}';
          }

          return CustomScrollView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            slivers: [
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.35,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                    background: CachedNetworkImage(
                  imageUrl:
                      'https://image.tmdb.org/t/p/w500/${movieDetail.posterPath}',
                  fit: BoxFit.cover,
                )),
              ),
              SliverFixedExtentList(
                  itemExtent: MediaQuery.of(context).size.height * 0.95,
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  movieDetail.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 25),
                              Row(
                                children: [
                                  const Text(
                                    '★ ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.orangeAccent),
                                  ),
                                  Text(
                                    '${movieDetail.voteAverage}',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: Text(name.substring(1))),
                              const SizedBox(width: 25),
                              Text(_formatedTime(movieDetail.runtime!)),
                            ],
                          ),
                          const SizedBox(height: 15),
                          TabBar(
                            controller: _tabController,
                            tabs: const [
                              Tab(text: 'Description'),
                              Tab(text: 'Review'),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                _DescriptionTab(
                                    movieDetail: movieDetail, videos: videos),
                                _ReviewTab(movieId: movieId),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
              // SliverFillRemaining(
              //   child: TabBarView(
              //     controller: _tabController,
              //     children: [
              //       _DescriptionTab(
              //         movieDetail: movieDetail,
              //         videos: videos,
              //       ),
              //       Text('kedua')
              //     ],
              //   ),
              // )
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  String _formatedTime(int minutes) {
    int hour = minutes ~/ 60;
    int min = minutes % 60;
    String parsedTime = hour.toString() + 'h ' + min.toString() + 'm';
    return parsedTime;
  }
}

class _DescriptionTab extends StatelessWidget {
  final MovieDetail movieDetail;
  final List<Video> videos;

  const _DescriptionTab({
    Key? key,
    required this.movieDetail,
    required this.videos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Video? video;
    final tagline = movieDetail.tagline;
    final overview = movieDetail.overview;
    (videos.isNotEmpty)
        ? video = videos.firstWhere(
            (element) => element.type == 'Trailer',
            orElse: () => videos.first,
          )
        : video = null;
    final youtubeController = YoutubePlayerController(
        initialVideoId: (video != null) ? video.key : '',
        flags: const YoutubePlayerFlags(autoPlay: false));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (tagline != null && tagline.isNotEmpty)
            Text(
              '"$tagline"',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          if (tagline != null && tagline.isNotEmpty) SizedBox(height: 8),
          Text(overview ?? '-'),
          const SizedBox(height: 30),
          if (videos.isNotEmpty)
            const Text(
              'Trailer',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          if (videos.isNotEmpty) const SizedBox(height: 10),
          if (videos.isNotEmpty)
            YoutubePlayer(
              controller: youtubeController,
              bottomActions: [
                CurrentPosition(),
                ProgressBar(isExpanded: true),
                RemainingDuration(),
              ],
            ),
        ],
      ),
    );
  }
}

class _ReviewTab extends StatelessWidget {
  const _ReviewTab({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context) {
    final _refreshController = RefreshController();
    int page = 1;

    return BlocBuilder<ReviewBloc, ReviewState>(
      builder: (context, state) {
        if (state is LoadingReview) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is ErrorReview) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Something wrong'),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => context.read<ReviewBloc>().add(GetReview(movieId)),
                child: Container(
                  child: Icon(
                    Icons.refresh,
                    size: 35,
                  ),
                ),
              )
            ],
          ));
        }
        if (state is SuccessReview) {
          final reviews = state.reviews;
          if (reviews.isEmpty) {
            return const Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Text(
                'No Review.',
                textAlign: TextAlign.center,
              ),
            );
          }
          return SmartRefresher(
            controller: _refreshController,
            enablePullDown: false,
            enablePullUp: true,
            onLoading: () {
              page += 1;
              context
                  .read<ReviewBloc>()
                  .add(LoadMoreReview(movieId, page, reviews));
              _refreshController.loadComplete();
            },
            child: ListView.builder(
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return _ReviewCard(review: reviews[index]);
              },
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({
    Key? key,
    required this.review,
  }) : super(key: key);

  final Review review;

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.parse(review.updatedAt);
    final date = DateFormat.yMMMMd().add_jm().format(dateTime);
    return Container(
        margin: EdgeInsets.only(bottom: 25),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    review.author,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(review.content),
          ],
        ));
  }
}
