import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/model/note_model.dart';
import 'package:note_app/features/home/home_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController controller = TextEditingController();
  String searchQuery = '';
  bool isTyping = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 50,
          child: TextField(
            onTap: () {
              setState(() {
                isTyping = true;
              });
            },
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Search by keyword',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(38),
                ),
              ),
              suffixIcon: isTyping
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isTyping = false;
                          controller.clear();
                          searchQuery = '';
                        });
                      },
                      icon: Icon(Icons.close),
                    )
                  : null,
            ),
            onChanged: (query) {
              setState(() {
                searchQuery = query.toLowerCase();
              });
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.go('/home');
            },
            child: Text('Cancel'),
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
            final filteredNotes = state.notes
                .where((note) =>
                    note.title.toLowerCase().contains(searchQuery) ||
                    note.subtitle.toLowerCase().contains(searchQuery))
                .toList();

            if (filteredNotes.isEmpty) {
              return _buildEmptySearchResult();
            }

            return ListView.builder(
              itemCount: filteredNotes.length,
              itemBuilder: (context, index) {
                final Note note = filteredNotes[index];
                return InkWell(
                  onTap: () {
                    context.go(
                      '/editNotePage',
                      extra: note,
                    );
                  },
                  child: Ink(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        // color: Color(note.color),
                      ),
                      child: Text(
                        note.title,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ),
                );
              },
            );
          //  else {
          //   return Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Center(
          //         child: InkWell(
          //           child: Ink(
          //             child: Image(
          //               image: AssetImage('assets/images/search_page.png'),
          //             ),
          //           ),
          //         ),
          //       ),
          //       Text(
          //         'File not found. Try searching again.',
          //         style: TextStyle(fontSize: 20),
          //       ),
          //     ],
          //   );
          // }
        },
      ),
    );
  }

  Widget _buildEmptySearchResult() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/search_page.png'),
          ),
          const SizedBox(height: 16),
          const Text(
            'File not found. Try searching again.',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
