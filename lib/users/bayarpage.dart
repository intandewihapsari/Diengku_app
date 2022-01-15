import 'package:diengku_app/users/landingPage.dart';
import 'package:diengku_app/users/pembayaranpage.dart';
import 'package:flutter/material.dart';

import 'beranda.dart';

class BayarPage extends StatefulWidget {
  @override
  _BayarPageState createState() => _BayarPageState();
}

class _BayarPageState extends State<BayarPage> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/bayar.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Align(
                alignment: AlignmentDirectional(-0.04, -0.15),
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
            Align(
                alignment: AlignmentDirectional(-1, -0.95),
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
          ],
        ),
      ),
    );
  }
}
