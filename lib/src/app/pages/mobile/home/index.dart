
import 'package:flutter/widgets.dart';
import 'package:meet_hub/abstract/stateless_widget.dart';
import './controller.dart';

// Handle
class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileHomeWidget();
  }
}

// UI Widget
class MobileHomeWidget extends IStatelessWidget<MobileHomePage, MobileHomeController> {
  const MobileHomeWidget({super.key}) : super(const MobileHomeController());
  
  @override
  Widget build(BuildContext context) {
    return const Text('mobile');
  }
}
