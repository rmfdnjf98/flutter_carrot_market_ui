import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildOutLineInputBorder(),
          enabledBorder: _buildOutLineInputBorder(),
          focusedBorder: _buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
          contentPadding: const EdgeInsets.only(
            left: 0,
            bottom: 15,
            top: 15,
            right: 0,
          ),
          hintText: '아무곳이나 들어가',
          hintStyle: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: Color(0xFFD4D5D0)),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
