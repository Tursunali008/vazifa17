import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vazifa17/services/quiz_servises.dart';

class QuizController extends ChangeNotifier{
  final _quizeFirebaseServices = QuizFirebaseServices();

  Stream<QuerySnapshot> get list {
    return _quizeFirebaseServices.getQuizes();
  }

  void addQuize(String questionText, List options, num correctAnswerIndex) {
    _quizeFirebaseServices.addQuiz(
      questionText,
      options,
      correctAnswerIndex,
    );
  }
}
