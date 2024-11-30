import 'package:equatable/equatable.dart';

import '../../../../domain/model/experience_model.dart';
import '../../../../domain/model/project_model.dart';
import '../../../../domain/model/skill_model.dart';


abstract class PortfolioState extends Equatable {
  const PortfolioState();
  @override
  List<Object?> get props => [];
}

class PortfolioInitial extends PortfolioState {}

class PortfolioLoaded extends PortfolioState { 
  final List<Skill> skills;
  final List<Project> projects;
  final List<Experience> experiences;

  const PortfolioLoaded({
    required this.skills,
    required this.projects,
    required this.experiences,
  });

  @override
  List<Object?> get props => [skills, projects, experiences];
}
