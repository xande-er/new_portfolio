import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMeText({Key key, this.textAlign, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
          "Всем привет! Я Алекс, разрабатываю мобильные приложения как на Android так и IOS на платформе Flutter!\n\nЯ занимаюсь разработкой мобильных приложений более 2-x лет. Я разрабатываю приложения с привлекательным интерфейсом и высокой производительностью. Я работал над различными проектами, для различных стартапов и помогал им запускать их прототипы, и получил ценный опыт обучения.\n\nВ настоящее время я закончил два университета в Украине та Польше и получил степень Бакалавра.",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
        // TextSpan(
        //   text: "Национальном университете биоресурсов и природопользования Украины",
        //   style: MediaQuery.of(context).size.width < 600
        //       ? _textStyle(fontSize, true)
        //       : _textStyle(fontSize + 2, true),
        // ),
        // TextSpan(
        //   text: " та Поморская Академия в Польше",
        //   style: MediaQuery.of(context).size.width < 600
        //       ? _textStyle(fontSize, false)
        //       : _textStyle(fontSize + 2, false),
        // ),
      ]),
    );
  }
}
