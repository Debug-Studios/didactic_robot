import 'package:flutter/material.dart';

import '../blocs/AuthBloc.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    authBloc.user.listen((data) {
      if (data?.uid != null) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        Navigator.pushReplacementNamed(context, '/auth');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[_buildLogo()],
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "DIDACTIC ROBOT",
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Anurati',
            ),
          ),
        ],
      ),
    );
  }
}
