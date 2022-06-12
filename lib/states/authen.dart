import 'package:flutter/material.dart';
import 'package:tonyungapp/utility/my_constant.dart';
import 'package:tonyungapp/widgets/show_form.dart';
import 'package:tonyungapp/widgets/show_image.dart';
import 'package:tonyungapp/widgets/show_text.dart';
import 'package:tonyungapp/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {

bool redEye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            newLogo(),
            newAppName(),
            ShowTitle(title: 'Email'),
            ShowForm(
              hind: 'Email',
            ),
            ShowTitle(title: 'Password'),
            ShowForm(
              hind: 'Password',
              obsecu: redEye,
              redEyeFunc: (){
                setState(() {
                  redEye = !redEye;
                });

              },
            ),
          ],
        ),
      ),
    );
  }

  ShowText newAppName() {
    return ShowText(
      label: "Let's Sign You In",
      textStyle: MyConstant().h1Style(),
    );
  }

  SizedBox newLogo() {
    return SizedBox(
      width: 200,
      child: ShowImage(path: 'images/logo.png'),
    );
  }
}
