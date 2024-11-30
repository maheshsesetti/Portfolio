import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'const/bloc_provider.dart';
import 'core/bloc_Observer.dart';
import 'core/service_locator.dart';
import 'presentation/module/porfolio/view/portfolio_view.dart';

void main() {
  setupLocator();
   Bloc.observer = const MyBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: MyAppBlocProvider.blocs,
         // providers: [...AppPages.allBlocProvider(context)],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PortfolioView(),
        ));
  }
}
