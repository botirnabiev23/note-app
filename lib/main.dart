import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/bloc/note_bloc.dart';
import 'package:note_app/pages/add_note_page.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/pages/profile_page.dart';
import 'package:note_app/pages/search_page.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NoteBloc(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/addNotePage',
        builder: (context, state) => AddNotePage(),
      ),
      GoRoute(
        path: '/searchPage',
        builder: (context, state) => SearchPage(),
      ),
      GoRoute(
        path: '/profilePage',
        builder: (context, state) => ProfilePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
