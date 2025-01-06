import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/features/auth/sing_up/bloc/sign_up_bloc.dart';
import 'package:note_app/features/profile/bloc/profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
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
                  context.read<SignUpBloc>().add(const SignUpEvent
                      .logoutUser());
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
          body: Center(
            child: Column(
              children: [
                Text(state.currentUser.name),
                Text(state.currentUser.id),
                Text(state.currentUser.email),
              ],
            ),
          ),
        );
      },
    );
  }
}
