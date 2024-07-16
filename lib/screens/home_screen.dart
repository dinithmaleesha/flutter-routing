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
            transitionBuilder: (context, child, animation){
              dashboardTabsRouter = AutoTabsRouter.of(context);
              int currentIndex = dashboardTabsRouter.activeIndex;
              int previousIndex = dashboardTabsRouter.previousIndex??0;

              bool isTransitionToRight = currentIndex > previousIndex;
              return SlideTransition(
                  position:
                  Tween<Offset>(
                    begin: (isTransitionToRight ? Offset(1.0, 0.0) : Offset(-1.0, 0.0)),
                    end: Offset(0.0, 0.0),
                  ).animate(animation),
                child: child,
              );
            },
            builder: (context, child){
              dashboardTabsRouter = AutoTabsRouter.of(context);
                return Scaffold(
                  backgroundColor: Colors.red[200],
                  body: child,
                  bottomNavigationBar: BottomTabNavigationBar(),
                );
            },
          );
        },
    );
  }
}
