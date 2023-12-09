import 'package:alarm/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootPage extends StatelessWidget {
  final Widget child;
  const RootPage({super.key, required this.child});

  static int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(alarmPageName)) {
      return 0;
    }
    if (location.startsWith(timerPageName)) {
      return 1;
    }
    if (location.startsWith(stopwatchPageName)) {
      return 2;
    }
    return 0;
  }

  void onTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(alarmPageName);
        break;
      case 1:
        GoRouter.of(context).go(timerPageName);
        break;
      case 2:
        GoRouter.of(context).go(stopwatchPageName);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: getCurrentIndex(context),
        onTap: (int index) => onTap(index, context),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.alarm),
            label: strings.alarm,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.timer),
            label: strings.timer,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.timer),
            label: strings.stopwatch,
          ),
        ],
      ),
    );
  }
}
