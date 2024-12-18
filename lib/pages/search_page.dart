import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search by keyword',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(38),
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  context.go('/');
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              child: Ink(
                child: Image(
                  image: AssetImage('assets/images/search_page.png'),
                ),
              ),
            ),
          ),
          Text(
            'File not found. Try searching again.',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
