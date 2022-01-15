import 'package:diengku_app/users/loginpage.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class AkunPageWidget extends StatefulWidget {
  @override
  _AkunPageWidgetState createState() => _AkunPageWidgetState();
}

class _AkunPageWidgetState extends State<AkunPageWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/bgProfile.png',
                  ).image,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.01, -0.45),
            child: Container(
              width: 110,
              height: 110,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://picsum.photos/seed/642/600',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80, 320, 80, 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Intan Dewi Hapsari',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'intandewihapsari@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                child: Image.asset(
                                  "assets/logodiengpay.png",
                                  height: 30.0,
                                  width: 30.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(36, 0, 0, 0),
                                child: Text(
                                  'Rp. 159.000',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 5,
                          thickness: 3,
                          indent: 18,
                          endIndent: 18,
                          color: Color(0xFF1F7B24),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Image.asset(
                                  "assets/icon.png",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Image.asset(
                                  "assets/iconn.png",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Image.asset(
                                  "assets/iconnn.png",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Image.asset(
                                  "assets/iconnnn.png",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(36, 500, 36, 0),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Text(
                      'Pengaturan Profile',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(155, 0, 0, 0),
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(36, 546, 36, 0),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Text(
                      'Ganti Kata Sandi',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(165, 0, 0, 0),
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(36, 592, 36, 0),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Text(
                      'Ganti PIN DiengKu Pay',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(125, 0, 0, 0),
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(76, 650, 16, 0),
              child: ButtonTheme(
                minWidth: 250.0,
                height: 40.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPageWidget()),
                    );
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Logout"),
                ),
              ))
        ],
      ),
    );
  }
}
