import 'package:get_it/get_it.dart';

import '../Data/repositories/portfolio_repo_impl.dart';
import '../domain/model/repositories/portfolio_repo.dart';


final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<PortfolioRepository>(
      () => PortfolioRepositoryImpl());
}
