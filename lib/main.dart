import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vazifa17/controller/quiz_controlle.dart';
import 'package:vazifa17/firebase_option.dart';
import 'package:vazifa17/view/screens/quiz_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return QuizController();
      },
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: QuizScreen(),
        );
      },
    );
  }
}