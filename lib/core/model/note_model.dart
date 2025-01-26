class Note {
  final String title;
  final String subtitle;
  // final int color;

  Note({
    required this.title,
    required this.subtitle,
    // this.color = 0xFF757575,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      title: json['title'],
      subtitle: json['subtitle'],
      // color: json['color'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      // 'color': color,
    };
  }
}

// import 'package:uuid/uuid.dart';
//
// class Note {
//   final String id;
//   final String title;
//   final String subtitle;
//
//   Note({
//     required this.id,
//     required this.title,
//     required this.subtitle,
//   });
//
//   // Метод для преобразования из JSON
//   factory Note.fromJson(Map<String, dynamic> json) {
//     return Note(
//       id: json['id'] ?? const Uuid().v4(), // Генерация id, если отсутствует
//       title: json['title'],
//       subtitle: json['content'],
//     );
//   }
//
//   // Метод для преобразования в JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'title': title,
//       'content': subtitle,
//     };
//   }
// }


