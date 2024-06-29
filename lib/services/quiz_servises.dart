import 'package:cloud_firestore/cloud_firestore.dart';

class QuizFirebaseServices {
  final _quizeCollection = FirebaseFirestore.instance.collection("quizes");

  Stream<QuerySnapshot> getQuizes() async* {
    yield* _quizeCollection.snapshots();
  }

  void addQuiz(String questionText, List options, num correctAnswerIndex) {
    _quizeCollection.add({
      "questionText": questionText,
      "options": options,
      "correctAnswerIndex": correctAnswerIndex,
    });
  }

  
}
