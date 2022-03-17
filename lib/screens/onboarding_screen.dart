import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nft_marketplace/animations/fade_animation.dart';
import 'package:nft_marketplace/animations/page_transition.dart';
import 'package:nft_marketplace/animations/slide_animation.dart';
import 'package:nft_marketplace/constants.dart';
import 'package:nft_marketplace/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final double _padding = 40;
  final _headingStyle = TextStyle(
    fontWeight: FontWeight.w200,
    fontFamily: 'Dsignes',
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: _AppBar(),
            ),

            //Flash
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: FadeAnimation(
                intervalEnd: 0.4,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/flash.svg'),
                    SizedBox(width: 6.w),
                    Text(
                      'Started',
                      style: TextStyle(
                        fontSize: 12.r,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                intervalEnd: 0.6,
                child: FadeAnimation(
                  intervalEnd: 0.6,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 40.r,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Dsignes',
                        color: Colors.black,
                        height: 1.3,
                      ),
                      children: [
                        TextSpan(
                          text: 'Discover ',
                          style: _headingStyle,
                        ),
                        TextSpan(
                          text: 'Rare \nCollections ',
                        ),
                        TextSpan(
                          text: 'of',
                          style: _headingStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: SlideAnimation(
                intervalEnd: 0.6,
                begin: Offset(0, 30),
                child: FadeAnimation(
                  intervalEnd: 0.6,
                  child: Row(
                    children: [
                      Text(
                        'Art & ',
                        style: TextStyle(
                          fontSize: 40.r,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Dsignes',
                          color: Colors.black,
                          height: 1.3,
                        ),
                      ),
                      ColoredText(text: 'NFTs'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: FadeAnimation(
                child: Text(
                  'Digital Marketplace for crypto collectibles and non-fungible tokens',
                  style: bodyTextStyle,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              height: 200.h,
              padding: EdgeInsets.only(left: _padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SlideAnimation(
                    intervalStart: 0.4,
                    begin: Offset(0, 20),
                    child: FadeAnimation(
                      intervalStart: 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          EventStat(
                            title: '5.8M+',
                            subtitle: 'Art Work',
                          ),
                          EventStat(
                            title: '15.2K+',
                            subtitle: 'Artist',
                          ),
                          EventStat(
                            title: '38K+',
                            subtitle: 'Auction',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 60.w),
                  Expanded(
                    child: SlideAnimation(
                      intervalStart: 0.2,
                      child: FadeAnimation(
                        intervalEnd: 0.2,
                        child: Container(
                          padding: EdgeInsets.all(24.r),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(248, 247, 196, 217),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: HomeScreen(),
                                      type: PageTransitionType.fadeIn,
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 40.r,
                                  height: 40.r,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(248, 248, 158, 196),
                                  ),
                                  child: Icon(Iconsax.arrow_right_1),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Text(
                                'Discover \nArtWork',
                                style: TextStyle(
                                  fontSize: 24.r,
                                  height: 1.3,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 9,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Divider(
                                thickness: 2,
                                endIndent: 120.w,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: _padding,
              ),
              child: SlideAnimation(
                begin: Offset(0, 20),
                intervalStart: 0.6,
                child: FadeAnimation(
                  intervalStart: 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Supported By',
                        style: bodyTextStyle,
                      ),
                      SvgPicture.asset(
                        'assets/images/binance.svg',
                        width: 24.r,
                      ),
                      SvgPicture.asset(
                        'assets/images/xrp.svg',
                        width: 22.r,
                      ),
                      SvgPicture.asset(
                        'assets/images/huobi.svg',
                        width: 22.r,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppLogo(),
        Container(
          width: 40.r,
          height: 40.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: Center(
            child: Icon(
              Iconsax.wallet_1,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'NFT',
      style: TextStyle(
        fontSize: 26.r,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ColoredText extends StatelessWidget {
  const ColoredText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            bottom: 0,
            left: 10.w,
            child: Container(
              width: 85.w,
              height: 30.r,
              color: Color.fromARGB(248, 247, 196, 217),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 40.r,
              fontWeight: FontWeight.bold,
              fontFamily: 'Dsignes',
              color: Colors.black,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}

class EventStat extends StatelessWidget {
  const EventStat({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.r,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14.r,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
