import 'package:alarm/features/alarm/alarm.dart';
import 'package:alarm/features/root/root.dart';
import 'package:alarm/features/stopwatch/stopwatch.dart';
import 'package:alarm/features/timer/timer.dart';
import 'package:alarm/router/router.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return RootPage(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: alarmPageName,
          builder: (BuildContext context, GoRouterState state) {
            return const AlarmPage();
          },
        ),
        GoRoute(
          path: stopwatchPageName,
          builder: (BuildContext context, GoRouterState state) {
            return const StopwatchPage();
          },
        ),
        GoRoute(
          path: timerPageName,
          builder: (BuildContext context, GoRouterState state) {
            return const TimerPage();
          },
        ),
      ],
    ),
  ],
);
