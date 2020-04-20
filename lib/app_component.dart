import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_detail.dart';
import 'package:angular_app/src/mock_heroes.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/hello_service.dart';
import 'src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: [
    'app_component.css',
  ],
  directives: [formDirectives, coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements OnInit{
  final title = 'Tour of heroes';
  List<Hero> heroes;
  Hero selected;

  final HeroService _heroService;
  AppComponent(this._heroService);

  Object trackByHeroId(int _, dynamic o) => o is Hero ? o.id : o;

  void onSelect(Hero hero) => selected = hero;
  Future<void> _getHeroes() async => heroes = await _heroService.getAll();

  @override
  void ngOnInit() async => _getHeroes();
}
