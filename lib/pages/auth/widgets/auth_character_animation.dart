import 'package:task_leap/config/config.dart';
import 'package:task_leap/states/states.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

class AuthCharacterAnimation extends StatelessWidget {
  const AuthCharacterAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: RiveAnimation.asset(
        Assets.riveAuthCharacter,
        onInit: Provider.of<AuthCharacterStatesProvider>(context, listen: false)
            .onInit,
      ),
    );
  }
}
