import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/service_locator.dart';
import '../presentation/module/porfolio/bloc/portfolio_bloc.dart';
import '../presentation/module/porfolio/bloc/portfolio_event.dart';


class MyAppBlocProvider {
 static List<BlocProvider> blocs = [
    BlocProvider<PortfolioBloc>(create: (_) => PortfolioBloc(locator())..add(LoadPortfolioData()))
  ];
}