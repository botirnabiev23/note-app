import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/bloc/note_bloc.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController subtitleController = TextEditingController();
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
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              final title = titleController.text.trim();
              final subtitle = subtitleController.text.trim();
              if (title.isNotEmpty || subtitle.isNotEmpty) {
                context.read<NoteBloc>().add(TextAddedEvent(title,));
                print('Event sent: $title, $subtitle');
                context.go('/');
              }
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
                  Icons.save,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                hintText: 'Title',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 34,
                ),
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TextField(
                controller: subtitleController,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Type something...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
