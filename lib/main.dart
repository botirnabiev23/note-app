import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/bloc/note_bloc.dart';
import 'package:note_app/core/services/local_storage/local_storage.dart';
import 'package:note_app/features/auth/sign_in/page/sign_in_page.dart';
import 'package:note_app/features/auth/sing_up/bloc/sign_up_bloc.dart';
import 'package:note_app/features/home/home_bloc.dart';
import 'package:note_app/features/splash/bloc/splash_bloc.dart';
import 'package:note_app/pages/add_note_page.dart';
import 'package:note_app/features/auth/sing_up/page/sign_up_page.dart';
import 'package:note_app/pages/edit_page.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/pages/profile_page.dart';
import 'package:note_app/pages/search_page.dart';
import 'package:note_app/pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SplashBloc()..add(SplashEvent.checkAuthStatus()),
        ),
        BlocProvider(
          create: (_) => NoteBloc(),
        ),
        BlocProvider(
          create: (_) => HomeBloc(),
        ),
        BlocProvider(
          create: (_) => SignUpBloc(),
        ),
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
        builder: (context, state) => SplashPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage(),
        routes: [
          GoRoute(
            name: 'profilePage',
            path: '/profilePage',
            builder: (context, state) => ProfilePage(),
          ),
        ],
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => SignUpPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => SignInPage(),
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
        path: '/editNotePage',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          final String title = extra['title'] ?? '';
          final String subtitle = extra['subtitle'] ?? '';
          final Color color = extra['color'] ?? Colors.grey;
          return EditNotePage(
            initialTitle: title,
            initialSubtitle: subtitle,
            color: color,
          );
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
