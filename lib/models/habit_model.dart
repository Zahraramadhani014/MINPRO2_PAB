class Habit {
  final int? id;
  final String name;
  final String category;
  final String target;
  final String notes;

  bool isDone;

  Habit({
    this.id,
    required this.name,
    required this.category,
    required this.target,
    required this.notes,
    this.isDone = false,
  });

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "category": category,
      "target": target,
      "notes": notes,
      "is_done": isDone,
    };
  }

  factory Habit.fromMap(Map<String, dynamic> data) {
    return Habit(
      id: data["id"],
      name: data["name"],
      category: data["category"],
      target: data["target"],
      notes: data["notes"] ?? "",
      isDone: data["is_done"] ?? false,
    );
  }
}
