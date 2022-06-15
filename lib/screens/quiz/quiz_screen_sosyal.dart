import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/screens/quiz/components/body_matematik.dart';
import 'package:sinavproje/screens/quiz/components/body_sosyal.dart';

import '../../controllers/question_controller_matematik.dart';
import '../../controllers/question_controller_sosyal.dart';
import 'components/body.dart';

class QuizScreenSosyal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionControllerSosyal _controller = Get.put(QuestionControllerSosyal());
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
      body: BodySosyal(),
    );
  }
}
