import 'package:flutter/material.dart';
import 'package:project_signup_page/Dashbord/Dashbord.dart';
import 'package:project_signup_page/Dashbord/Tired.dart';
import 'package:project_signup_page/Onbording/Responsive.dart';

class weightLoss extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return weightLossState();
  }

}

class weightLossState extends State<weightLoss>{
  bool ShowText = true;
  Color TextColor = Color(0xff4F555A).withOpacity(0.5);
  Color imageColor = Color(0xff4F555A).withOpacity(0.5);
  Color buttonColor = Colors.black; // Initial color of the button
  bool isButtonPressed = false;

  void handleButtonPress() {
    setState(() {
      buttonColor = Colors.green; // Change the color to your desired value
      isButtonPressed = true;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        buttonColor = Colors.green; // Change the color back to the original value
        isButtonPressed = false;
      });

      Navigator.push(context, MaterialPageRoute(builder: (context)=> Tired(),));

    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var _mediaquery = MediaQuery.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
      ),

      body: ListView(
        children: [
      Container(
      // height: _mediaquery.size.height*0.13,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  margin:EdgeInsets.only(left:25),

                  child: Text("Constitutional /",style: new TextStyle( color: Colors.black,  fontSize: Responsive.isSmallScreen(context)? width/18 : width/30,
                      fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                ),

                Container(
                  margin:EdgeInsets.only(left:25),
                  //margin: EdgeInsets.only(left:30,),
                  child:Text("Systematic",style: new TextStyle(height:0.90,color: Colors.green, fontSize: Responsive.isSmallScreen(context)? width/18 : width/30, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                ),

                Container(
                  margin:EdgeInsets.only(left:25),
                  child: Text("Note: minim mollit non deserunt ullamco ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                ),

                Container(
                  margin:EdgeInsets.only(left:25),
                  child: Text("est sit aliqua dolor do amet sint. ",style:new TextStyle( color: Color(0xff929292), fontSize: Responsive.isSmallScreen(context)? width/46 : width/60, fontWeight: FontWeight.w300,fontFamily: 'Poppins'),),
                ),
              ],
            ), ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child:Column(
              children: [

                Container(
                  child: Image.asset('image/systematization.png',height: _mediaquery.size.height*0.060
                  ),
                ),



                Container(
                  margin: EdgeInsets.only(top: _mediaquery.size.height*0.01),
                  child:RichText(
                    text: TextSpan(
                      text: 'category ',
                      style: TextStyle(
                        color: Color(0xff929292),
                        fontSize: Responsive.isSmallScreen(context)?width/35 : width/60,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '1/4',
                          style: TextStyle(
                            color: Color(0xff24B445),
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Center(
    child: Container(
    margin: EdgeInsets.only(left:0,top:40.0 ),
    //new  Padding(padding: const EdgeInsets.only(left:50.0, top:20.0),),
    child:RichText(
    text: TextSpan(
    text: "Medical ",
    style: TextStyle(
    color: Colors.black,
    fontSize: Responsive.isSmallScreen(context)? width/16: width/30,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    ),
    children: <TextSpan>[
    TextSpan(
    text: 'Information',
    style: TextStyle(
    color: Color(0xff24B445),
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',

    ),
    ),
    ],
    ),
    ),
    // child:Text("We need to verify your Number?",style: new TextStyle(height:0.90,color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900,fontFamily: 'Poppins'),),

    ),
    ),

          Container(
            margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text("Have you recent experience any weight loss/gain?",
              style: TextStyle(color: Color(0xff4F555A).withOpacity(0.45),
                fontSize: Responsive.isSmallScreen(context)? width/28 : width/50,
                fontFamily: "Poppins",
              ),),
          ),


          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    ShowText = true;
                  });
                },

                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  height: 80,
                  width: Responsive.isSmallScreen(context)? width/1.1: width/1.3,
                  decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      margin:EdgeInsets.only(top: 30, left: 30),
                      child: Text("Yes",style: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5),
                      ),)),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    ShowText = false;
                  });

                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  height: 80,
                  width: Responsive.isSmallScreen(context)? width/1.1: width/1.3,
                  decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      margin:EdgeInsets.only(top: 30, left: 30),
                      child: Text("No",style: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.5),
                      ),)),
                ),
              ),


              Visibility(
                visible: ShowText,
               child: Container(
                  margin: EdgeInsets.only(left:20,right: 20, top:10),
                //  width: Responsive.isSmallScreen(context)? width/1.2 : width/2,
                  //height: 200,
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      filled: true,
                      fillColor: Color(0xffF9F9F9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(width: 1, color: Color(0xff).withOpacity(0.16),
                        )),

                      hintText: "Any reason",
                      hintStyle: TextStyle(color:Color(0xff4F555A).withOpacity(0.5), ),

                    ),
                  ),
                ),


              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Center(
                child: Container(
                  height: _mediaquery.size.height*0.070,
                  width: Responsive.isSmallScreen(context) ? width/2.5: width/3.5,
                  margin: EdgeInsets.only(top: _mediaquery.size.height*0.02),
                  child: ElevatedButton(
                    onPressed:handleButtonPress,
                    child: Image.asset('image/AerrowRight.png',
                        color: isButtonPressed? Colors.black:imageColor,
                        height: _mediaquery.size.height*0.04) ,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:isButtonPressed ? buttonColor : Color(0xffF9F9F9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)
                      ),
                    ),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 20)),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Skip to ",
                      style: TextStyle(
                        color: Color(0xffACADAC),
                        fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBarApp(),));
                      },
                      child: Text("Dashboard",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: Responsive.isSmallScreen(context)?width/30 : width/45,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),













    ]
      ),
  );

  }

}