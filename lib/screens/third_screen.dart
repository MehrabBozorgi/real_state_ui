import 'package:flutter/material.dart';
import 'package:real_state_ui/tools/text_style.dart';

import '../tools/border.dart';
import '../tools/colors.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'hero 1',
            child: Image.asset(
              'assets/images/pic1.jpg',
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          const ButtonsWidget(),
          Positioned(
            bottom: 50,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: primaryColor,
                    offset: Offset(5, 15),
                    blurRadius: 45,
                  ),
                ],
              ),
              width: width * 0.9,
              margin: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('More Picture', style: textColor5),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: getBorderRadiusWidget(context, 0.02),
                        child: Image.asset(
                          'assets/images/pic2.jpg',
                          width: width * 0.28,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: getBorderRadiusWidget(context, 0.02),
                        child: Image.asset(
                          'assets/images/pic3.jpg',
                          width: width * 0.28,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: getBorderRadiusWidget(context, 0.02),
                        child: Image.asset(
                          'assets/images/pic4.jpg',
                          width: width * 0.28,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(width * 0.03),
              margin: EdgeInsets.all(width * 0.03),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: getBorderRadiusWidget(context, 0.03),
              ),
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(width * 0.03),
            margin: EdgeInsets.all(width * 0.03),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: getBorderRadiusWidget(context, 0.03),
            ),
            child: const Icon(Icons.favorite_border, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
