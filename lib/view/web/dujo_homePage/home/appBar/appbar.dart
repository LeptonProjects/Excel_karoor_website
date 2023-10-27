import 'dart:developer';

import 'package:dujo_kerala_website/view/colors/colors.dart';
import 'package:dujo_kerala_website/view/web/dujo_homePage/home/appBar/login_button.dart';
import 'package:dujo_kerala_website/view/web/dujo_homePage/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const String _imageUrl =
    "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/dujocolleges.jpeg?alt=media&token=0c3fa202-c59f-47bd-b997-88f3128e6871";

const String _description = "Any schools from Kerala can register on\n"
    "COSTECH DuJo. COSTECH Dujo is a mobile application\n"
    "with student login,  parent login, teacher login";

final Uri _faceBookUrl =
    Uri.parse('https://www.facebook.com/groups/325622007563684/');
final Uri _twitterUrl = Uri.parse('https://twitter.com/LeptonDujo');
final Uri _instaUrl = Uri.parse('https://www.instagram.com/excelkaroorxl/');
final Uri _utubeUrl =
    Uri.parse('https://www.youtube.com/channel/UCSDJa-gA4DYwXzaLxiAbaFw');
final Uri _leptonUrl = Uri.parse('http://www.leptoncommunications.com');

Future<void> _launchFacebookUrl() async {
  if (!await launchUrl(_faceBookUrl)) {
    throw 'Could not launch $_faceBookUrl';
  }
}

Future<void> _launchTwitterUrl() async {
  if (!await launchUrl(_twitterUrl)) {
    throw 'Could not launch $_twitterUrl';
  }
}

Future<void> _launchyouTubeUrl() async {
  if (!await launchUrl(_utubeUrl)) {
    throw 'Could not launch $_utubeUrl';
  }
}

Future<void> _launchInstaUrl() async {
  if (!await launchUrl(_instaUrl)) {
    throw 'Could not launch $_instaUrl';
  }
}

Future<void> _launchleptonUrl() async {
  if (!await launchUrl(_leptonUrl)) {
    throw 'Could not launch $_leptonUrl';
  }
}

class WebSiteNavBAr extends StatelessWidget {
  const WebSiteNavBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      '📞 +91 9846293314  ',
                      style: GoogleFonts.poppins(
                          color: cWhite,
                          //Color(0xFF17BDB5),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '✉️ pramodoasis1@gmail.com',
                      style: GoogleFonts.poppins(
                          // adminePrimayColor,
                          color: cWhite,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const LoginButton(), // Login Button

              Container(
                margin: const EdgeInsets.only(right: 10),
                width: ResponsiveWebSite.isTablet(context) ? 180 : 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        _launchFacebookUrl();
                      },
                      child: Image.asset(
                        'assets/images/frdd.png',
                        height: 20,
                        width: 20,
                        color: adminePrimayColor,
                        //Color(0xFF17BDB5),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchInstaUrl();
                      },
                      child: Image.asset(
                        'assets/images/instag.png',
                        height: 25,
                        width: 25,
                        color: adminePrimayColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchTwitterUrl();
                      },
                      child: Image.asset(
                        'assets/images/twitt.png',
                        height: 20,
                        width: 20,
                        color: adminePrimayColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchyouTubeUrl();
                      },
                      child: const Icon(
                        Icons.ondemand_video,
                        color: adminePrimayColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// class MobileAppBAr extends StatelessWidget {
//   const MobileAppBAr({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const [AppBarPhoneNumber(), SocaiMedaAtAppbar()],
//     );
//   }
// }

class ResponsiveMobileAppBar extends StatelessWidget {
  const ResponsiveMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidthValue;
    return LayoutBuilder(builder: (context, constrain) {
      log(constrain.maxWidth.toString());

      maxWidthValue = constrain.maxWidth;
      return Container(
        color: const Color.fromARGB(255, 3, 9, 75),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                width: 130,
                // color: Colors.white70,
                child: Image.asset(
                  'assets/images/excel_karoor_logo.png',

                  fit: BoxFit.cover,
                  // color: adminePrimayColor,
                  color: Colors.white,

                  //Color(0xFF17BDB5),
                ),
              ),
              ResponsiveWebSite.isMobile(context)
                  ? const Text("")
                  : Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: const [
                          Text(
                            'E X C E L  K A R O O R',
                            style: TextStyle(
                                fontSize: 21,
                                color: cWhite,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 02),
                            child: Text('Most trusted brand for experienced tutoring',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: cWhite,
                                )),
                          ),
                          // GoogleMonstserratWidgets(text: "E X C E L  K A R O O R", fontsize: 20,color: cWhite,fontWeight: FontWeight.w600,),
                        ],
                      ),
                    ),
              const Spacer(),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarPhoneNumber(maxWidthValue),
                  Visibility(
                    visible: maxWidthValue > 430,
                    child: Expanded(
                      child: Row(
                        children: [
                          const LoginButton(),
                          ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              children: socailMediaList
                                  .map((data) => Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: InkWell(
                                                onTap: data.tilteFunExecution,
                                                // child: data.assetImage!,
                                                child: Image.asset(
                                                  data.imageString!,
                                                  height: 20,
                                                  width: 20,
                                                  color: Colors.white,
                                                )

                                                // data.assetImage!,
                                                ),
                                          ),
                                        ],
                                      ))
                                  .toList()),
                        ],
                      ),
                    ),
                  ),
                  // SocaiMedaAtAppbar(),

                  Visibility(
                    visible: maxWidthValue < 430,
                    child: Row(
                      children: const [
                        LoginButton(),
                        // Icon(
                        //   Icons.more_vert,
                        //   color: Colors.white,
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

class SocaiMedaAtAppbar extends StatelessWidget {
  const SocaiMedaAtAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const LoginButton(), // Login Button
          InkWell(
            onTap: () {
              _launchFacebookUrl();
            },
            child: Image.asset(
              'assets/images/frdd.png',
              height: 20,
              width: 20,
              color: adminePrimayColor,
              //Color(0xFF17BDB5),
            ),
          ),
          InkWell(
            onTap: () {
              _launchInstaUrl();
            },
            child: Image.asset(
              'assets/images/instag.png',
              height: 25,
              width: 25,
              color: adminePrimayColor,
            ),
          ),
          InkWell(
            onTap: () {
              _launchTwitterUrl();
            },
            child: Image.asset(
              'assets/images/twitt.png',
              height: 20,
              width: 20,
              color: adminePrimayColor,
            ),
          ),
          InkWell(
            onTap: () {
              _launchyouTubeUrl();
            },
            child: const Icon(
              Icons.ondemand_video,
              color: adminePrimayColor,
            ),
          )
        ],
      ),
    );
  }
}

class AppBarPhoneNumber extends StatelessWidget {
  final double maxWidthValue;
  const AppBarPhoneNumber(
    this.maxWidthValue, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60,
      // width: MediaQuery.of(context).size.width,
      child: maxWidthValue < 430
          ? Padding(
              padding: const EdgeInsets.all(7),
              child: Column(
                children: const [
                  MobNumber01(),
                  MobNumber02(),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(7),
              child: Row(
                children: const [
                  MobNumber01(),
                  MobNumber02(),
                ],
              ),
            ),
    );
  }
}

class MobNumber02 extends StatelessWidget {
  const MobNumber02({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '✉️ pramodoasis1@gmail.com',
      style: GoogleFonts.poppins(
          // adminePrimayColor,
          color: cWhite,
          fontSize: 12,
          fontWeight: FontWeight.w400),
    );
  }
}

class MobNumber01 extends StatelessWidget {
  const MobNumber01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '📞 +91 9846293314    ',
      style: GoogleFonts.poppins(
          color: cWhite,
          //Color(0xFF17BDB5),
          fontSize: 13,
          fontWeight: FontWeight.w500),
    );
  }
}

//  byh Rajesh Thanu
class SocailMediaModel {
  SocailMediaModel({
    this.title,
    this.iconData,
    this.icon,
    this.assetImage,
    this.imageString,
    this.tilteFunExecution,
    this.iconFunExecution,
  });
  final String? title;
  final IconData? iconData;
  final Icon? icon;
  final Image? assetImage;
  final String? imageString;
  Function()? tilteFunExecution;
  Future<void>? iconFunExecution;
}

List<SocailMediaModel> socailMediaList = <SocailMediaModel>[
  SocailMediaModel(
      // title: StringConst.Facebook,
      iconData: Icons.home,
      assetImage: Image.asset(
        'assets/images/frdd.png',
        // height: 30,
        // width: 30,

        // color: socilMediIconColor,
        //Color(0xFF17BDB5),
      ),
      imageString: 'assets/images/frdd.png',
      tilteFunExecution: _launchFacebookUrl),
  SocailMediaModel(
      // title: StringConst.Instagram,
      iconData: Icons.home,
      assetImage: (Image.asset(
        'assets/images/instag.png',
        // height: 30,
        // width: 30,
        // color: socilMediIconColor,
        //Color(0xFF17BDB5),
      )),
      imageString: 'assets/images/instag.png',
      tilteFunExecution: _launchInstaUrl),
  SocailMediaModel(
      // title: StringConst.Youtube,
      assetImage: (Image.asset(
        'assets/images/utube.png',
        // height: 30,
        // width: 30,
        // color: socilMediIconColor,
        //Color(0xFF17BDB5),
      )),
      imageString: 'assets/images/utube.png',
      tilteFunExecution: _launchyouTubeUrl),
];
