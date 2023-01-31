import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: TextField(
          controller: _searchControl,
          decoration: const InputDecoration(
            labelText: "Search",
            labelStyle: TextStyle(color: Colors.grey),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.grey,
            icon: Icon(Icons.clear),
            onPressed: () {
              _searchControl.clear();
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // Add your search results here
          ],
        ),
      ),
    );
  }
}
