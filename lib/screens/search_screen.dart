import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing_project/shared_components/bottom_nav_bar.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red[200],
        child: Center(
            child: Container(
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.red[300],
                border: Border.all(
                  color: Colors.red,
                  width: 2.0
                ),
              ),
              child: Text('Search'),),
          ),
        ),
    );
  }
}
