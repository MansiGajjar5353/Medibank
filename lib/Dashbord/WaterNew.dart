// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:project_signup_page/Dashbord/BloodGroup.dart';
// import 'package:project_signup_page/Dashbord/Water.dart';
// import 'package:project_signup_page/Dashbord/practice.dart';
// import 'package:project_signup_page/Onbording/Responsive.dart';
// import 'package:vertical_weight_slider/vertical_weight_slider.dart';
// import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
// import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
//
//
//
//
// import 'Dashbord.dart';
//
//
//
// class WaterNew extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return WaterNewState();
//   }
//
// }
//
// class WaterNewState extends State<WaterNew>{
//
// //    late AnimationController animationController;
// //
// // @override
// // void initState(){
// //   animationController =
// //       AnimationController(vsync: this,
// //           duration: Duration(seconds: 15));
// //   animationController.addListener(() {
// //     setState(() {
// //
// //     });
// //   });
// //   animationController.repeat();
// //   super.initState();
// // }
//
//
//   Color imageColor = Color(0xff4F555A).withOpacity(0.5);
//   Color buttonColor = Colors.black; // Initial color of the button
//   bool isButtonPressed = false;
//   // bool Showtextfield = false;
//
//   void handleButtonPress() {
//     setState(() {
//       buttonColor = Colors.green; // Change the color to your desired value
//       isButtonPressed = true;
//     });
//
//     Future.delayed(const Duration(milliseconds: 200), () {
//       setState(() {
//         buttonColor = Colors.green; // Change the color back to the original value
//         isButtonPressed = false;
//       });
//       Navigator.push(context,MaterialPageRoute(builder: (context)=>BloodGroup(),));
//       // Perform navigation after the delay
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//     var _mediaquery = MediaQuery.of(context);
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.green),
//       ),
//       body: Container(
//         height: _mediaquery.size.height*1,
//         child: ListView(
//             children: [
//
//               Container(
//                 //  height: _mediaquery.size.height*0.13,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//
//                           Container(
//                             margin:EdgeInsets.only(left:25),
//
//                             child: Text("Personal ",style: new TextStyle( color: Colors.black,
//                                 fontSize: Responsive.isSmallScreen(context)? width/15 : width/30,
//                                 fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
//                           ),
//
//                           Container(
//                             margin:EdgeInsets.only(left:25),
//                             //margin: EdgeInsets.only(left:30,),
//                             child:Text("Information ",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/15 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
//                           ),
//
//                           Container(
//                             margin:EdgeInsets.only(left:25),
//                             child: Text("Note: minim mollit non deserunt ullamco ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
//                           ),
//
//                           Container(
//                             margin:EdgeInsets.only(left:25),
//                             child: Text("est sit aliqua dolor do amet sint. ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
//                           ),
//                         ],
//                       ), ),
//                     Container(
//                       margin: EdgeInsets.only(right: 20),
//                       child:Column(
//                         children: [
//
//                           Container(
//                             child: Image.asset('image/perso.png',height: _mediaquery.size.height*0.089),
//                           ),
//
//
//
//                           Container(
//                             margin: EdgeInsets.only(top: _mediaquery.size.height*0.01),
//                             child:RichText(
//                               text: TextSpan(
//                                 text: 'category ',
//                                 style: TextStyle(
//                                   color: Color(0xff929292),
//                                   fontSize: Responsive.isSmallScreen(context)?width/35 : width/60,
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w300,
//                                 ),
//                                 children: <TextSpan>[
//                                   TextSpan(
//                                     text: '4/12',
//                                     style: TextStyle(
//                                       color: Color(0xff24B445),
//                                       fontWeight: FontWeight.w900,
//                                       fontFamily: 'Poppins',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//
//
//
//
//
//
//
//
//
//
//
//             Center(
//               child: LiquidCircularProgressIndicator(
//                 value: 0.25, // Defaults to 0.5.
//                 valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
//                 backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
//                 borderColor: Colors.red,
//                 borderWidth: 5.0,
//                 direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
//                 center: Text("Loading..."),
//
//               ),
//             ),
//
//
//
//
//
//
//
//               Center(
//                 child: Container(
//                   height: _mediaquery.size.height*0.070,
//                   width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
//                   margin: EdgeInsets.only(top: _mediaquery.size.height*0.1),
//                   child: ElevatedButton(
//                     onPressed:handleButtonPress,
//                     child: Image.asset('image/AerrowRight.png',
//                         color: isButtonPressed? Colors.black:imageColor,
//                         height: _mediaquery.size.height*0.04) ,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor:isButtonPressed ? buttonColor : Color(0xffF9F9F9),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(32.0)
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//
//               Padding(padding: EdgeInsets.only(top: 20)),
//
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Skip to ",
//                       style: TextStyle(
//                         color: Color(0xffACADAC),
//                         fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));},
//                       child: Text("Dashboard",
//                         style: TextStyle(
//                           color: Color(0xff000000),
//                           fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//
//             ]
//         ),
//       ),
//     );
//
//   }
// }
//
//
//
//
//
// // class CustomSlider extends StatefulWidget {
// //   @override
// //   _CustomSliderState createState() => _CustomSliderState();
// // }
// //
// // class _CustomSliderState extends State<CustomSlider> {
// //   double _sliderValue = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliderTheme(
// //       data: SliderTheme.of(context).copyWith(
// //         // Customize the appearance of the slider
// //         activeTrackColor: Color(0xff9181F2),
// //         inactiveTrackColor: Color(0xffF7F7F7),
// //         thumbColor: Color(0xff9181F2),
// //
// //         overlayColor: Colors.blue.withOpacity(0.3),
// //         valueIndicatorColor: Colors.blue,
// //         trackHeight: 10.0,
// //         thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
// //
// //         overlayShape: RoundSliderOverlayShape(overlayRadius: 10.0),
// //         valueIndicatorShape: PaddleSliderValueIndicatorShape(),
// //         valueIndicatorTextStyle: TextStyle(
// //           color: Colors.blue,
// //         ),
// //       ),
// //       child: RotatedBox(
// //         quarterTurns: 3,
// //         child: Slider(
// //           value: _sliderValue,
// //           min: 0,
// //           max: 100,
// //           divisions: 10,
// //           onChanged: (newValue) {
// //             setState(() {
// //               _sliderValue = newValue;
// //               if(_sliderValue == 10){
// //                 print("1 ltr");
// //               }else if(_sliderValue == 20){
// //                 print("2 ltr");
// //               }
// //             });
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
