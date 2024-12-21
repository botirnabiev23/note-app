import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/bloc/note_bloc.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();
  Color selectedColor = Colors.grey;
  bool isEditing = false;

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
          if (isEditing == true)
            InkWell(
              onTap: () {
                final title = titleController.text.trim();
                final subtitle = subtitleController.text.trim();
                FocusScope.of(context).unfocus();
                if (title.isNotEmpty || subtitle.isNotEmpty) {
                  context.read<NoteBloc>().add(
                        TextAddedEvent(
                          title,
                          subtitle,
                          selectedColor,
                        ),
                      );
                  setState(() {
                    isEditing = false;
                  });
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
              onTap: () {
                setState(() {
                  isEditing = true;
                });
              },
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
                onTap: () {
                  setState(() {
                    isEditing = true;
                  });
                },
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
            if (isEditing)
              Column(
                children: [
                  const Text('Select Color:', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 10,
                    children: [
                      _buildColorOption(Colors.red),
                      _buildColorOption(Colors.green),
                      _buildColorOption(Colors.blue),
                      _buildColorOption(Colors.orange),
                      _buildColorOption(Colors.purple),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: selectedColor == color ? Colors.black : Colors.transparent,
            width: 3,
          ),
        ),
      ),
    );
  }
}
