
import 'package:flutter/widgets.dart';

abstract class IStatelessWidget<T1, T2> extends StatelessWidget {
  final T2? state;
 
  T1 get widget => (state as State).widget as T1;
 
  const IStatelessWidget(this.state, {Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context);
}
