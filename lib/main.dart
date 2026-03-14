import 'package:flutter/material.dart';
import 'config/supabase_config.dart';
import 'pages/welcome_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  await initSupabase();

  runApp(const MyApp());
}

const primaryColor = Color(0xFFCE93D8);
const accentColor = Color(0xFFF06292);
const backgroundColor = Color(0xFFFFF0F6);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeMode,
      builder: (context, mode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Habit Builder",

          themeMode: mode,

          theme: ThemeData(
            brightness: Brightness.light,

            primaryColor: primaryColor,

            scaffoldBackgroundColor: backgroundColor,

            cardColor: Colors.white,

            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),

            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            textTheme: const TextTheme(
              bodyMedium: TextStyle(color: Colors.black87),
            ),
          ),

          darkTheme: ThemeData(
            brightness: Brightness.dark,

            primaryColor: primaryColor,

            scaffoldBackgroundColor: const Color(0xFF121212),

            cardColor: const Color(0xFF1E1E1E),

            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),

            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            textTheme: const TextTheme(
              bodyMedium: TextStyle(color: Colors.white),
            ),
          ),

          home: const WelcomePage(),
        );
      },
    );
  }
}
