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
    OnboardingInfo('assets/icons8-book-reading-96.png', 'Dont Readnig your book?', 'You can easily hear your teacher voice'),
    OnboardingInfo('assets/icons8-knowledge-sharing-80.png','Share your knowledge', 'share your knowledge and opinion with others here '),
    OnboardingInfo('assets/icons8-pixar-lamp-80.png', 'Be Precisley', 'Focus on every thing,readi a lot and enjoy what you get')



  ];
}