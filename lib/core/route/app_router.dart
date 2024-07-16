import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true,
    children: [
      AutoRoute(page: HomeBodyRoute.page),
      AutoRoute(page: SearchRoute.page),
      AutoRoute(page: SettingRoute.page),
    ])
  ];
}

final AppRouter appRouter = AppRouter();
late TabsRouter dashboardTabsRouter;
