import 'package:micro_core/micro_core.dart';
import 'package:movie/app/core/inject/inject.dart';
import 'package:movie/app/features/movie/presentations/ui/pages/home_page.dart';

class MicroAppMovieResolver implements MicroApp {
  @override
  void Function() get injectionsRegister => Inject.initialize();

  @override
  String get microAppName => 'micro_app_login';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/home': (context, args) => const HomePage(),
      };
}
