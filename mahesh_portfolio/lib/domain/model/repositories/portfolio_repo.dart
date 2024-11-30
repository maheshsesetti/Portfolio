import '../experience_model.dart';
import '../project_model.dart';
import '../skill_model.dart';

abstract class PortfolioRepository {
  List<Skill> getSkills();
  List<Project> getProjects();
  List<Experience> getExperience();
}
