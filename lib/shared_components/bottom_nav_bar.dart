import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing_project/core/app_bloc/app_bloc.dart';
import 'package:routing_project/core/route/app_router.dart';

class BottomTabNavigationBar extends StatelessWidget {

  const BottomTabNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.grey),
              onPressed: () {
                context.read<AppBloc>().add(ChangeDashboardTabIndex(0));
                dashboardTabsRouter.setActiveIndex(0);
              },
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.grey),
              onPressed: () {
                context.read<AppBloc>().add(ChangeDashboardTabIndex(1));
                dashboardTabsRouter.setActiveIndex(1);
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.grey),
              onPressed: () {
                context.read<AppBloc>().add(ChangeDashboardTabIndex(2));
                dashboardTabsRouter.setActiveIndex(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
