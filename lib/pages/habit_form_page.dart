import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/habit_model.dart';
import '../services/habit_services.dart';

class HabitFormPage extends StatefulWidget {
  final Habit? habit;

  const HabitFormPage({super.key, this.habit});

  @override
  State<HabitFormPage> createState() => _HabitFormPageState();
}

class _HabitFormPageState extends State<HabitFormPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final targetController = TextEditingController();
  final notesController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    targetController.dispose();
    notesController.dispose();
    super.dispose();
  }

  String? category;

  bool isLoading = false;

  String? initialName;
  String? initialTarget;
  String? initialNotes;
  String? initialCategory;

  final HabitService service = HabitService();

  final List<String> categories = [
    "Akademik",
    "Kesehatan",
    "Produktivitas",
    "Fitness",
    "Mental Health",
    "Personal Development",
    "Morning Routine",
    "Spiritual",
  ];

  @override
  void initState() {
    super.initState();

    nameController.addListener(() {
      setState(() {});
    });

    targetController.addListener(() {
      setState(() {});
    });

    if (widget.habit != null) {
      nameController.text = widget.habit!.name;
      targetController.text = widget.habit!.target;
      notesController.text = widget.habit!.notes;
      category = widget.habit!.category;

      initialName = widget.habit!.name;
      initialTarget = widget.habit!.target;
      initialNotes = widget.habit!.notes;
      initialCategory = widget.habit!.category;
    }
  }

  Widget buildHabitHeader() {
    String name = nameController.text.isEmpty
        ? "Habit Baru"
        : nameController.text;

    String cat = category ?? "Kategori belum dipilih";

    String target = targetController.text.isEmpty
        ? "Target belum diisi"
        : targetController.text;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF1E1E1E)
            : Colors.white.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white.withValues(alpha: 0.05)
              : Colors.black.withValues(alpha: 0.05),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Color(0xFFFFE4EC),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.track_changes,
              color: Color(0xFFF06292),
              size: 30,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  "Habit $cat",
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.grey[400]
                        : Colors.grey[700],
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  "Target: $target",
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.grey[400]
                        : Colors.grey[700],
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool hasChanges() {
    return nameController.text.trim() != (initialName ?? "").trim() ||
        targetController.text.trim() != (initialTarget ?? "").trim() ||
        notesController.text.trim() != (initialNotes ?? "").trim() ||
        category != initialCategory;
  }

  bool isFormEmpty() {
    return nameController.text.trim().isEmpty &&
        targetController.text.trim().isEmpty &&
        notesController.text.trim().isEmpty &&
        category == null;
  }

  Future<bool> showUnsavedDialog() async {
    return await showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              backgroundColor: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: SizedBox(
                width: 420,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /// ICON WARNING
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFE4EC),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.warning_amber_rounded,
                          color: Color(0xFFF06292),
                          size: 40,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Text(
                        "Perubahan belum disimpan",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Kamu memiliki perubahan yang belum disimpan.\nYakin ingin keluar?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(color: Colors.grey[700]),
                      ),

                      const SizedBox(height: 25),

                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: Color(0xFFF06292),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text(
                                "Lanjut Edit",
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
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: Text(
                                "Tetap Keluar",
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
        ) ??
        false;
  }

  void resetForm() {
    if (widget.habit == null) {
      _formKey.currentState?.reset();
      nameController.clear();
      targetController.clear();
      notesController.clear();

      setState(() {
        category = null;
      });
    } else {
      setState(() {
        nameController.text = initialName ?? "";
        targetController.text = initialTarget ?? "";
        notesController.text = initialNotes ?? "";
        category = initialCategory;
      });
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: const Color(0xFFF06292),
        content: Row(
          children: [
            const Icon(Icons.check_circle_outline, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                "Form berhasil di-reset",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showResetConfirmation() async {
    bool confirm =
        await showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              backgroundColor: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: SizedBox(
                width: 420,
                child: Padding(
                  padding: const EdgeInsets.all(25),
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
                          Icons.restart_alt,
                          color: Color(0xFFF06292),
                          size: 40,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Text(
                        "Reset Form",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Yakin ingin menghapus semua input?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(color: Colors.grey[700]),
                      ),

                      const SizedBox(height: 25),

                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: Color(0xFFF06292),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context, false);
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
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: Text(
                                "Reset",
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
        ) ??
        false;

    if (!confirm) return;

    resetForm();
  }

  void showEmptyResetInfo() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: SizedBox(
            width: 420,
            child: Padding(
              padding: const EdgeInsets.all(25),
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
                      Icons.info_outline,
                      color: Color(0xFFF06292),
                      size: 40,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Form kosong",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Field kosong. Tidak ada data yang perlu di-reset.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: Colors.grey[700]),
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

  void showSuccessPopup(String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          backgroundColor: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: SizedBox(
            width: 420,
            child: Padding(
              padding: const EdgeInsets.all(25),
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
                    message,
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
                      ),
                      onPressed: () {
                        Navigator.pop(context);
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

  Future<void> submit() async {
    if (!_formKey.currentState!.validate()) return;

    if (widget.habit != null && !hasChanges()) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: SizedBox(
              width: 420,
              child: Padding(
                padding: const EdgeInsets.all(25),
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
                        Icons.info_outline,
                        color: Color(0xFFF06292),
                        size: 40,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Tidak ada perubahan data",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "Anda akan diarahkan ke halaman Home Page.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(color: Colors.grey[700]),
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

      return;
    }

    setState(() {
      isLoading = true;
    });

    Habit habit = Habit(
      name: nameController.text,
      category: category!,
      target: targetController.text,
      notes: notesController.text,
    );

    if (widget.habit == null) {
      await service.addHabit(habit);
    } else {
      await service.updateHabit(widget.habit!.id!, habit);
    }

    if (!mounted) return;

    setState(() {
      isLoading = false;
    });

    showSuccessPopup(
      widget.habit == null
          ? "Habit berhasil ditambahkan"
          : "Habit berhasil diperbarui",
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !hasChanges(),
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        final navigator = Navigator.of(context);

        bool exit = await showUnsavedDialog();

        if (!mounted) return;

        if (exit) {
          navigator.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (!hasChanges()) {
                Navigator.pop(context);
                return;
              }

              final navigator = Navigator.of(context);

              bool exit = await showUnsavedDialog();

              if (!mounted) return;

              if (exit) {
                navigator.pop();
              }
            },
          ),
          title: Text(
            widget.habit == null ? "Tambah Habit" : "Edit Habit",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset("assets/bg4.png", fit: BoxFit.cover),
            ),
            Container(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black.withValues(alpha: 0.4)
                  : Colors.black.withValues(alpha: 0.1),
            ),
            Center(
              child: SingleChildScrollView(
                child: Container(
                  width: 420,
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        buildHabitHeader(),

                        SizedBox(height: 10),

                        Text(
                          "Form Habit",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          "* Field bertanda (*) wajib diisi",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                ? Colors.grey[400]
                                : Colors.grey[600],
                            fontStyle: FontStyle.italic,
                          ),
                        ),

                        const SizedBox(height: 20),

                        TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.flag,
                              color: Color(0xFFF06292),
                            ),
                            labelText: "Nama Habit *",
                            hintText: "Contoh: Gym, Baca Buku, Lari 5km",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Nama habit wajib diisi";
                            }

                            if (value.trim().length < 2) {
                              return "Nama habit terlalu pendek";
                            }

                            return null;
                          },
                        ),

                        const SizedBox(height: 16),

                        DropdownButtonFormField<String>(
                          initialValue: category,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.category,
                              color: Color(0xFFF06292),
                            ),
                            labelText: "Kategori *",
                            hintText: "Pilih Kategori",
                            border: OutlineInputBorder(),
                          ),
                          items: categories.map((e) {
                            return DropdownMenuItem(value: e, child: Text(e));
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              category = value;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return "Kategori wajib dipilih";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 16),

                        TextFormField(
                          controller: targetController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.track_changes,
                              color: Color(0xFFF06292),
                            ),
                            labelText: "Target Harian *",
                            hintText: "Contoh: 2 jam, 30 menit, 10 halaman",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Target harian wajib diisi";
                            }

                            if (value.trim().length < 2) {
                              return "Target terlalu pendek";
                            }

                            return null;
                          },
                        ),

                        const SizedBox(height: 16),

                        TextFormField(
                          controller: notesController,
                          maxLines: 3,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.notes,
                              color: Color(0xFFF06292),
                            ),
                            labelText: "Catatan (Opsional)",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value != null && value.length > 200) {
                              return "Catatan maksimal 200 karakter";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 25),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF06292),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color:
                                      Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            onPressed: isLoading ? null : submit,
                            child: isLoading
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    widget.habit == null
                                        ? "Tambah Habit"
                                        : "Update Habit",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () async {
                              if (widget.habit == null) {
                                if (isFormEmpty()) {
                                  showEmptyResetInfo();
                                  return;
                                }

                                showResetConfirmation();
                              } else {
                                if (!hasChanges()) {
                                  Navigator.pop(context);
                                  return;
                                }

                                final navigator = Navigator.of(context);

                                bool exit = await showUnsavedDialog();

                                if (!mounted) return;

                                if (exit) {
                                  navigator.pop();
                                }
                              }
                            },
                            child: Text(
                              widget.habit == null ? "Reset Form" : "Batal",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
