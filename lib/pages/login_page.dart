import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home_page.dart';
import '../main.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final supabase = Supabase.instance.client;

  bool isLoading = false;
  bool hidePassword = true;

  Future<void> login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await supabase.auth.signInWithPassword(
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
                          size: 35,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Text(
                        "Login Berhasil!",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        "Selamat datang di HabitBloom",
                        style: GoogleFonts.poppins(),
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

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const HomePage(),
                              ),
                            );
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

      String message = "Login gagal. Silakan coba lagi.";

      if (e is AuthException) {
        if (e.message.toLowerCase().contains("invalid login credentials")) {
          message = "Email atau password salah. Silakan periksa kembali.";
        } else if (e.message.toLowerCase().contains("email not confirmed")) {
          message = "Email belum diverifikasi. Silakan cek email kamu.";
        }
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(20),
          duration: const Duration(seconds: 3),
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
          "Login",
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
            child: Image.asset("assets/bg2.png", fit: BoxFit.cover),
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
                        Icons.lock_outline,
                        size: 40,
                        color: Color(0xFFF06292),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      "Welcome back! Please login to continue",
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
                        labelText: "Email Address*",
                        hintText: "example@gmail.com",
                        border: OutlineInputBorder(),
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email wajib diisi";
                        }

                        final emailRegex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        );

                        if (!emailRegex.hasMatch(value)) {
                          return "Format email tidak valid";
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      controller: passwordController,
                      obscureText: hidePassword,

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

                    const SizedBox(height: 30),

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

                        onPressed: isLoading ? null : login,

                        child: isLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
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
