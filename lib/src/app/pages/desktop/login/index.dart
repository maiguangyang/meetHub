
import 'package:flutter/widgets.dart';
import 'package:meet_hub/abstract/stateless_widget.dart';
import './controller.dart';

// Handle
class DesktopLoginPage extends StatefulWidget {
  const DesktopLoginPage({super.key});

  @override
  State<DesktopLoginPage> createState() => DesktopLoginController();
}

// UI Widget
class DesktopLoginWidget extends IStatelessWidget<DesktopLoginPage, DesktopLoginController> {
  const DesktopLoginWidget(DesktopLoginController state, {super.key}) : super(state);

  @override
  Widget build(BuildContext context) {
    return const Text('login');
  }
}
