import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image:  DecorationImage(
                fit:  BoxFit.fill,
                image: AssetImage(
                  AppImages.introBG,
                )),
            ),
            child : Column(
              children: [
                SvgPicture.asset(AppVectors.logo),
                const Spacer(),
                const Text(
                  'Enjoy the song limited',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                )
                )
              ],
            ),
          )
         ,
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
        ],
      ),
    );
  }
}
