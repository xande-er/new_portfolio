import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xffC0392B);


const kSocialIcons = [
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-glyphs/ffffff/telegram-app.png",
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/material-rounded/384/ffffff/whatsapp.png",
  "https://img.icons8.com/ios-filled/ffffff/apple-app-store--v2.png",
  "https://img.icons8.com/ios-filled/ffffff/google-play.png"

  // "https://img.icons8.com/metro/308/ffffff/linkedin.png"
];

const kSocialLinks = [
  'https://github.com/xande-er',
  'https://t.me/xand_er',
  'https://www.facebook.com/profile.php?id=100002772565731',
  'https://api.whatsapp.com/send?phone=380673717016',
  'https://apps.apple.com/us/developer/oleksandr-motliuk/id1531473859',
  'https://play.google.com/store/apps/developer?id=%D1%84%D0%B5%D0%BD%D0%B8%D0%BA%D1%81'
  // 'https://www.linkedin.com/in/%D1%81%D0%B0%D1%88%D0%B0-%D0%BC%D0%BE%D1%82%D0%BB%D1%8E%D0%BA-067734152',
];

// URL Launcher
void launchURL(String _url) async => await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = ['assets/akademia.png', 'assets/nubip.png'];

final kCommunityLinks = ["https://www.apsl.edu.pl/", "https://nubip.edu.ua/en"];

final kTools = ['Flutter', 'Dart', 'Python', 'NodeJS', 'SQL'];

final kTools1 = ['GitHub', 'Figma', 'Firebase', 'PostgreSQL'];

final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
];

final kServicesTitles = ["Полная разработка приложений", "UI / UX проектирование", "Быстрое прототипирование"];

final kServicesDescriptions = [
  "Я разрабатываю приложения для Android и IOS с помощью Flutter. У меня есть активный аккаунт розроботчика в Google Play та App Store",
  "Хотя я в основном разработчик флаттера, мне очень важен UI / UX для моего клиента. Следовательно, я также занимаюсь проектированием пользовательского интерфейса для приложений.",
  "Есть идея для стартапа? Или, может быть, просто хотите прототип для своих клиентов? С Flutter я могу получить базовую версию вашего приложения в кратчайшие сроки. И вы будете готовы приступить к своему проекту в будущем."
];

final kServicesLinks = ['', '', ''];

final kProjectsBanner = [
  "assets/projects/background/background.png",
  "assets/projects/background/background.png",
  "assets/projects/background/background.png",
  "assets/projects/background/background.png",
  "assets/projects/background/background.png",
  "assets/projects/background/background.png",
];

final kProjectsIcons = [
  "assets/projects/logo/lilpet.png",
  "assets/projects/logo/balaboba.png",
  "assets/projects/logo/kvadro.png",
  "assets/projects/logo/telegram.png",
  "assets/projects/logo/vk.png",
  "assets/projects/logo/viber.png",
];

final kProjectsTitles = [
  'LilPet',
  'Balaboba',
  'Kvadro WL',
  'Telegram Check Status',
  'VK Check Status',
  'Viber Check Status'
];

final kProjectsDescriptions = [
  "Приложение разработано для того, чтобы каждый пользователь, или приют, смогли передать своего домашнего любимца в другие хорошие руки.",
  "Балабоба демонстрирует, как с помощью нейросетей можно продолжать тексты на любую тему, сохраняя связность и заданный стиль. Здесь эти нейросети используются для развлечения, но разрабатывались они для серьёзных задач.",
  "KvadroWallet - криптовалютный кошелек с интуитивно понятным интерфейсом и легко используемый функционал:\n- Хранение криптовалюты\n- Перевод/Вывод криптовалюты\n- и другие полезные инструменты",
  "Каждый пользователь заботится о своих близких. О том сколько времени они проводят в сети, для этого и создан данный приложение. Он сохраняет всю статистику, сколько пользователь провел времени в Telegram, и дает ее пользователю, строит графики, и просто отражает данные",
  "Каждый пользователь заботится о своих близких. О том сколько времени они проводят в сети, для этого и создан данный приложение. Он сохраняет всю статистику, сколько пользователь провел времени в Вконтакте, и дает ее пользователю, строит графики, и просто отражает данные",
  "Каждый пользователь заботится о своих близких. О том сколько времени они проводят в сети, для этого и создан данный приложение. Он сохраняет всю статистику, сколько пользователь провел времени в Viber, и дает ее пользователю, строит графики, и просто отражает данные",
];

final kProjectsIconsMarket = [
  2, 2, 0, 0, 2, 0
];

final kProjectsLinks = [
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  // "https://github.com/m-hamzashakeel/MedKit-Pharmacy-App-Using-Flutter",
  // "https://github.com/m-hamzashakeel/The_Holy_Quran_App",
  // "https://github.com/m-hamzashakeel/Here-I-Am-Alert-App",
  // "https://github.com/m-hamzashakeel/Covid19-Tracker-App",
  // "https://github.com/m-hamzashakeel/Messenger-Chat-Head-Flutter-UI",
  // "https://github.com/m-hamzashakeel/flutter.dev-Flutter-Web-Clone",
  // "https://github.com/m-hamzashakeel/Earbender_Music_App",
  // "https://github.com/m-hamzashakeel/FTP_GUI_Java",
  // "https://github.com/m-hamzashakeel/My-Order-Resturant-Ordering-System",
  // "https://github.com/m-hamzashakeel/Hidev_Web",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Место расположения",
  "Телефон",
  "Электронная почта",
];

final kContactDetails = ["Украина, Киев", "+(380) 67 371 7016", "sashamotluk@gmail.com"];