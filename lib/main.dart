import 'package:admin/Routing/route_guard.dart';
import 'package:admin/Routing/routing.gr.dart';
import 'package:admin/view-model/bloc_delegate.dart';
import 'package:admin/view-model/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:admin/injection_container.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

late final AppRouter appRouter;
GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

  await di.init();

  BlocOverrides.runZoned(() {
    FlutterError.onError = (errorDetails) {
    };
    runApp(const MyApp());
  }, blocObserver: SimpleBlocObserver());
}

final AppRouter _appRouter = AppRouter(routeGuard: RouteGuard(),navigatorKey: navigatorKey);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyBlocProvider(
      child:MaterialApp.router(
        scaffoldMessengerKey: scaffoldKey,
        debugShowCheckedModeBanner: false,
        title: "Kenlian",
        routeInformationParser: _appRouter.defaultRouteParser(),

        routerDelegate: _appRouter.delegate(),
      )
    );
  }
}

