import 'package:flutter/material.dart';
import 'package:farfromhome/ui/page_home.dart';
import 'package:farfromhome/ui/page_login.dart';
import 'package:farfromhome/ui/page_signup.dart';
import 'package:farfromhome/utils/responsive_screen.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class FirstScreen extends StatelessWidget {
  late Screen size;
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    size = Screen(MediaQuery.of(context).size);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          TextButton.icon(
            label: Text(
              'Skip',
              style: TextStyle(
                fontSize: size.getWidthPx(16),
                fontWeight: FontWeight.normal,
              ),
            ),
            icon: Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: size.hp(7)),
                  child: Text(
                  'Redefining Your Home',
                    style: new TextStyle(
                      fontSize: size.getWidthPx(20),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Color(0x991976d2),
                    )
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: size.hp(2)),
                  child: Text(
                  'Search Experience',
                    style: new TextStyle(
                      fontSize: size.getWidthPx(20),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Color(0x991976d2),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.hp(5),
                ),
                Image.asset(
                  'assets/landing_page.png',
                  width: size.wp(100),
                ),
                SizedBox(
                  height: size.hp(5),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.getWidthPx(30)),
                  child: ElevatedButton (
                    style: ElevatedButton.styleFrom
                      (
                      backgroundColor: Colors.blue[700],
                      elevation: 5,
                      padding: EdgeInsets.symmetric(vertical: size.getWidthPx(10), horizontal: size.getWidthPx(24)),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50),
                      ),
                    ),
                    child: Text('CREATE FREE ACCOUNT',
                    style: TextStyle
                      (
                      color:  Colors.white,
                    ),),

                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,size.getWidthPx(5),0,size.hp(6.5)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom
                      (
                      backgroundColor: Colors.blue[700],
                      elevation: 5,
                      padding: EdgeInsets.symmetric(vertical: size.getWidthPx(8), horizontal: size.getWidthPx(70)),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50),
                      ),
                    ),
                    child: Text('SIGN IN',
                    style: TextStyle
                      (
                      color:Colors.white,
                    ),),
                    onPressed: (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}