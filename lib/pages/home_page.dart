import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/habit_services.dart';
import '../models/habit_model.dart';
import '../widgets/habit_card.dart';
import 'habit_form_page.dart';
import '../main.dart';
import '../config/supabase_config.dart';
import 'welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HabitService service = HabitService();

  List<Habit> habits = [];
  List<Habit> get completedHabits =>
      filteredHabits.where((h) => h.isDone == true).toList();

  List<Habit> get pendingHabits =>
      filteredHabits.where((h) => h.isDone != true).toList();

  Future loadHabits() async {
    setState(() {
      isLoading = true;
    });

    habits = await service.getHabits();

    setState(() {
      isLoading = false;
    });
  }

  String selectedCategory = "Semua";

  final List<String> categories = [
    "Semua",
    "Akademik",
    "Kesehatan",
    "Fitness",
    "Produktivitas",
    "Mental Health",
    "Personal Development",
    "Morning Routine",
    "Spiritual",
  ];

  List<Habit> get filteredHabits {
    List<Habit> result = habits;

    if (selectedCategory != "Semua") {
      result = result
          .where((habit) => habit.category == selectedCategory)
          .toList();
    }

    if (searchQuery.isNotEmpty) {
      result = result
          .where(
            (habit) =>
                habit.name.toLowerCase().contains(searchQuery.toLowerCase()),
          )
          .toList();
    }

    return result;
  }

  String searchQuery = "";

  final List<String> quotes = [
    "Small habits make big results 💪",
    "Stay consistent, success will follow ✨",
    "Every day is a fresh start 🌱",
    "Progress over perfection 🚀",
    "Discipline builds the life you want 🔥",
  ];

  String todayQuote = "";

  @override
  void initState() {
    super.initState();
    todayQuote = (quotes..shuffle()).first;
    loadHabits();
  }

  String get greeting {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  int get completedCount =>
      habits.where((habit) => habit.isDone == true).length;

  bool isLoading = true;

  double get completionRate =>
      habits.isEmpty ? 0 : (completedCount / habits.length) * 100;

  void showDeleteConfirmation(Habit habit) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: SizedBox(
            width: 420,
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFE4EC),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Color(0xFFF06292),
                      size: 35,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Hapus Habit",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Apakah yakin ingin menghapus habit ini?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFFF06292)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Batal",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFFF06292),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF06292),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.pop(context);

                            await service.deleteHabit(habit.id!);

                            if (!mounted) return;

                            showDeleteSuccess();

                            loadHabits();
                          },
                          child: Text(
                            "Ya, Hapus",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void showDeleteSuccess() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFE4EC),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Color(0xFFF06292),
                      size: 40,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Habit berhasil dihapus",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF06292),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "OK",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = supabase.auth.currentUser;

    final username = user?.email?.split('@')[0] ?? "User";

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,

        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [primaryColor, Color(0xFFF8BBD0)]),
          ),
        ),

        leading: IconButton(
          icon: const Icon(Icons.filter_list, color: Colors.white),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3E5F5),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 10),

                            Container(
                              width: 40,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),

                            const SizedBox(height: 10),

                            Text(
                              "Filter Kategori",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(16),
                        children: categories.map((category) {
                          return ListTile(
                            title: Text(category, style: GoogleFonts.poppins()),
                            trailing: selectedCategory == category
                                ? const Icon(Icons.check, color: Colors.pink)
                                : null,
                            onTap: () {
                              setState(() {
                                selectedCategory = category;
                              });
                              Navigator.pop(context);
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          tooltip: "Filter Kategori",
        ),

        title: Column(
          children: [
            Text(
              "HabitBloom",
              style: GoogleFonts.orbitron(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),

        centerTitle: true,

        actions: [
          IconButton(
            tooltip: "Toggle Theme",
            iconSize: 22,
            icon: Icon(
              themeMode.value == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
              color: Colors.white,
            ),
            onPressed: () {
              themeMode.value = themeMode.value == ThemeMode.dark
                  ? ThemeMode.light
                  : ThemeMode.dark;
            },
          ),

          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),

            onPressed: () {
              showDialog(
                context: context,

                builder: (context) {
                  return Center(
                    child: SizedBox(
                      width: 420,

                      child: Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),

                        child: Container(
                          padding: const EdgeInsets.all(25),

                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.15),
                                blurRadius: 20,
                              ),
                            ],
                          ),

                          child: Column(
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),

                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFE4EC),
                                  shape: BoxShape.circle,
                                ),

                                child: const Icon(
                                  Icons.person,
                                  color: Color(0xFFF06292),
                                  size: 35,
                                ),
                              ),

                              const SizedBox(height: 20),

                              Text(
                                "Logged in as",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium!.color,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                user?.email ?? "User",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              const SizedBox(height: 20),

                              SizedBox(
                                width: double.infinity,

                                child: ElevatedButton.icon(
                                  icon: const Icon(Icons.logout),

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF06292),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 14,
                                    ),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),

                                  onPressed: () {
                                    Navigator.pop(context);

                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Center(
                                          child: SizedBox(
                                            width: 420,

                                            child: Dialog(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),

                                              child: Container(
                                                padding: const EdgeInsets.all(
                                                  25,
                                                ),

                                                decoration: BoxDecoration(
                                                  color: Theme.of(
                                                    context,
                                                  ).cardColor,
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withValues(
                                                            alpha: 0.15,
                                                          ),
                                                      blurRadius: 20,
                                                    ),
                                                  ],
                                                ),

                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,

                                                  children: [
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            15,
                                                          ),
                                                      decoration:
                                                          const BoxDecoration(
                                                            color: Color(
                                                              0xFFFFE4EC,
                                                            ),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),

                                                      child: const Icon(
                                                        Icons.logout,
                                                        color: Color(
                                                          0xFFF06292,
                                                        ),
                                                        size: 35,
                                                      ),
                                                    ),

                                                    const SizedBox(height: 20),

                                                    Text(
                                                      "Konfirmasi Logout",
                                                      style:
                                                          GoogleFonts.poppins(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),

                                                    const SizedBox(height: 10),

                                                    Text(
                                                      "Apakah anda yakin ingin logout?",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.poppins(
                                                            color: Colors
                                                                .grey[700],
                                                          ),
                                                    ),

                                                    const SizedBox(height: 25),

                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: OutlinedButton(
                                                            style: OutlinedButton.styleFrom(
                                                              side: const BorderSide(
                                                                color: Color(
                                                                  0xFFF06292,
                                                                ),
                                                              ),
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12,
                                                                    ),
                                                              ),
                                                            ),

                                                            onPressed: () {
                                                              Navigator.pop(
                                                                context,
                                                              );
                                                            },

                                                            child: Text(
                                                              "Batal",
                                                              style: GoogleFonts.poppins(
                                                                color:
                                                                    const Color(
                                                                      0xFFF06292,
                                                                    ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),

                                                        const SizedBox(
                                                          width: 10,
                                                        ),

                                                        Expanded(
                                                          child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                    0xFFF06292,
                                                                  ),
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12,
                                                                    ),
                                                              ),
                                                            ),

                                                            onPressed: () async {
                                                              await supabase
                                                                  .auth
                                                                  .signOut();

                                                              if (!context
                                                                  .mounted)
                                                                return;

                                                              showDialog(
                                                                context:
                                                                    context,
                                                                barrierDismissible:
                                                                    false,
                                                                builder: (context) {
                                                                  Future.delayed(
                                                                    const Duration(
                                                                      seconds:
                                                                          2,
                                                                    ),
                                                                    () {
                                                                      Navigator.pushAndRemoveUntil(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (_) =>
                                                                              const WelcomePage(),
                                                                        ),
                                                                        (
                                                                          route,
                                                                        ) =>
                                                                            false,
                                                                      );
                                                                    },
                                                                  );

                                                                  return Dialog(
                                                                    shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            25,
                                                                          ),
                                                                    ),
                                                                    child: Container(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                            25,
                                                                          ),
                                                                      decoration: BoxDecoration(
                                                                        color: Theme.of(
                                                                          context,
                                                                        ).cardColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                              25,
                                                                            ),
                                                                      ),
                                                                      child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Container(
                                                                            padding: const EdgeInsets.all(
                                                                              15,
                                                                            ),
                                                                            decoration: const BoxDecoration(
                                                                              color: Color(
                                                                                0xFFFFE4EC,
                                                                              ),
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child: const Icon(
                                                                              Icons.favorite,
                                                                              color: Color(
                                                                                0xFFF06292,
                                                                              ),
                                                                              size: 40,
                                                                            ),
                                                                          ),

                                                                          const SizedBox(
                                                                            height:
                                                                                20,
                                                                          ),

                                                                          Text(
                                                                            "Terima Kasih 💖",
                                                                            style: GoogleFonts.poppins(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                          ),

                                                                          const SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),

                                                                          Text(
                                                                            "Terima kasih telah menggunakan HabitBloom.\nSampai jumpa lagi!",
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: GoogleFonts.poppins(
                                                                              fontSize: 14,
                                                                              color: Colors.grey[700],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },

                                                            child: Text(
                                                              "Ya, Logout",
                                                              style: GoogleFonts.poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },

                                  label: Text(
                                    "Logout",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            tooltip: "Profile",
          ),
        ],
      ),

      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: loadHabits,
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  padding: const EdgeInsets.only(bottom: 80),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$greeting $username 👋",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.3,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            DateTime.now().toString().substring(0, 10),
                            style: GoogleFonts.poppins(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                          ),

                          const SizedBox(height: 16),

                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.05),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.auto_awesome,
                                  color: Colors.pinkAccent,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    todayQuote,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.grey[700],
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 16),

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).cardColor,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.05,
                                        ),
                                        blurRadius: 8,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 26,
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        "$completedCount",
                                        style: GoogleFonts.poppins(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Completed",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(width: 16),

                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).cardColor,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.05,
                                        ),
                                        blurRadius: 8,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.analytics,
                                        color: Colors.pink,
                                        size: 26,
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        "${completionRate.toStringAsFixed(0)}%",
                                        style: GoogleFonts.poppins(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Rate",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 16),

                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "$completedCount / ${habits.length} Completed",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TweenAnimationBuilder(
                            duration: const Duration(milliseconds: 600),
                            tween: Tween<double>(
                              begin: 0,
                              end: habits.isEmpty
                                  ? 0
                                  : completedCount / habits.length,
                            ),
                            builder: (context, value, _) {
                              return LinearProgressIndicator(
                                value: value,
                                color: Colors.pinkAccent,
                                backgroundColor:
                                    Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white24
                                    : Colors.black12,
                                minHeight: 10,
                                borderRadius: BorderRadius.circular(30),
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Today's Habits",
                          style: GoogleFonts.poppins(
                            color: Colors.pink,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    if (selectedCategory != "Semua")
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Filter: $selectedCategory",
                                style: GoogleFonts.poppins(
                                  color: Colors.pink,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 6),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedCategory = "Semua";
                                  });
                                },
                                child: const Icon(Icons.close, size: 16),
                              ),
                            ],
                          ),
                        ),
                      ),

                    const SizedBox(height: 16),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            searchQuery = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Search habits...",
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: Theme.of(context).cardColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    Column(
                      children: [
                        if (filteredHabits.isEmpty &&
                            searchQuery.isEmpty &&
                            selectedCategory == "Semua") ...[
                          const SizedBox(height: 80),

                          Icon(
                            Icons.track_changes,
                            size: 90,
                            color: Colors.pink.shade200,
                          ),

                          const SizedBox(height: 20),

                          Text(
                            "Belum ada habit",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            "Silakan klik tombol + untuk menambah habit",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),

                          const SizedBox(height: 40),
                        ],

                        if (filteredHabits.isEmpty &&
                            searchQuery.isNotEmpty) ...[
                          const SizedBox(height: 80),

                          Icon(
                            Icons.search_off,
                            size: 90,
                            color: Colors.grey.shade400,
                          ),

                          const SizedBox(height: 20),

                          Text(
                            "Habit tidak ditemukan",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            "Coba cari dengan kata lain",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),

                          const SizedBox(height: 20),

                          ElevatedButton.icon(
                            icon: const Icon(Icons.refresh),
                            label: Text(
                              "Reset Pencarian",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                searchQuery = "";
                              });
                            },
                          ),

                          const SizedBox(height: 40),
                        ],

                        if (filteredHabits.isEmpty &&
                            searchQuery.isEmpty &&
                            selectedCategory != "Semua") ...[
                          const SizedBox(height: 80),

                          Icon(
                            Icons.category_outlined,
                            size: 90,
                            color: Colors.purple.shade200,
                          ),

                          const SizedBox(height: 20),

                          Text(
                            "Tidak ada habit untuk kategori ini",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            "Coba pilih kategori lain",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),

                          const SizedBox(height: 20),

                          ElevatedButton.icon(
                            icon: const Icon(Icons.filter_alt_off),
                            label: Text(
                              "Reset Filter",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                selectedCategory = "Semua";
                              });
                            },
                          ),

                          const SizedBox(height: 40),
                        ],

                        if (pendingHabits.isNotEmpty) ...[
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: pendingHabits.length,
                            itemBuilder: (context, index) {
                              final habit = pendingHabits[index];

                              return HabitCard(
                                habit: habit,
                                onToggle: loadHabits,
                                onEdit: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          HabitFormPage(habit: habit),
                                    ),
                                  );
                                  loadHabits();
                                },
                                onDelete: () {
                                  showDeleteConfirmation(habit);
                                },
                              );
                            },
                          ),
                        ],

                        if (completedHabits.isNotEmpty) ...[
                          const SizedBox(height: 30),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Completed Today 🎉",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 8),

                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: completedHabits.length,
                            itemBuilder: (context, index) {
                              final habit = completedHabits[index];

                              return HabitCard(
                                habit: habit,
                                onToggle: loadHabits,
                                onEdit: () {},
                                onDelete: () {
                                  showDeleteConfirmation(habit);
                                },
                              );
                            },
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const HabitFormPage()),
          );

          loadHabits();
        },
      ),
    );
  }
}
