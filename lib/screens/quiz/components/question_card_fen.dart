import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/controllers/question_controller_matematik.dart';
import 'package:sinavproje/models/Questions.dart';
import 'package:sinavproje/models/Questions_sosyal.dart';
import 'package:sinavproje/screens/quiz/components/option_matematik.dart';

import '../../../constants.dart';
import '../../../controllers/question_controller_fen.dart';
import '../../../controllers/question_controller_sosyal.dart';
import '../../../models/Questions_fen.dart';
import '../../../models/Questions_matematik.dart';
import 'option.dart';
import 'option_fen.dart';
import 'option_sosyal.dart';

class QuestionCardFen extends StatelessWidget {
  QuestionCardFen({
    Key? key,
    // it means we have to pass this
    required this.questionfen,
  }) : super(key: key);

  final QuestionFen questionfen;

  @override
  Widget build(BuildContext context) {
    QuestionControllerFen _controller = Get.put(QuestionControllerFen());
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
            questionfen.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            questionfen.options.length,
            (index) => OptionFen(
              index: index,
              text: questionfen.options[index],
              press: () => _controller.checkAns(questionfen, index),
            ),
          ),
        ],
      ),
    );
  }
}
