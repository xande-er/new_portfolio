import 'package:flutter/material.dart';
import 'package:folio/animations/bottomAnimation.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nПортфолио",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Вот несколько примеров из моей предыдущей работы :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.2,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.1,
                    backImage: kProjectsBanner[index],
                    projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    projectLink: kProjectsLinks[index],
                    bottomWidget: kProjectsIconsMarket[index] == 2
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://img.icons8.com/ios-filled/ffffff/apple-app-store--v2.png",
                                height: height * 0.04,
                              ),
                              SizedBox(width: 30),
                              Image.network(
                                "https://img.icons8.com/material-sharp/384/ffffff/google-play.png",
                                height: height * 0.04,
                              )
                            ],
                          )
                        : kProjectsIconsMarket[index] == 1
                            ? Image.network(
                                "https://img.icons8.com/ios-filled/ffffff/apple-app-store--v2.png",
                                height: height * 0.04,
                              )
                            : kProjectsIconsMarket[index] == 0
                                ? Image.network(
                                    "https://img.icons8.com/material-sharp/384/ffffff/google-play.png",
                                    height: height * 0.04,
                                  )
                                : Container(),
                  ),
                );
              },
              itemCount: 6,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          MaterialButton(
            hoverColor: kPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0), side: BorderSide(color: kPrimaryColor)),
            onPressed: () {
              // launchURL("https://github.com/m-hamzashakeel");
            },
            child: Text(
              "Узнать больше",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
