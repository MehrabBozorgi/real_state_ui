import 'package:flutter/material.dart';
import 'package:real_state_ui/screens/third_screen.dart';

import '../tools/border.dart';
import '../tools/colors.dart';
import '../tools/text_style.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    const String text =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum';
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainImage(width: width, height: height),
              SizedBox(height: height * 0.03),
              Text('Description', style: textColor2),
              SizedBox(height: height * 0.01),
              const Text(text, style: textColor11),
              SizedBox(height: height * 0.01),
              Text('Home Options', style: textColor2),
              SizedBox(
                width: width,
                child: const Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    HomeOptionWidget(icon: Icons.bed, text: '4'),
                    HomeOptionWidget(icon: Icons.local_parking, text: '2'),
                    HomeOptionWidget(icon: Icons.tv, text: '3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeOptionWidget extends StatelessWidget {
  const HomeOptionWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width * 0.25,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.01),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: searchBarColor, borderRadius: getBorderRadiusWidget(context, 0.02)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon),
          SizedBox(width: width * 0.02),
          Text(text, style: textColor3),
        ],
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: getBorderRadiusWidget(context, 0.05),
          child: Hero(
            tag: 'hero 1',
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/pic1.jpg',
                width: width,
                height: height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: width * 0.9,
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: getBorderRadiusWidget(context, 0.05),
              gradient: const LinearGradient(
                colors: [
                  Colors.transparent,
                  primaryColor,
                  primaryColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kanlaya\'s Eryie',
                  style: textColor6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                        ),
                        Text(
                          'Pang Mapha, Thailand',
                          style: textColor7,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('\$100/', style: textColor6),
                        Text('Night', style: textColor8),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
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
      ],
    );
  }
}
