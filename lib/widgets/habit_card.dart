import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/habit_model.dart';
import '../services/habit_services.dart';

class HabitCard extends StatefulWidget {
  final Habit habit;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onToggle;

  const HabitCard({
    super.key,
    required this.habit,
    required this.onEdit,
    required this.onDelete,
    required this.onToggle,
  });

  @override
  State<HabitCard> createState() => _HabitCardState();
}

class _HabitCardState extends State<HabitCard> {
  final HabitService service = HabitService();

  Future<void> toggleHabit(bool value) async {
    final updatedHabit = Habit(
      id: widget.habit.id,
      name: widget.habit.name,
      category: widget.habit.category,
      target: widget.habit.target,
      notes: widget.habit.notes,
      isDone: value,
    );

    await service.updateHabit(widget.habit.id!, updatedHabit);

    if (!mounted) return;

    if (value == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: const Color(0xFFFFC8DA),
          duration: const Duration(seconds: 2),
          content: Text(
            "🎉 '${widget.habit.name}' selesai!",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    setState(() {
      widget.habit.isDone = value;
    });

    widget.onToggle();
  }

  IconData getCategoryIcon(String category) {
    switch (category) {
      case "Akademik":
        return Icons.menu_book;
      case "Kesehatan":
        return Icons.favorite;
      case "Fitness":
        return Icons.fitness_center;
      case "Produktivitas":
        return Icons.bolt;
      case "Mental Health":
        return Icons.psychology;
      case "Personal Development":
        return Icons.trending_up;
      case "Morning Routine":
        return Icons.wb_sunny;
      case "Spiritual":
        return Icons.self_improvement;
      default:
        return Icons.track_changes;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDone = widget.habit.isDone;

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: isDone ? 0.6 : 1,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 15,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 6),

          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFFFE4EC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              getCategoryIcon(widget.habit.category),
              color: isDone ? Colors.grey : const Color(0xFFF06292),
              size: 22,
            ),
          ),

          title: Text(
            widget.habit.name,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: isDone ? TextDecoration.lineThrough : null,
            ),
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE4EC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        widget.habit.category,
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: const Color(0xFFF06292),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const SizedBox(width: 6),

                    Text(
                      widget.habit.target,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),

                if (widget.habit.notes.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    widget.habit.notes,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),

          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  toggleHabit(!widget.habit.isDone);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.habit.isDone
                        ? Colors.green
                        : Colors.transparent,
                    border: Border.all(
                      color: widget.habit.isDone ? Colors.green : Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: widget.habit.isDone
                      ? const Icon(Icons.check, size: 18, color: Colors.white)
                      : null,
                ),
              ),

              const SizedBox(width: 6),

              IconButton(
                icon: const Icon(Icons.edit_rounded),
                color: Colors.deepPurple,
                iconSize: 20,
                onPressed: widget.onEdit,
              ),

              IconButton(
                icon: const Icon(Icons.delete_rounded),
                color: Colors.redAccent,
                iconSize: 20,
                onPressed: widget.onDelete,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
