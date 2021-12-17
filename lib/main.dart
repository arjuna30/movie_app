import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_app/src/app_module.dart';
import 'package:movie_app/src/bloc/genre_bloc.dart';
import 'package:movie_app/src/bloc/movie_detail_bloc.dart';
import 'package:movie_app/src/bloc/movie_list_bloc.dart';

void main() => runApp(ModularApp(module: AppModule(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [
        BlocProvider(create: GenreBloc.create),
        BlocProvider(create: MovieListBloc.create),
        BlocProvider(create: MovieDetailBloc.create),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movie App',
        theme: ThemeData.dark().copyWith(),
      ).modular(),
    );
  }
}
