import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({String? searchKey, Key? key}) : super(key: key) {
    if (searchKey != null) _searchKeyController.text = searchKey;
  }
  final TextEditingController _searchKeyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color.fromRGBO(249, 168, 77, 0.2),
      ),
      child: TextField(
        controller: _searchKeyController,
        textInputAction: TextInputAction.search,
        onSubmitted: (value) {},
        maxLines: 1,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: const Color.fromRGBO(218, 99, 23, 1),
          hintText: (_searchKeyController.text.isNotEmpty)
              ? '_searchKeyController.text'
              : 'What do you want to order?',
          hintStyle: const TextStyle(
              fontSize: 14, color: Color.fromRGBO(249, 168, 77, 1)),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        ),
      ),
    );
  }
}
