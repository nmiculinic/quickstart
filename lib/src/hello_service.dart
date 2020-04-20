import 'package:angular_app/src/mock_heroes.dart';

import 'hero.dart';

class HeroService{
  Future<List<Hero>> getAll() async => mockHeroes;
  Future<List<Hero>> getAllSlowly() async => Future.delayed(
        Duration(seconds: 2),
        getAll,
    );
}