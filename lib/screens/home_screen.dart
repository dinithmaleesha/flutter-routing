import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing_project/core/app_bloc/app_bloc.dart';
import 'package:routing_project/core/route/app_router.dart';
import 'package:routing_project/core/route/app_router.gr.dart';
import 'package:routing_project/shared_components/bottom_nav_bar.dart';


@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return AutoTabsRouter(
            routes: [
              HomeBodyRoute(),
              SearchRoute(),
              SettingRoute(),
            ],
            homeIndex: 0,
            duration: Duration(milliseconds: 400),
            ///TODO: add animation
            builder: (context, child){
              dashboardTabsRouter = AutoTabsRouter.of(context);
                return Scaffold(
                  body: child,
                  bottomNavigationBar: BottomTabNavigationBar(),
                );
            },
          );
        },
    );
  }
}
