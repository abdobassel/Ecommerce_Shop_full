import 'package:ecommerce_flutter/data/datasource/static/static.dart';
import 'package:ecommerce_flutter/main.dart';
import 'package:ecommerce_flutter/view/widgets/controller_boarding.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          TextButton(
              onPressed: () async {
                print('save cache and navigator true');

                shared.setBool('onboard', true);
              },
              child: Text('Skip'))
        ]),
        body: Padding(
            padding: EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  physics: PageScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (index) {
                    if (index == onboardingList.length - 1) {
                      setState(() {
                        isLastPage = true;
                        print(isLastPage);
                      });
                    } else {
                      setState(() {
                        isLastPage = false;
                        print(isLastPage);
                      });
                    }
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                          onboardingList[index].title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          onboardingList[index].img,
                          fit: BoxFit.fill,
                          height: 400,
                          width: 350,
                        ),
                        SizedBox(height: 25),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          child: Text(onboardingList[index].body,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    );
                  },
                  itemCount: onboardingList.length,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SmoothPageIndicator(
                    controller: pageController,
                    count: onboardingList.length,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 9,
                      dotWidth: 8,
                      expansionFactor: 5,
                      spacing: 4,
                    )),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLastPage) {
                      print('LAst and navigator');
                    } else {
                      pageController.nextPage(
                          duration: Duration(milliseconds: 600),
                          curve: Curves.easeIn);
                    }
                  },
                  child: Icon(Icons.arrow_forward_ios),
                )
              ]),
              SizedBox(width: 15)
            ])));
  }
}
