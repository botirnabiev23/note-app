class Note {
  final String title;
  final String subtitle;
  final int color;

  Note({
    required this.title,
    required this.subtitle,
    this.color = 0xFF757575,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      title: json['title'],
      subtitle: json['subtitle'],
      color: json['color'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'color': color,
    };
  }
}
