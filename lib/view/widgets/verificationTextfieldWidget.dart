import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/app_color.dart';

class verificationTextfieldWidget extends StatefulWidget {

  const verificationTextfieldWidget({
    super.key,
  });

  @override
  State<verificationTextfieldWidget> createState() => _verificationTextfieldWidgetState();
}

class _verificationTextfieldWidgetState extends State<verificationTextfieldWidget> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: _isFocused ? purplePrimary : Colors.transparent),
          color: greyLighter,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: TextField(
          focusNode: _focusNode,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          style: TextStyle(
            fontSize: 28.0,
            color: _isFocused ? purplePrimary : blackPrimary,
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            hintText: "-",
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
