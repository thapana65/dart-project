import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });

  void display() {
    print(questionText);
    for (int i = 0; i < options.length; i++) {
      print('${i + 1}. ${options[i]}');
    }
  }

  bool isAnswerCorrect(int userAnswer) {
    return userAnswer == correctAnswerIndex;
  }
}

class Quiz {
  List<Question> questions;
  int score;

  Quiz({ required this.questions }) : score = 0;

  void startQuiz() {
    print('Welcome to the Quiz Game!\n');
    for (var question in questions) {
      question.display();
      stdout.write('Enter your answer (1-${question.options.length}): ');

      int? userAnswer = int.tryParse(stdin.readLineSync() ?? '');

      if (userAnswer != null && userAnswer >= 1 && userAnswer <= question.options.length) {
        if (question.isAnswerCorrect(userAnswer - 1)) {
          print('Correct!\n');
          score++;
        } else {
          print('Wrong answer. The correct amswer is: ${question.options[question.correctAnswerIndex]}\n');
        } 
      } else {
        print('Invalid input. Please enter a valid number between 1 and ${question.options.length}.\n');
      }
    }

      print('Quiz Complete! Your final score is: $score / ${questions.length}');
  }
}

void main() {
  List<Question> questionList = [
    Question(
      questionText: 'What is the capital of France?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText: 'Which programming language is known as the "mother of all languages"?',
      options: ['Java', 'C', 'Python', 'C++'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText: 'Who developed the theory of relativity?',
      options: ['Isaac Newton', 'Albert Einstein', 'Nikola Tesla', 'Galileo Galilei'],
      correctAnswerIndex: 1,
    ),
  ];

  Quiz quiz = Quiz(questions: questionList);
  quiz.startQuiz();
}