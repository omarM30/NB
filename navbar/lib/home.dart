import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(85)),
            SvgPicture.asset('assets/images/logo1.svg')
          ],
        ),
      ),
    );
  }
}
