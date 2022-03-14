import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nft_marketplace/animations/fade_animation.dart';
import 'package:nft_marketplace/animations/slide_animation.dart';
import 'package:nft_marketplace/constants.dart';

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
          ],
        ),
      ),
    );
  }
}

//App Bar
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

//App logo
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
