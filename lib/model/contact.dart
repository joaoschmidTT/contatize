class Contact {
  int? id;
  String name;
  String phone;
  
  Contact({
    this.id,
    required this.name,
    required this.phone,
  });

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
    };
  }

  factory Contact.fromMap(Map<String, Object?> map) => Contact(
        id: map['id'] as int?,
        name: map['name'] as String,
        phone: map['phone'] as String,
      );
}
