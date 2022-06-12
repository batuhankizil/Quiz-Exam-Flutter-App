import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/controllers/question_controller_ingilizce.dart';
import 'package:sinavproje/controllers/question_controller_matematik.dart';
import 'package:sinavproje/models/Questions.dart';
import 'package:sinavproje/models/Questions_ingilizce.dart';

import '../../../constants.dart';
import '../../../models/Questions_matematik.dart';
import 'option.dart';

class QuestionCardIngilizce extends StatelessWidget {
  QuestionCardIngilizce({
    Key? key,
    // it means we have to pass this
    required this.questioningilizce,
  }) : super(key: key);

  final QuestionIngilizce questioningilizce;

  @override
  Widget build(BuildContext context) {
    QuestionControllerIngilizce _controller = Get.put(QuestionControllerIngilizce());
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
            questioningilizce.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            questioningilizce.options.length,
            (index) => Option(
              index: index,
              text: questioningilizce.options[index],
              press: () => _controller.checkAns(questioningilizce, index),
            ),
          ),
        ],
      ),
    );
  }
}
