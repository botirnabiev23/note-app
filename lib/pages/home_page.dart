import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/model/note_model.dart';
import 'package:note_app/features/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(HomeEvent.getAllNotes());
  }

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
              context.pushNamed('profilePage');
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
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final notes = state.notes;
              if (notes.isNotEmpty) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Dismissible(
                        key: Key(notes[index].toString()),
                        direction: DismissDirection.endToStart,
                        confirmDismiss: (direction) async {
                          final confirm = await showDialog<bool>(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Confirm Delete'),
                                content: Text('Are you sure you want to delete this note?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      context.pop();
                                    },
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.pop(true);
                                    },
                                    child: Text('Delete'),
                                  ),
                                ],
                              );
                            },
                          );
                          return confirm ?? false;
                        },
                        onDismissed: (direction) {
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.deleteNote(index));
                        },
                        background: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          alignment: Alignment.centerRight,
                          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        child: NoteItem(note: notes[index]),
                      );
                    },
                    childCount: notes.length,
                  ),
                );
              }
              return SliverFillRemaining(
                hasScrollBody: false,
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
  final Note note;

  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(
          '/editNotePage',
          extra: {
            'title': note.title,
            'subtitle': note.subtitle,
            // 'color': note.color,
          },
        );
      },
      child: Ink(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            color: Colors.blue,
          ),
          child: Text(
            note.title,
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
