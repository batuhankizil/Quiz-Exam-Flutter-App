import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/question_controller_ingilizce.dart';
import 'components/body_ingilizce.dart';

class QuizScreenIngilizce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionControllerIngilizce _controller = Get.put(QuestionControllerIngilizce());
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
      body: BodyIngilizce(),
    );
  }
}
