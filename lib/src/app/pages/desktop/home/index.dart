
import 'package:flutter/widgets.dart';
import 'package:meet_hub/abstract/stateless_widget.dart';
import './controller.dart';

// Handle
class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopHomeWidget();
  }
}

// UI Widget
class DesktopHomeWidget extends IStatelessWidget<DesktopHomePage, DesktopHomeController> {
  const DesktopHomeWidget({super.key}) : super(const DesktopHomeController());
  
  @override
  Widget build(BuildContext context) {
    return const Text('desktop');
  }
}
