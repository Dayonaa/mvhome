import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvhome/pages/dashboard/profile/profile_controller.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/sliver_scaffold.dart';

class Profile extends GetView<ProfileController> {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverScaffold(
      flexibleAppBar: "Profle".toTitleLarge(color: Colors.white),
      scrollController: controller.scrollController,
      sliverChild: Center(
        child: ElevatedButton(
            onPressed: () => Get.offAllNamed("/onboard"), child: Text("EXIT")),
      ),
    );
  }
}
