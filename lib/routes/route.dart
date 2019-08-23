import 'package:fluro/fluro.dart';
import 'route_a.dart';
import 'route_b.dart';

class Routes {
  static Router router;
  static String root = "/";
  static String pageA = "/route_a";
  static String pageB = "/route_b";

  static void configRouters(Router router) {
    router.define(
      pageA,
      handler: Handler(
        handlerFunc: (context, params) {
          return RouteA();
        },
      ),
    );

    router.define(
      pageB,
      handler: Handler(
        handlerFunc: (context, params) {
          print(params['msg']);
          return RouteB(params['msg']);
        },
      ),
    );

    Routes.router = router;
  }
}
