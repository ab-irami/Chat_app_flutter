import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.btnTitle,
      required this.btnColor,
      required this.navigationFunction})
      : super(key: key);

  final Color btnColor;
  final String btnTitle;
  final VoidCallback navigationFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btnColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: navigationFunction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnTitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}