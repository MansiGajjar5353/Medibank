import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_signup_page/UI/Signin.dart';
import 'package:project_signup_page/UI/Signup.dart';
import 'package:project_signup_page/UI/otpScreen.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';
import 'Email.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Homestate();
  }


}

class _Homestate extends State<Home> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _mediaquery = MediaQuery.of(context);




    //
    // if (Platform.isAndroid || Platform.isWindows ) {
    //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.light,
    //   ));
    // }
    // if (Platform.isIOS) {
    //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.light,
    //   ));
    // }


    return Scaffold(

      body: Container(
          width: width,
          height: _mediaquery.size.height*1,

          child: ListView(
            children:[


              Container(
             //   height: _mediaquery.size.height*0.03,
                width:200,
                margin: EdgeInsets.only(left:21.0, top:50.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("You're all set?",style: new TextStyle(color: Color(0xFF24B445),
                    fontSize: Responsive.isSmallScreen(context)? width/ 25:width/60,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Poppins' ),),

              ),
              Container(
                //height: _mediaquery.size.height*0.04,
                width:200,
                margin: EdgeInsets.only(left:21.0, top:10.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("Let's create",style: new TextStyle(height:1,color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/
                        12:width/30,
                    fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

              ),
              Container(
                //height: _mediaquery.size.height*0.07,
                width:width,
                margin: EdgeInsets.only(left:21.0),
                //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
                child:Text("your account",style: new TextStyle(height:0.99,color: Colors.black,
                    fontSize: Responsive.isSmallScreen(context)? width/
                        12:width/30,
                    fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

              ),

              Padding(padding: EdgeInsets.only(top: _mediaquery.size.height*0.01)),
              Container(
               height: _mediaquery.size.height*0.42,
                width:width,
                // margin: EdgeInsets.only(left:200),
                child: Align(alignment: Alignment.centerRight,
                     child: Image.asset('image/Ellipse.png', )
                       //  width:Responsive.isSmallScreen(context)? width/3: width/5),
                  ),

              ),
/*Transform.translate
  (offset: Offset(0,-90),
             child: Container(
                margin: EdgeInsets.only(right:220),
                child: Image.asset('image/Ellipse2.png'),

              ),),*/

              Stack(
                children: [
                  //  Padding(padding: EdgeInsets.only(right: 300)),

                  Transform.translate
                    (offset: Offset(0,-150),
                    child: Container(
                      height:_mediaquery.size.height*0.22,
                      width:width,
                      //margin: EdgeInsets.only(right:220),
                      child: Align(alignment: Alignment.centerLeft,
                          child: Image.asset('image/Ellipse2.png')),

                    ),),


                  Container(

                    height: 50.0,
                    width:Responsive.isSmallScreen(context)? width/
                        0.5:width/0.5,
                    margin: EdgeInsets.only(top:_mediaquery.size.height*0.10,left:30.0,right:30.0),
                    //margin: EdgeInsets.only( ),

                    child: ElevatedButton(

                      child:  Text('Sign Up', style: TextStyle(color: Color(0xff4F555A).withOpacity(0.5),
                          fontSize:  Responsive.isSmallScreen(context)? width/
                              25:width/60,
                          fontFamily:'Poppins',
                          fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(

                        primary: Color(0xffF9F9F9),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),

                      ),
                      onPressed: ()=> setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                      }),
                    ),

                  ),


                  Padding(padding: EdgeInsets.only(top:20, left:50.0, right: 50.0)),


                  Container(

                    height: 50.0,
                    width: Responsive.isSmallScreen(context)? width/
                        0.5:width/0.5,
                    margin: EdgeInsets.only(left:30.0,right:30.0, top:_mediaquery.size.height*0.19),

                    child: ElevatedButton(
                      child: Text('Sign in', style: TextStyle( fontFamily:'Poppins',
                          fontSize:  Responsive.isSmallScreen(context)? width/
                              25:width/60,
                          fontWeight: FontWeight.w900),),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF24B445),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)
                        ),

                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
                      },

                    ),
                  ),

                ],
              ) ,                  ],

          )
      ),
    );
  }
}


