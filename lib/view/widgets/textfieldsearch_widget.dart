import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:news_app/constant/app_color.dart';

class TextfieldSearchWidget extends StatefulWidget {
  final String title;
  final IconData prefixIcon;
  final IconData suffixIcon;

  const TextfieldSearchWidget({
    required this.title,
    required this.prefixIcon,
    required this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextfieldSearchWidget> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _isObscure = false;

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
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: _isFocused ? purplePrimary : Colors.transparent,
        ),
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          obscureText: widget.title.toLowerCase().contains('password')
              ? _isObscure
              : false,
          focusNode: _focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 16.0),
            hintText: widget.title,
            hintStyle: TextStyle(color: Colors.grey),
            suffixIcon: Icon(
              size: 30,
              widget.suffixIcon,
              color: _isFocused ? purplePrimary : Colors.grey,
            ),
            prefixIcon: Icon(
              size: 30,
              widget.prefixIcon,
              color: _isFocused ? purplePrimary : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
