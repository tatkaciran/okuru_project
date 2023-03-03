class VoiceRecord {
  final String id;
  final String isbn;
  final String userId;
  final String downloadURL;
  final DateTime createdAt;

  VoiceRecord({
    required this.id,
    required this.isbn,
    required this.userId,
    required this.downloadURL,
    required this.createdAt,
  });

  factory VoiceRecord.fromJson(Map<String, dynamic> json) {
    return VoiceRecord(
      id: json['id'],
      isbn: json['isbn'],
      userId: json['userId'],
      downloadURL: json['downloadURL'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'isbn': isbn,
      'userId': userId,
      'downloadURL': downloadURL,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  VoiceRecord copyWith({
    String? id,
    String? isbn,
    String? userId,
    String? downloadURL,
    DateTime? createdAt,
  }) {
    return VoiceRecord(
      id: id ?? this.id,
      isbn: isbn ?? this.isbn,
      userId: userId ?? this.userId,
      downloadURL: downloadURL ?? this.downloadURL,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
