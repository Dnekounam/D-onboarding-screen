import 'package:app_omboarding/models/onboarding_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController
{
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();
  forwardAction()
  {
    if(isLastPage) {
      //go to login page
    }else
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }




  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/anxiety2.png', 'Why are you nervous?', 'You miss your class for some reasons??'),
    OnboardingInfo('assets/problem.png','Dont worry!!','We,your teacher and classmates have your back '),
    OnboardingInfo('assets/customer-service.png', 'You say how??', 'Thats too easy all you need is signup in this application and access to all notes,voices,homework of your courses!!')



  ];
}