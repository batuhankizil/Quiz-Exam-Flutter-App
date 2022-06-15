import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/screens/quiz/components/body_matematik.dart';

import '../../controllers/question_controller_matematik.dart';
import 'components/body.dart';

class QuizScreenMatematik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionControllerMatematik _controller = Get.put(QuestionControllerMatematik());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Geç")),
        ],
      ),
      body: BodyMatematik(),
    );
  }
}