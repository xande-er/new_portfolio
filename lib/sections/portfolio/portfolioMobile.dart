import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
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
            textAlign: TextAlign.center,
          ),
          CarouselSlider.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.4,
                projectIcon: kProjectsIcons[i],
                projectTitle: kProjectsTitles[i],
                projectDescription: kProjectsDescriptions[i],
                projectLink: kProjectsLinks[i],
                // bottomWidget: kProjectsIconsMarket[i] == 2
                //     ? Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Image.network(
                //       "https://img.icons8.com/ios-filled/ffffff/apple-app-store--v2.png",
                //       height: height * 0.04,
                //     ),
                //     SizedBox(width: 30),
                //     Image.network(
                //       "https://img.icons8.com/material-sharp/384/ffffff/google-play.png",
                //       height: height * 0.04,
                //     )
                //   ],
                // )
                //     : kProjectsIconsMarket[i] == 1
                //     ? Image.network(
                //   "https://img.icons8.com/ios-filled/ffffff/apple-app-store--v2.png",
                //   height: height * 0.04,
                // )
                //     : kProjectsIconsMarket[i] == 0
                //     ? Image.network(
                //   "https://img.icons8.com/material-sharp/384/ffffff/google-play.png",
                //   height: height * 0.04,
                // )
                //     : Container(),
              ),
            ),
            options: CarouselOptions(
                height: height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          MaterialButton(
            hoverColor: kPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: kPrimaryColor)),
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
