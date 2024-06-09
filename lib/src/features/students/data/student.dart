class Student {
  final String? name;
  final String? description;
  final String? imageData;

  Student({
    this.name,
    this.description,
    this.imageData,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'description': this.description,
      'imageData': this.imageData,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map['name'] as String,
      description: map['description'] as String,
      imageData: map['imageData'] as String,
    );
  }
}
