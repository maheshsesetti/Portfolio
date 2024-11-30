
import 'package:bloc/bloc.dart';

import '../../../../domain/model/repositories/portfolio_repo.dart';
import 'portfolio_event.dart';
import 'portfolio_state.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final PortfolioRepository repository;

  PortfolioBloc(this.repository) : super(PortfolioInitial()) {
    on<LoadPortfolioData>((event, emit) {
      final skills = repository.getSkills();
      final projects = repository.getProjects();
      final experiences = repository.getExperience();
      emit(PortfolioLoaded(
          skills: skills, projects: projects, experiences: experiences));
    });
  }
}
