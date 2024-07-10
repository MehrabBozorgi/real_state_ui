import 'package:flutter/material.dart';
import 'package:real_state_ui/screens/second_screen.dart';
import 'package:real_state_ui/tools/border.dart';
import 'package:real_state_ui/tools/colors.dart';

import '../tools/text_style.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              WelcomeSection(),
              SearchBarSection(),
              SizedBox(height: 10),
              CategorySection(),
              SizedBox(height: 20),
              MainSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
            ),
          );
        },
        child: Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: getBorderRadiusWidget(context, 0.05),
                child: Hero(
                  tag: 'hero 1',
                  child: Image.asset(
                    'assets/images/pic1.jpg',
                    width: width,
                    height: height * 0.64,
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
            )
          ],
        ),
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: width * 0.05),
          Column(
            children: [
              Text(
                'home',
                style: textColor2,
              ),
              const CircleAvatar(radius: 5, backgroundColor: primaryColor)
            ],
          ),
          SizedBox(width: width * 0.1),
          Text(
            'motel',
            style: textColor2,
          ),
          SizedBox(width: width * 0.1),
          Text(
            'hotel',
            style: textColor2,
          ),
          SizedBox(width: width * 0.1),
          Text(
            'bed room',
            style: textColor2,
          ),
          SizedBox(width: width * 0.1),
          Text(
            'Hostel',
            style: textColor2,
          ),
          SizedBox(width: width * 0.1),
        ],
      ),
    );
  }
}

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: width * 0.025),
      margin: EdgeInsets.all(width * 0.02),
      decoration: BoxDecoration(
        color: searchBarColor,
        borderRadius: getBorderRadiusWidget(context, 0.02),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, size: 28, color: greyColor),
          SizedBox(width: width * 0.01),
          const Text('Search in Store', style: textColor9),
        ],
      ),
    );
  }
}

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: width * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: getBorderRadiusWidget(context, 0.9),
                child: Image.asset(
                  'assets/images/pic0.jpg',
                  width: width * 0.15,
                  height: width * 0.15,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: width * 0.015),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Welcome', style: textColor9),
                  Text('Mehrab Bozorgi', style: textColor3),
                ],
              ),
            ],
          ),
          Container(
            // width: 45,
            // height: 45,
            padding: EdgeInsets.all(width * 0.025),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: getBorderRadiusWidget(context, 0.02),
            ),
            child: const Icon(Icons.notifications, size: 28),
          ),
        ],
      ),
    );
  }
}
