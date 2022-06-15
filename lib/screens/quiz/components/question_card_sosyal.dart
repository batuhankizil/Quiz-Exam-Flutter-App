import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/controllers/question_controller_matematik.dart';
import 'package:sinavproje/models/Questions.dart';
import 'package:sinavproje/models/Questions_sosyal.dart';
import 'package:sinavproje/screens/quiz/components/option_matematik.dart';

import '../../../constants.dart';
import '../../../controllers/question_controller_sosyal.dart';
import '../../../models/Questions_matematik.dart';
import 'option.dart';
import 'option_sosyal.dart';

class QuestionCardSosyal extends StatelessWidget {
  QuestionCardSosyal({
    Key? key,
    // it means we have to pass this
    required this.questionsosyal,
  }) : super(key: key);

  final QuestionSosyal questionsosyal;

  @override
  Widget build(BuildContext context) {
    QuestionControllerSosyal _controller = Get.put(QuestionControllerSosyal());
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
            questionsosyal.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            questionsosyal.options.length,
            (index) => OptionSosyal(
              index: index,
              text: questionsosyal.options[index],
              press: () => _controller.checkAns(questionsosyal, index),
            ),
          ),
        ],
      ),
    );
  }
}
