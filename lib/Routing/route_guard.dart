import 'package:admin/Routing/route_generator.dart';
import 'package:admin/Routing/routing.gr.dart';
import 'package:admin/helper/utils/shared_pref.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteGuard extends AutoRedirectGuard {
  final Future<SharedPreferences> _preferences = SharedPreferences.getInstance();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final SharedPreferences preferences = await _preferences;

    print(preferences.getBool("User-detail"));
    print("76987${preferences.getBool("login")}");
    print(router.currentPath);


    if(router.currentPath == "/login"){
      print("ksakdf");
      if(preferences.getBool("User-detail") !=null){
        router.push(Dashboard());
      }
      else{
        print("ksakdfghdf");
      }
    }
    if(router.currentPath == "/dashboard"){
      if(router.currentPath == "/login"){
        print("lsdjfal;k");
        resolver.next();
      }else{
        print("sldl;adjsf");
        resolver.next();
      }
    }else{
      print("ksakskhdfkadf");
      resolver.next();
    }
  }

// router.pushNamed("/home-page/projects");
  // preferences.getBool("remember_me") == true ? router.push(const HomeRoute()) : router.push(const LoginRoute());

  @override
  Future<bool> canNavigate(RouteMatch route) {
    return Future.value(true);
  }
}
