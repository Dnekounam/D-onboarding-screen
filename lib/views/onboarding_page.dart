import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd8e8e8),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller:  _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder:(context,index){
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image.asset(_controller.onboardingPages[index].imageAsset),
                    const SizedBox(height: 32.0),
                    Text(_controller.onboardingPages[index].title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500)),
                    SizedBox(height: 32.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: Text(_controller.onboardingPages[index].description,textAlign: TextAlign.center,style: TextStyle(fontSize: 18)),
                    )
                  ],
                ),
              );
            }),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(_controller.onboardingPages.length, (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: _controller .selectedPageIndex.value == index ? Color(0xffe2474b) : Color(0xffa8d0da),
                        shape: BoxShape.circle
                      ),
                    );
                  }
                ),
                ),

              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                backgroundColor: const Color(0xff406d96),
                elevation: 0,
                onPressed:_controller.forwardAction,
                child: Obx((){
                  return Text(_controller.isLastPage ? 'Start':'Next');
                }),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
