import 'package:flutter/material.dart';

class NormalScaffold extends StatelessWidget {
  final Widget child;
  final Widget? title;
  final Widget? actions;
  final bool? canPop;

  const NormalScaffold({
    super.key,
    required this.child,
    this.title,
    this.actions,
    this.canPop,
  });
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop ?? true,
      onPopInvokedWithResult: (didPop, result) {
        if (!(canPop ?? false)) return;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: true,
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
          body: SafeArea(child: child)),
    );
  }
}
