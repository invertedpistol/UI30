import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search,color: Colors.indigo[600]),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), 
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
            hintText: 'Search',
            filled: true,
            fillColor: Colors.white,
            ),
          ),
        ),
      );
  }
}