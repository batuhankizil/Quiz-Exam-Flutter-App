import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sinavproje/constants.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/controllers/question_controller_ingilizce.dart';
import 'package:sinavproje/controllers/question_controller_matematik.dart';
import 'package:sinavproje/models/Questions.dart';
import 'package:sinavproje/screens/quiz/components/question_card_ingilizce.dart';
import 'package:sinavproje/screens/quiz/components/question_card_matematik.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class BodyIngilizce extends StatelessWidget {
  const BodyIngilizce({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionControllerIngilizce _questionControllerIngilizce = Get.put(QuestionControllerIngilizce());
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Soru ${_questionControllerIngilizce.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: "/${_questionControllerIngilizce.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionControllerIngilizce.pageController,
                  onPageChanged: _questionControllerIngilizce.updateTheQnNum,
                  itemCount: _questionControllerIngilizce.questions.length,
                  itemBuilder: (context, index) => QuestionCardIngilizce(
                      questioningilizce: _questionControllerIngilizce.questions[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
