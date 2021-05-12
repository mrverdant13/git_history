import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'values/dimensions.dart';
import 'widgets/selecction_form.dart';
import 'widgets/wrapper.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen();

  @override
  Widget build(BuildContext context) => Wrapper(
        builder: (context) => Scaffold(
          body: SafeArea(
            child: SizedBox.expand(
              child: ListView(
                padding: ScreenDimensions.screenPadding,
                children: [
                  SvgPicture.asset(
                    'assets/images/github-icon.svg',
                    semanticsLabel: 'GitHub icon',
                  ),
                  const SelectionForm(),
                ],
              ),
            ),
          ),
        ),
      );
}
