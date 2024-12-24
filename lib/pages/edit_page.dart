import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/bloc/note_bloc.dart';

class EditNotePage extends StatefulWidget {
  final String? initialTitle;
  final String? initialSubtitle;
  final Color? color;

  const EditNotePage({
    super.key,
    this.initialTitle,
    this.initialSubtitle,
    this.color,
  });

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  late TextEditingController titleController;
  late TextEditingController subtitleController;
  late Color selectedColor;
  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.initialTitle ?? '');
    subtitleController =
        TextEditingController(text: widget.initialSubtitle ?? '');
    selectedColor = widget.color ?? Colors.grey;
  }

  @override
  void dispose() {
    titleController.dispose();
    subtitleController.dispose();
    super.dispose();
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
          if (isEditing)
            Row(
              children: [
                InkWell(
                  onTap: () {
                    final updatedTitle = titleController.text.trim();
                    final updatedSubtitle = subtitleController.text.trim();
                    FocusScope.of(context).unfocus();
                    if (updatedTitle.isNotEmpty || updatedSubtitle.isNotEmpty) {
                      context.read<NoteBloc>().add(
                            NoteUpdatedEvent(
                              widget.initialTitle ?? '',
                              updatedTitle,
                              updatedSubtitle,
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
