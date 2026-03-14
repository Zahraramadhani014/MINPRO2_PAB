import '../config/supabase_config.dart';
import '../models/habit_model.dart';

class HabitService {
  Future<List<Habit>> getHabits() async {
    final userId = supabase.auth.currentUser!.id;

    final response = await supabase
        .from("habits")
        .select()
        .eq("user_id", userId);

    return (response as List)
        .map((e) => Habit.fromMap(e as Map<String, dynamic>))
        .toList();
  }

  Future addHabit(Habit habit) async {
    final userId = supabase.auth.currentUser!.id;

    await supabase.from("habits").insert({...habit.toMap(), "user_id": userId});
  }

  Future updateHabit(int id, Habit habit) async {
    await supabase.from("habits").update(habit.toMap()).eq("id", id);
  }

  Future deleteHabit(int id) async {
    await supabase.from("habits").delete().eq("id", id);
  }
}
