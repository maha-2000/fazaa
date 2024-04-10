import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../constans.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  itemCount: demo_data.length,
                  controller: _pageController,
                  itemBuilder: (context, index) => OnboardContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    demo_data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  // SizedBox(
                  //   height: 60,
                  //   width: 60,
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       _pageController.nextPage(
                  //           duration: const Duration(microseconds: 300),
                  //           curve: Curves.ease);
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       shape: const CircleBorder(),
                  //       backgroundColor: kPrimaryColor,
                  //     ),
                  //     child: const Icon(Icons.arrow_forward,
                  //     color: Colors.white,),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        microseconds: 300,
      ),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : kPrimaryColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(16),
        ),
      );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demo_data = [
  Onboard(
    image: "asset/animations/hands.json",
          title: "jiohjnegiosdfJMK:",
          description: "jhuosdfvklnscoijwdkoaslc  njmx,",
  ),
  Onboard(
    image: "asset/animations/money.json",
    title: "jiohjnegiosdfJMK:",
    description: "jhuosdfvklnscoijwdkoaslc  njmx,",
  ),
  Onboard(
    image: "asset/animations/help&thanks.json",
    title: "jiohjnegiosdfJMK:",
    description: "jhuosdfvklnscoijwdkoaslc  njmx,",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
         SizedBox(
          height: 250,
          width: 250,
          child: Lottie.asset(
            image,
          ),
        ),
        const Spacer(),
        Text(
          title,
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
