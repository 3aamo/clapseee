import 'package:flutter/material.dart';

import 'package:flutter_application_1/ui/auth/auth.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: const ColorScheme.dark(
            primary: Color(0xFF75C2F6),
            onPrimary: Color.fromRGBO(45, 53, 66, 1),
            secondary: Color(0xFF2D3542),
            onSecondary: Color(0x3375C2F6),
            tertiary: Color(0xFFD4ADFC),
            onTertiary: Color(0xFFACBCFF),
            error: Color(0xFFFF657E),
            onError: Color.fromRGBO(255, 229, 116, 1),
            surface: Color.fromRGBO(255, 255, 255, 1),
            onSurface: Color.fromRGBO(234, 234, 234, 1),
            background: Color.fromRGBO(23, 30, 38, 1),
            onBackground: Color(0xFF1F2630),
            primaryContainer: Color.fromRGBO(13, 20, 28, 1),
            secondaryContainer: Color.fromRGBO(122, 135, 158, 1),
            onSecondaryContainer: Color.fromARGB(255, 37, 117, 255),
          ),

          scaffoldBackgroundColor: const Color.fromRGBO(23, 30, 38, 1),
          textTheme: GoogleFonts.robotoTextTheme(const TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              headlineMedium: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              headlineSmall: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              titleSmall: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(23, 30, 38, 1)),
              bodyLarge: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(234, 234, 234, 1)),
              bodyMedium: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(122, 135, 158, 1)),
              displaySmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFD4ADFC),
              ),
              bodySmall: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(122, 135, 158, 1)))),
          useMaterial3: true,
        ),
        home: const AuthScreen());
  }
}
