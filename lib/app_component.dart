import 'package:angular/angular.dart';
import 'package:angular_app/src/mock_heroes.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: [
    'app_component.css',
  ],
  directives: [formDirectives, coreDirectives],
)
class AppComponent {
  final title = 'Tour of heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;

  void onSelect(Hero hero) => selected = hero;
}
