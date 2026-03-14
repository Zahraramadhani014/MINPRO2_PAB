import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'register_page.dart';
import '../main.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  late Animation<double> titleAnimation;
  late Animation<double> quoteAnimation;
  late Animation<Offset> buttonAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    titleAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    quoteAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: const Interval(0.4, 1)),
    );

    buttonAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                isDark
                    ? Colors.black.withValues(alpha: 0.3)
                    : Colors.transparent,
                BlendMode.darken,
              ),
              child: Image.asset("assets/bg1.png", fit: BoxFit.cover),
            ),
          ),

          Container(
            color: isDark
                ? Colors.black.withValues(alpha: 0.55)
                : Colors.white.withValues(alpha: 0.15),
          ),

          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: Icon(
                themeMode.value == ThemeMode.dark
                    ? Icons.light_mode
                    : Icons.dark_mode,
                color: isDark ? Colors.white : Colors.black,
              ),
              onPressed: () {
                themeMode.value = themeMode.value == ThemeMode.dark
                    ? ThemeMode.light
                    : ThemeMode.dark;
              },
            ),
          ),

          Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Icon(Icons.spa, color: Colors.pinkAccent, size: 60),

                        const SizedBox(height: 20),

                        FadeTransition(
                          opacity: titleAnimation,
                          child: Text(
                            "Selamat datang di",
                            style: GoogleFonts.poppins(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: isDark ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        FadeTransition(
                          opacity: titleAnimation,
                          child: ShaderMask(
                            shaderCallback: (bounds) {
                              return const LinearGradient(
                                colors: [Color(0xFFFF9ECF), Color(0xFFF06292)],
                              ).createShader(bounds);
                            },
                            child: Text(
                              "HabitBloom",
                              style: GoogleFonts.orbitron(
                                fontSize: 46,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 20,
                                    color: Color(0xFFF06292),
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 6),

                        FadeTransition(
                          opacity: titleAnimation,
                          child: Text(
                            "Habit Builder & Consistency Tracker App",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: isDark ? Colors.white70 : Colors.black87,
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        FadeTransition(
                          opacity: quoteAnimation,
                          child: Text(
                            "Track your habits. Build discipline. Achieve your goals.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: isDark ? Colors.white70 : Colors.black87,
                            ),
                          ),
                        ),

                        const SizedBox(height: 45),

                        SlideTransition(
                          position: buttonAnimation,
                          child: SizedBox(
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                ),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 6,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const LoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Login",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        Container(
                          width: 80,
                          height: 2,
                          color: isDark ? Colors.white30 : Colors.black38,
                        ),

                        const SizedBox(height: 15),

                        FadeTransition(
                          opacity: quoteAnimation,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text(
                                "Belum punya akun? ",
                                style: GoogleFonts.poppins(
                                  color: isDark ? Colors.white : Colors.black87,
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const RegisterPage(),
                                    ),
                                  );
                                },

                                child: Text(
                                  "Register",
                                  style: GoogleFonts.poppins(
                                    color: isDark
                                        ? Colors.white
                                        : Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),

                child: Column(
                  children: [
                    Text(
                      "© 2026 HabitBloom",
                      style: GoogleFonts.poppins(
                        color: isDark ? Colors.white38 : Colors.black54,
                        fontSize: 12,
                      ),
                    ),

                    Text(
                      "Build better habits everyday",
                      style: GoogleFonts.poppins(
                        color: isDark ? Colors.white38 : Colors.black54,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
