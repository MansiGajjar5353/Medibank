import 'package:flutter/material.dart';
import 'Responsive.dart';

class VaccinationForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VaccinationFormState();
  }
}

class _VaccinationFormState extends State<VaccinationForm> {
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
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontSize:
                Responsive.isSmallScreen(context) ? width / 24 : width / 34,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
                left:
                    Responsive.isSmallScreen(context) ? width / 20 : width / 60,
                top: 20),
            child: RichText(
              text: TextSpan(
                text: 'Vaccination ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.isSmallScreen(context)
                      ? width / 22
                      : width / 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Detail',
                    style: TextStyle(
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 22
                          : width / 22,
                      color: Color(0xff24B445),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 40,
                      top: Responsive.isSmallScreen(context)
                          ? width / 30
                          : width / 100,),
                  child: Text(
                    "Due  date",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                      top: Responsive.isSmallScreen(context)
                          ? width / 30
                          : width / 60,
                     ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.4
                            : width / 1.3,
                        height: Responsive.isSmallScreen(context)
                            ? width / 8
                            : width / 8,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Date",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 10
                            : width / 10,
                        height: Responsive.isSmallScreen(context)
                            ? width / 10
                            : width / 10,
                        margin: EdgeInsets.only(
                            right: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 20,
                          bottom: Responsive.isSmallScreen(context)
                              ? width / 50
                              : width / 15,
                           ),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 35,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xff4F555A).withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 100,),
                  child: Text(
                    "Vaccination  date",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 40,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 1.4
                            : width / 1.3,
                        height: Responsive.isSmallScreen(context)
                            ? width / 8
                            : width / 8,
                        child: TextField(
//
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            filled: true,
                            fillColor: Color(0xffF9F9F9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Date",
                            hintStyle: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4 ),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.4),
                            fontSize: Responsive.isSmallScreen(context)
                                ? width / 20
                                : width / 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: Responsive.isSmallScreen(context)
                            ? width / 10
                            : width / 10,
                        height: Responsive.isSmallScreen(context)
                            ? width / 10
                            : width / 10,
                        margin: EdgeInsets.only(
                          right: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 20,
                          bottom: Responsive.isSmallScreen(context)
                              ? width / 50
                              : width / 15,
                        ),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: Responsive.isSmallScreen(context)
                              ? width / 20
                              : width / 35,
                          backgroundColor: Color(0xffF9F9F9),
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xff4F555A).withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 20,
                      top: Responsive.isSmallScreen(context)
                          ? width / 30
                          : width / 100,),
                  child: Text(
                    "Height in cms",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        top: Responsive.isSmallScreen(context)
                            ? width / 40
                            : width / 60,
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)
                              ? width / 1.1
                              : width / 1.1,
                          height: Responsive.isSmallScreen(context)
                              ? width / 8
                              : width / 8,
                          child: TextField(
//
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "0",
                              hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 20
                                    : width / 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 20,
                      top: Responsive.isSmallScreen(context)
                          ? width / 30
                          : width / 100,),
                  child: Text(
                    "Weight in kgs",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child:Container(
                    margin: EdgeInsets.only(
                      top: Responsive.isSmallScreen(context)
                            ? width / 40
                            : width / 60,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)
                              ? width / 1.1
                              : width / 1.1,
                          height: Responsive.isSmallScreen(context)
                              ? width / 8
                              : width / 8,
                          child: TextField(
//
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "0",
                              hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 20
                                    : width / 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isSmallScreen(context)
                        ? width / 20
                        : width / 20,
                    top: Responsive.isSmallScreen(context)
                        ? width / 30
                        : width / 100,
                  ),
                  child: Text(
                    "Head Circumference in cms",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(

                  alignment: Alignment.center,
                  child:Container(
                    margin: EdgeInsets.only(
                      top: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 60,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)
                              ? width / 1.1
                              : width / 1.1,
                          height: Responsive.isSmallScreen(context)
                              ? width / 8
                              : width / 8,
                          child: TextField(
//
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Head Circumference in cms",
                              hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 20
                                    : width / 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 20,
                      top: Responsive.isSmallScreen(context)
                          ? width / 30
                          : width / 100,
                      ),
                  child: Text(
                    "Doctor Name",
                    style: TextStyle(
                      color: Color(0xff4F555A).withOpacity(0.4),
                      fontSize: Responsive.isSmallScreen(context)
                          ? width / 20
                          : width / 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(

                  alignment: Alignment.center,
                  child:Container(
                    margin: EdgeInsets.only(
                      top: Responsive.isSmallScreen(context)
                          ? width / 40
                          : width / 60,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Responsive.isSmallScreen(context)
                              ? width / 1.1
                              : width / 1.1,
                          height: Responsive.isSmallScreen(context)
                              ? width / 8
                              : width / 8,
                          child: TextField(
//
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              filled: true,
                              fillColor: Color(0xffF9F9F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Doctor Name",
                              hintStyle: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 20
                                    : width / 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xff4F555A).withOpacity(0.4),
                              fontSize: Responsive.isSmallScreen(context)
                                  ? width / 20
                                  : width / 26,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 20,
                        right: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 20,
                        top: Responsive.isSmallScreen(context)
                            ? width / 30
                            : width / 100,),
                    child: Text(
                      "Clinic Name",
                      style: TextStyle(
                        color: Color(0xff4F555A).withOpacity(0.4),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 20
                            : width / 26,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: Responsive.isSmallScreen(context)
                            ? width / 40
                            : width / 60,
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Responsive.isSmallScreen(context)
                                ? width / 1.1
                                : width / 1.1,
                            height: Responsive.isSmallScreen(context)
                                ? width / 8
                                : width / 8,
                            child: TextField(
//
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20),
                                filled: true,
                                fillColor: Color(0xffF9F9F9),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(45),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Clinic Name",
                                hintStyle: TextStyle(
                                  color: Color(0xff4F555A).withOpacity(0.4),
                                  fontSize: Responsive.isSmallScreen(context)
                                      ? width / 20
                                      : width / 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: TextStyle(
                                color: Color(0xff4F555A).withOpacity(0.4),
                                fontSize: Responsive.isSmallScreen(context)
                                    ? width / 20
                                    : width / 26,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.only(
                left:
                    Responsive.isSmallScreen(context) ? width / 20 : width / 20,
                right:
                    Responsive.isSmallScreen(context) ? width / 20 : width / 20,
                top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Responsive.isSmallScreen(context)
                      ? width / 1.1
                      : width / 1.1,
                  height:
                      Responsive.isSmallScreen(context) ? width / 10 : width / 8,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Center(
                    child: Text(
                      "Choose File",
                      style: TextStyle(
                        color: Color(0xff979797),
                        fontSize: Responsive.isSmallScreen(context)
                            ? width / 24
                            : width / 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                right:
                    Responsive.isSmallScreen(context) ? width / 10 : width / 10,
                top:
                    Responsive.isSmallScreen(context) ? width / 20 : width / 20,
                bottom:
                    Responsive.isSmallScreen(context) ? width / 7 : width / 7),
            width:
                Responsive.isSmallScreen(context) ? width / 1.3 : width / 1.3,
            height: Responsive.isSmallScreen(context) ? width / 8 : width / 8,
            child: ElevatedButton(
              child: Text(
                'Submit',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: Responsive.isSmallScreen(context)
                        ? width / 25
                        : width / 25,
                    fontWeight: FontWeight.w900),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF24B445),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}