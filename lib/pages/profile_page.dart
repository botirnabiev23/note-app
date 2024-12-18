import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            context.go('/');
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
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Account name',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'email',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
