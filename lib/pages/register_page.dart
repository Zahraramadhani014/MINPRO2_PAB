import 'package:flutter/material.dart';
import '../main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  final supabase = Supabase.instance.client;

  bool hidePassword = true;
  bool isLoading = false;
  bool passwordMatch = false;

  Future<void> register() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await supabase.auth.signUp(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (!mounted) return;

      showDialog(
        context: context,
        barrierDismissible: false,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.15),
                        blurRadius: 20,
                        spreadRadius: 2,
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
                        "Registrasi Berhasil!",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Akun berhasil dibuat.\nSilakan login.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
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
            ),
          );
        },
      );
    } catch (e) {
      if (!mounted) return;

      String message = "Register gagal. Silakan coba lagi.";

      if (e is AuthException) {
        if (e.message.contains("already registered")) {
          message =
              "Maaf, email kamu sudah digunakan. Silakan menggunakan email yang lain.";
        }
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: const Color(0xFFF06292),
          content: Row(
            children: [
              const Icon(Icons.error_outline, color: Colors.white),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
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

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: Icon(
              themeMode.value == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              themeMode.value = themeMode.value == ThemeMode.dark
                  ? ThemeMode.light
                  : ThemeMode.dark;
            },
          ),
        ],
      ),

      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset("assets/bg3.png", fit: BoxFit.cover),
          ),

          Container(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black.withValues(alpha: 0.5)
                : Colors.white.withValues(alpha: 0.3),
          ),

          Center(
            child: Container(
              width: 420,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 20,
                  ),
                ],
              ),

              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFE4EC),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person_add,
                        size: 40,
                        color: Color(0xFFF06292),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Create Account",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      "Create your account to start building habits",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,

                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email *",
                        hintText: "example@gmail.com",
                        border: OutlineInputBorder(),
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email wajib diisi";
                        }

                        final gmailRegex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@gmail\.com$',
                        );

                        if (!gmailRegex.hasMatch(value)) {
                          return "Email harus menggunakan format @gmail.com";
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      controller: passwordController,
                      obscureText: hidePassword,
                      maxLength: 20,

                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        labelText: "Password *",
                        border: const OutlineInputBorder(),

                        suffixIcon: IconButton(
                          icon: Icon(
                            hidePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                        ),
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password wajib diisi";
                        }

                        if (value.length < 8) {
                          return "Password minimal 8 karakter";
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      controller: confirmPasswordController,
                      obscureText: hidePassword,

                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        labelText: "Konfirmasi Password *",
                        border: const OutlineInputBorder(),

                        suffixIcon: passwordMatch
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            : IconButton(
                                icon: Icon(
                                  hidePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                              ),
                      ),

                      onChanged: (value) {
                        setState(() {
                          passwordMatch = value == passwordController.text;
                        });
                      },

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Konfirmasi password wajib diisi";
                        }

                        if (value != passwordController.text) {
                          return "Konfirmasi password belum cocok";
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 26),

                    SizedBox(
                      width: double.infinity,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          backgroundColor: const Color(0xFFF06292),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 3,
                        ),

                        onPressed: isLoading ? null : register,

                        child: isLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
                                "Register",
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
        ],
      ),
    );
  }
}
