import 'package:flutter/material.dart';

class JoopWidget extends StatelessWidget {
  const JoopWidget({
    super.key,
    this.text,
    this.tus,
    this.onTap,
  });
  final String? text;
  final Color? tus;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 65,
        decoration: BoxDecoration(
          color: tus ?? Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
