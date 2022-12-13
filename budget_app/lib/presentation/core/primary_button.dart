import 'package:flutter/material.dart';

import 'clickable.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Clickable(
        child: IntrinsicWidth(
          child: Container(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width * 0.3,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: const Text("Enter expense"),
            ),
          ),
        ),
        onPressed: () {});
  }
}
