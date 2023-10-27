import 'package:dujo_kerala_website/view/colors/colors.dart';
import 'package:dujo_kerala_website/view/fonts/google_monstre.dart';
import 'package:dujo_kerala_website/view/web/dujo_homePage/widgets/responsive/responsive.dart';
import 'package:dujo_kerala_website/view/web/login/loginscreen.dart';
import 'package:flutter/material.dart';

import '../footer/widgets/alertDilogueBox.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: SizedBox(
        height: 30,
        width: 100,
        //  color: cBlue,
        child: InkWell(
            onTap: () {
              ResponsiveWebSite.isDesktop(context)
                  ? Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ))
                  : mobileandTabAlert(context);
            },
            child: Container(
                height: 25,
                width: 65,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: cWhite,
                    border: Border.all(color: cred)),
                child: Center(
                  child: GoogleMonstserratWidgets(
                    text: "Login",
                    fontsize: 14,
                    fontWeight: FontWeight.w600,
                    color: cred,
                  ),
                ))),
      ),
    );
  }
}
