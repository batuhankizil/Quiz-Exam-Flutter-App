import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/controllers/question_controller_matematik.dart';
import 'package:sinavproje/models/Questions.dart';
import 'package:sinavproje/screens/quiz/components/option_matematik.dart';

import '../../../constants.dart';
import '../../../models/Questions_matematik.dart';
import 'option.dart';

class QuestionCardMatematik extends StatelessWidget {
   QuestionCardMatematik({
    Key? key,
    // it means we have to pass this
    required this.questionmatematik,
  }) : super(key: key);

  final QuestionMatematik questionmatematik;

  @override
  Widget build(BuildContext context) {
    QuestionControllerMatematik _controller = Get.put(QuestionControllerMatematik());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            questionmatematik.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            questionmatematik.options.length,
            (index) => OptionMatematik(
              index: index,
              text: questionmatematik.options[index],
              press: () => _controller.checkAns(questionmatematik, index),
            ),
          ),
        ],
      ),
    );
  }
}
