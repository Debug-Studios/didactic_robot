import 'package:flutter/material.dart';

import '../../blocs/AuthBloc.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SETTINGS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
    );
  }
}
