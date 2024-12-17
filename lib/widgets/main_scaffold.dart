import 'package:flutter/material.dart';

class NormalScaffold extends StatelessWidget {
  final Widget child;
  final Widget? title;
  final Widget? actions;

  const NormalScaffold(
      {super.key, required this.child, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: title,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: actions ?? Container(),
            )
          ],
        ),
        body: SafeArea(child: child));
  }
}
