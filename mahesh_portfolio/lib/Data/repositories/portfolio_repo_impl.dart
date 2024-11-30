

import '../../domain/model/experience_model.dart';
import '../../domain/model/project_model.dart';
import '../../domain/model/repositories/portfolio_repo.dart';
import '../../domain/model/skill_model.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  @override
  List<Skill> getSkills() {
    return [
      Skill("Flutter"),
      Skill("Dart"),
      Skill("Bloc"),
      Skill("Firebase"),
      Skill("GetX"),
    ];
  }

  @override
  List<Project> getProjects() {
    return [
      Project(title: "Yantra Live", description: "Live tracking with GetX."),
      Project(title: "Face My Resume", description: "Resume builder."),
      Project(title: "Diverse Yellow Page", description: "Search businesses."),
    ];
  }

  @override
  List<Experience> getExperience() {
    return [
      Experience(
        company: "HashStack Solutions",
        role: "Software Engineer",
        duration: "April 2024 - Present",
        description: "Developed Flutter apps with clean architecture.",
      ),
      Experience(
        company: "First LSI Consulting",
        role: "Flutter Developer",
        duration: "Jan 2023 - Nov 2023",
        description: "Enhanced performance and implemented Bloc.",
      ),
    ];
  }
}
