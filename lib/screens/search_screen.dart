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
        color: Colors.blue[200],
        child: const Center(
          child: Text('Search'),
        ),
      ),

    );
  }
}
