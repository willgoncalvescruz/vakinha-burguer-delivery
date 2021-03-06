import 'package:flutter/material.dart';

class VakinhaButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double? width;
  final double? height;
  final Color? color;

  const VakinhaButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.width,
    this.height = 50,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 7,
          onPrimary: Colors.white,
          side: const BorderSide(width: 2.0, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ), //const StadiumBorder(),
          primary: color,
        ),
      ),
    );
  }
}
