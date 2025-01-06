import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/extensions/build_context_extension.dart';
import 'package:note_app/features/auth/sing_up/bloc/sign_up_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isFalseOne = true;
  bool isFalseTwo = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignUpBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F1E31),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff0F1E31),
              ),
              height: 180,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30, left: 15, bottom: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Create your Account',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    obscureText: isFalseOne,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isFalseOne = !isFalseOne;
                          });
                        },
                        icon: isFalseOne
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: confirmPasswordController,
                    obscureText: isFalseTwo,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isFalseTwo = !isFalseTwo;
                          });
                        },
                        icon: isFalseTwo
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocConsumer<SignUpBloc, SignUpState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        () {},
                        success: (user) {
                          context.scaffoldMessenger.showSnackBar(
                            SnackBar(
                              content: Text('Welcome, ${user.name}!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                          context.go('/home');
                        },
                        error: (message) {
                          context.scaffoldMessenger.showSnackBar(
                            SnackBar(
                              content: Text(message),
                              backgroundColor: Colors.red,
                            ),
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            final name = nameController.text;
                            final email = emailController.text;
                            final password = passwordController.text;
                            final confirmPassword =
                                confirmPasswordController.text;

                            bloc.add(
                              SignUpEvent.submit(
                                name: name,
                                email: email,
                                password: password,
                                confirmPassword: confirmPassword,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('You have an account?'),
                      BlocConsumer<SignUpBloc, SignUpState>(
                        builder: (context, state) {
                          return TextButton(
                            onPressed: () => bloc.add(SignUpEvent.checkUsers()),
                            style: const ButtonStyle(
                              overlayColor:
                                  WidgetStatePropertyAll(Colors.transparent),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.green),
                            ),
                          );
                        },
                        listener: (context, state) {
                          state.whenOrNull(
                            () {},
                            usersChecked: () {
                              context.go('/login');
                            },
                            error: (message) {
                              context.scaffoldMessenger.showSnackBar(
                                SnackBar(
                                    content: Text(message),
                                    backgroundColor: Colors.red),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
