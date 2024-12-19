import 'package:flutter/material.dart';
import 'package:mvhome/res/gradients.dart';

class SliverScaffold extends StatelessWidget {
  final Widget? child;
  final Widget toolbar;
  final double? toolbarHeight;
  final Widget? bottomAppBar;
  final double? bottomAppBarHeight;

  final ScrollController scrollController;
  const SliverScaffold({
    this.child,
    required this.toolbar,
    this.toolbarHeight,
    required this.scrollController,
    this.bottomAppBar,
    this.bottomAppBarHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: toolbarHeight,
        forceMaterialTransparency: true,
        title: toolbar,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.primaryGradient,
        ),
        child: SafeArea(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                toolbarHeight: 0,
                forceMaterialTransparency: true,
                expandedHeight: bottomAppBarHeight,
                flexibleSpace: FlexibleSpaceBar(
                  background: bottomAppBar,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
