import 'package:diengku_app/users/beranda.dart';
import 'package:diengku_app/users/landingPage.dart';
import 'package:diengku_app/users/pembayaranpage.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class KeranjangPage extends StatefulWidget {
  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

// ignore: camel_case_types
class _KeranjangPageState extends State<KeranjangPage> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return // Generated code for this KeranjangP Widget...
        Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/keranjang.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Align(
                alignment: AlignmentDirectional(0.6, 0.93),
                child: new MaterialButton(
                  onPressed: () async {
                    setState(() => _loadingButton = true);
                    try {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PembayaranPage(),
                        ),
                      );
                    } finally {
                      setState(() => _loadingButton = false);
                    }
                  },
                  child: Text(''),
                )),
            Align(
                alignment: AlignmentDirectional(-1, -0.95),
                child: new MaterialButton(
                  onPressed: () async {
                    setState(() => _loadingButton = true);
                    try {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => landingPage(),
                        ),
                      );
                    } finally {
                      setState(() => _loadingButton = false);
                    }
                  },
                  child: Text(''),
                )),
          ],
        ),
      ),
    );
  }
}
