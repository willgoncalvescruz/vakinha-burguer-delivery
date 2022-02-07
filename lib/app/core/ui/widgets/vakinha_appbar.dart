import 'package:flutter/material.dart';

class VakinhaAppbar extends AppBar {
  VakinhaAppbar({
    Key? key,
    double elevation = 3,
  }) : super(
            key: key,
            backgroundColor: Colors.white,
            elevation: elevation,
            centerTitle: true,
            title: Image.asset(
              "assets/images/logo.png",
              width: 80,
            ),
            iconTheme: const IconThemeData(color: Colors.black));
}
