import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_app/src/bloc/genre_bloc.dart';
import 'package:movie_app/src/bloc/movie_list_bloc.dart';

class GenrePage extends StatelessWidget {
  static final route = ChildRoute(Modular.initialRoute,
      child: (context, args) => const GenrePage());

  const GenrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyGenrePage(),
    );
  }
}

class _BodyGenrePage extends StatelessWidget {
  const _BodyGenrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<GenreBloc, GenreState>(
        builder: (context, state) {
          if (state is LoadingGenreState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ErrorGenreState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Something wrong'),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () => context.read<GenreBloc>().add(GetGenreEvent()),
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
          if (state is SuccessGenreState) {
            final genres = state.genres;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select Genre Movie',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1,
                                mainAxisSpacing: 25,
                                mainAxisExtent: 60,
                                crossAxisSpacing: 25,
                                crossAxisCount: 2),
                        itemCount: genres.length,
                        itemBuilder: (context, index) {
                          final genre = genres[index];
                          return _GenreWidget(
                            genre: genre.name,
                            onTap: () {
                              Modular.to.pushNamed('${genre.id}/',
                                  arguments: genre.name);
                            },
                          );
                        }),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _GenreWidget extends StatelessWidget {
  final String genre;
  final VoidCallback? onTap;
  const _GenreWidget({
    Key? key,
    required this.genre,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF0B63F6), Color(0xFF003CC5)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(4, 4),
                  spreadRadius: 4)
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
          genre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
