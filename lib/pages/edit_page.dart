import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/bloc/note_bloc.dart';
import 'package:note_app/core/model/note_model.dart';

class EditNotePage extends StatefulWidget {
  final Note note;

  const EditNotePage({
    super.key,
    required this.note,
  });

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  late TextEditingController _titleController;
  late TextEditingController _subtitleController;
  late Color _selectedColor;
  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.note.title);
    _subtitleController = TextEditingController(text: widget.note.subtitle);
    _selectedColor = Colors.grey;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
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
                    final updatedTitle = _titleController.text.trim();
                    final updatedSubtitle = _subtitleController.text.trim();
                    final Note updatedNote = Note(
                      id: widget.note.id,
                      title: updatedTitle,
                      subtitle: updatedSubtitle,
                    );
                    FocusScope.of(context).unfocus();
                    if (updatedTitle.isNotEmpty || updatedSubtitle.isNotEmpty) {
                      context.read<NoteBloc>().add(
                            NoteUpdatedEvent(updatedNote),
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
              controller: _titleController,
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
                controller: _subtitleController,
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
            // if (isEditing)
            //   Column(
            //     children: [
            //       const Text('Select Color:', style: TextStyle(fontSize: 18)),
            //       const SizedBox(height: 8),
            //       Wrap(
            //         spacing: 10,
            //         children: [
            //           _buildColorOption(Colors.red),
            //           _buildColorOption(Colors.green),
            //           _buildColorOption(Colors.blue),
            //           _buildColorOption(Colors.orange),
            //           _buildColorOption(Colors.purple),
            //         ],
            //       ),
            //     ],
            //   ),
          ],
        ),
      ),
    );
  }

// Widget _buildColorOption(Color color) {
//   return GestureDetector(
//     onTap: () {
//       setState(() {
//         selectedColor = color;
//       });
//     },
//     child: Container(
//       width: 40,
//       height: 40,
//       decoration: BoxDecoration(
//         color: color,
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: selectedColor == color ? Colors.black : Colors.transparent,
//           width: 3,
//         ),
//       ),
//     ),
//   );
// }
}
