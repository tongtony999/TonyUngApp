// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tonyungapp/utility/my_constant.dart';

class ShowForm extends StatelessWidget {
  final String hind;
  final bool? obsecu;
  final Function()? redEyeFunc;
  const ShowForm({
    Key? key,
    required this.hind,
    this.obsecu,
    this.redEyeFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        obscureText: obsecu ?? false,
        decoration: InputDecoration(
          suffixIcon: redEyeFunc == null
              ? const SizedBox()
              : IconButton(
                  onPressed: redEyeFunc,
                  icon: Icon(Icons.remove_red_eye),
                ),
          hintText: hind,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: MyConstant.dark),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: MyConstant.light),
          ),
        ),
      ),
    );
  }
}
