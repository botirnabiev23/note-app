import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/features/auth/sing_up/bloc/sign_up_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<SignUpBloc>().add(const SignUpEvent.appStarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            context.go('/home');
          },
          child: Ink(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: Color(0xff3B3B3B),
              ),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          InkWell(
            child: Ink(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  color: Color(0xff3B3B3B),
                ),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              context.read<SignUpBloc>().add(const SignUpEvent.logoutUser());
              context.go('/register');
            },
            child: Ink(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  color: Color(0xff3B3B3B),
                ),
                child: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          state.whenOrNull(
            () {},
            success: (user) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Добро пожаловать, ${user.name}!')),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text('Ошибка: $message'),
                    backgroundColor: Colors.red),
              );
            },
          );
        },
        builder: (context, state) {
          return state.when(
            () => const Center(child: CircularProgressIndicator()),
            success: (user) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ID: ${user.id}'),
                    Text('Имя: ${user.name}'),
                    Text('Email: ${user.email}'),
                  ],
                ),
              );
            },
            error: (message) => Center(child: Text('Ошибка: $message')),
            usersChecked: () =>
                const Center(child: Text('Пользователи проверены')),
            loggedOut: () => const Center(child: Text('Нет данных')),
          );
        },
      ),
    );
  }
}
