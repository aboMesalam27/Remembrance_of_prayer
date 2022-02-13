// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';
// import 'dart:math';
//
// class Test extends StatefulWidget {
//   @override
//   State<Test> createState() => _TestState();
// }
//
// List list = [
//   'إِنَّ اللَّهَ لَا يَخْفَىٰ عَلَيْهِ شَيْءٌ',
//   'وَلَقَدْ نَعْلَمُ أَنَّكَ يَضِيقُ صَدْرُكَ بِمَا يَقُولُونَ * فَسَبِّحْ بِحَمْدِ رَبِّكَ وَكُنْ مِنَ السَّاجِدِينَ',
//   ' فَأَرَدْتُ أَنْ أَعِيبَهَا وَكَانَ وَرَاءَهُمْ مَلِكٌ يَأْخُذُ كُلَّ سَفِينَةٍ غَصْبا',
//   ' ومَا تَسقُطُ مِن وَرقَةٍ إلاّ يَعلمُهَا',
//   ' وَكَانَ ذَٰلِكَ عَلَى اللَّهِ يَسِيرًا ',
//   ' وأُفوضُّ أمري إلى الله ',
//   'ولاتيأسوا من روح الله ',
//   'قال ربك هو علي هين ',
//   'قال ربك هو علي هين ',
//   'قال فعلتها إذا وأنا من الضالين',
//   'بل يساق إليك سوقا .. فلا تقلق وثق بربك  ',
//   'ما من خير يكتب لك إلا ويعرف طريقَك ',
//   'وهو معكم أينما كُنتم',
//   'أولم يروا أنا نسوق الماء إلى الأرض الجرز',
//   ' إِنَّمَا يُوَفَّى الصَّابِرُونَ أَجْرَهُمْ بِغَيْرِ حِسَابٍ',
//   'وَنَحْنُ أَقْرَبُ إِلَيْهِ مِنْ حَبْلِ الْوَرِيدِ',
//   'ونُنَزِّلُ مِنَ الْقُرْآنِ مَا هُوَ شِفَاءٌ وَرَحْمَةٌ لِّلْمُؤْمِنِينَ ِۙ',
//   'وَيَعْلَمُ مَا فِي الْبَرِّ وَالْبَحْرِ ۚ وَمَا تَسْقُطُ مِنْ وَرَقَةٍ إِلَّا يَعْلَمُهَاِ',
//   'لا يهم ماذا كنت وماذا فعلت المهم اليوم هل رجعت و تبت ؟',
//   'إنَا لاَ نُضَيِعُ أَجْرَ مَن أَحْسَنَ عَمَلاً',
//   'وَرَبَطْنَا عَلَى قُلُوبِهِم',
//   'لا تبحث عن التقدير عند الناس يكفي أن الله لا يضيع عنده شيء',
//   'الله يقبل توبتك و يغير حالك',
//   'من آوى إلى الله، وتوكل على الله وفوض أمره إلى الله، ودعا الله ولجأ إلى الله، لا يضيعه الله بل يعتني به '
// ];
// Random r = Random();
//
// class _TestState extends State<Test> {
//   @override
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   show();
//                 });
//               },
//               icon: Icon(Icons.add))
//         ],
//         elevation: 0,
//       ),
//       body: Column(
//         children: const <Widget>[Text('hj')],
//       ),
//     );
//   }
//
//   show() {
//     return AwesomeDialog(
//       padding: const EdgeInsets.all(7),
//       autoHide: const Duration(seconds: 10),
//       btnOkText: 'حسنا',
//       btnOkColor: const Color.fromRGBO(54, 69, 79, 1),
//       btnCancelColor: Colors.red,
//       context: context,
//       dialogType: DialogType.NO_HEADER,
//       borderSide:
//           const BorderSide(color: Color.fromRGBO(54, 69, 79, 1), width: 2),
//       width: 380,
//       buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
//       headerAnimationLoop: false,
//       btnOkOnPress: (){},
//       animType: AnimType.TOPSLIDE,
//       // dialogBorderRadius: BorderRadiusGeometry.lerp(
//       //   BorderRadius.circular(30),
//       //   BorderRadius.circular(30),
//       //   20.0,
//       // ),
//       title: 'رسالة لك ',
//       desc: list[r.nextInt(list.length)],
//       showCloseIcon: false,
//     ).show();
//   }
// }
