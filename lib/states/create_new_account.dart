import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:tonyungapp/utility/my_constant.dart';
import 'package:tonyungapp/widgets/show_form.dart';
import 'package:tonyungapp/widgets/show_icon_button.dart';
import 'package:tonyungapp/widgets/show_image.dart';
import 'package:tonyungapp/widgets/show_text.dart';
import 'package:tonyungapp/widgets/show_title.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  var genders = <String>[
    'Male',
    'Female',
    'Other',
  ];
  String? gender;

  @override
  void initState() {
    super.initState();
    findPosition();
  }

Future<void> findPosition() async {

bool LocationServiceEnable;
LocationPermission locationPermission;


LocationServiceEnable = await Geolocator.isLocationServiceEnabled();


if (!LocationServiceEnable) {
  //ไม่ได้เปิด service enable
print('ไม่ได้เปิด service enable');
  
} else {
  //เปิด service location
  print ('เปิด service location');
}



}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyConstant.myWhite,
      appBar: AppBar(
        title: ShowText(
          label: 'Fill Your Profile',
          textStyle: MyConstant().h2Style(),
        ),
        foregroundColor: MyConstant.primary,
        elevation: 0,
        backgroundColor: MyConstant.myWhite,
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints boxConstraints) {
        return ListView(
          children: [
            newAvartar(boxConstraints),
            const ShowTitle(
              title: 'Full Name',
              subTitle: '*',
            ),
            ShowForm(hind: 'Full Name'),
            const ShowTitle(
              title: 'Email',
              subTitle: '*',
            ),
            ShowForm(
              hind: 'Email',
              iconData: Icons.email,
            ),
            const ShowTitle(
              title: 'Phone Number',
              subTitle: '*',
            ),
            ShowForm(
              hind: 'Phone Number',
              iconData: Icons.phone,
            ),
            const ShowTitle(
              title: 'Gender',
              subTitle: '*',
            ),
            newGender(),
            const ShowTitle(title: 'Location',subTitle: '*',),
            ShowText(label: 'lat=123.456, lng=123.456'),
          ],
        );
      }),
    );
  }

  Container newGender() {
    return Container(
            padding: EdgeInsets.only(left: 16),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30)),
            child: DropdownButton<dynamic>(isExpanded: true,
            underline: const SizedBox(),
              hint: ShowText(label: 'Please Choose Gender'),
              value: gender,
              items: genders
                  .map(
                    (e) => DropdownMenuItem(
                      child: ShowText(
                        label: e,
                      ),
                      value: e,
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),
          );
  }

  Row newAvartar(BoxConstraints boxConstraints) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: boxConstraints.maxWidth * 0.4,
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ShowImage(path: 'images/avatar.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ShowIconButton(
                      iconData: Icons.photo_camera, pressFunc: () {}),
                ),
              ],
            )),
      ],
    );
  }
}
