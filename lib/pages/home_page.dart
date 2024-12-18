import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/bloc/note_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(
            fontSize: 43,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              context.go('/searchPage');
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
                  Icons.search_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              context.go('/profilePage');
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
                  Icons.account_circle_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // BlocBuilder<NoteBloc, NoteState>(
          //   builder: (context, state) {
          //     print('Current state: $state');
          //     if (state is NoteListUpdated && state.notes.isNotEmpty) {
          //       return SliverList(
          //         delegate: SliverChildBuilderDelegate(
          //           (context, index) {
          //             final note = state.notes[index];
          //             return NoteItem(
          //               title: note['title'] ?? 'No title',
          //               subtitle: note['subtitle'] ?? 'No subtitle',
          //             );
          //           },
          //           childCount: notes.length,
          //         ),
          //       );
          //     }
          //     return SliverToBoxAdapter(
          //       child: Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             InkWell(
          //               onTap: () {
          //                 context.go('/addNotePage');
          //               },
          //               splashColor: Colors.transparent,
          //               child: Ink(
          //                 child: Image(
          //                   image: AssetImage('assets/images/add_note.png'),
          //                 ),
          //               ),
          //             ),
          //             const SizedBox(height: 16),
          //             const Text(
          //               'Create your first note!',
          //               style: TextStyle(fontSize: 20),
          //             ),
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
          BlocBuilder<NoteBloc, NoteState>(
            builder: (context, state) {
              if (state is NoteListUpdated) {
                final notes = state.notes;
                if (notes.isNotEmpty) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return NoteItem(text: notes[index]);
                      },
                      childCount: notes.length,
                    ),
                  );
                }
              }
              return SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          context.go('/addNotePage');
                        },
                        splashColor: Colors.transparent,
                        child: Ink(
                          child: const Image(
                            image: AssetImage('assets/images/add_note.png'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Create your first note!',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/addNotePage');
        },
        backgroundColor: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  final String text;

  const NoteItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.grey,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 24),
      ),
    );
  }
}
