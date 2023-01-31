import 'package:flutter/material.dart';

class RoutesList extends StatefulWidget {
  @override
  _RoutesListState createState() => _RoutesListState();
}

class _RoutesListState extends State<RoutesList> {
  final List<Route> _routes = [
    Route(name: 'Route 1', difficulty: 'Blau', length: 5),
    Route(name: 'Route 2', difficulty: 'Rot', length: 6),
    Route(name: 'Route 3', difficulty: 'Gelb', length: 3),
    // Add more routes here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _routes.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          child: ListTile(
            title: Text(_routes[index].name),
            subtitle: Text(
                'Schwierigkeit: ${_routes[index].difficulty} / Zeit: ${_routes[index].length} min'),
          ),
        );
      },
    );
  }
}

class Route {
  final String name;
  final String difficulty;
  final int length;

  Route({required this.name, required this.difficulty, required this.length});
}
