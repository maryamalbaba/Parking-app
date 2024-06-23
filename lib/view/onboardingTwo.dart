import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:training2/view/onboardingThree.dart';

class Onboardingtwo extends StatelessWidget {
  const Onboardingtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 208,
              width: 373,
              child: Image.asset("assets/Atanytime.png").animate(
                  effects: [FadeEffect(delay: Duration(milliseconds: 5))])),
          Text(
            "At anytime\n",
            style: TextStyle(fontSize: 30, color: Color(0xff414141)),
          ).animate(effects: [FadeEffect(delay: Duration(milliseconds: 5))]),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.",
              style: TextStyle(fontSize: 14, color: Color(0xff414141)),
            ).animate(effects: [FadeEffect(delay: Duration(milliseconds: 5))]),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, bottom: 3),
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Color(0xff08B783),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 86,
                width: 86,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Onboardingthree()));
                  },
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                    color: Color(0xff08B783),
                    backgroundColor: Color(0xffB9E5D1),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
