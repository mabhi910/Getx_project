import 'package:admin/Routing/auto_wrapper.dart';
import 'package:admin/Routing/route_guard.dart';
import 'package:admin/login.dart';
import 'package:admin/logout.dart';
import 'package:admin/view/menuItems/boat_information.dart';
import 'package:admin/view/menuItems/dashboard.dart';
import 'package:admin/view/menuItems/front_end_user.dart';
import 'package:admin/view/menuItems/kanlian_user.dart';
import 'package:admin/view/menuItems/sales.dart';
import 'package:admin/view/menuItems/settings.dart';
import 'package:admin/view/menuItems/user_roles_and_access.dart';
import 'package:auto_route/auto_route.dart';

import '../view/create_new_user.dart';
import '../view/forget_password.dart';


@MaterialAutoRouter(
routes: <AutoRoute>[
  CustomRoute(page: Login,initial: true,path: "/login",guards: [RouteGuard]),
  CustomRoute(
    path: 'ForgetPassword',
    page: ForgetPassword,
    name: 'forgetPassword',
  ),
  CustomRoute(
      guards: [RouteGuard],
      transitionsBuilder: TransitionsBuilders.noTransition,
      page: AutoWrapper,
      children:[
    CustomRoute(
      path: 'dash',
      page: Dashboard,
      name: 'dash',
      initial: true,
    ),
        CustomRoute(
          path: 'FrontEndUser',
      page: FrontEndUser,
      name: 'frontEndUser',
    ),
        CustomRoute(
          path: 'Kanlianuser',
          page: KanlianUser,
          name: 'kanlianuser',
        ),
        CustomRoute(
          path: 'BoatInformation',
          page: BoatInformation,
          name: 'boatInformation',
        ),
        CustomRoute(
          path: 'UserRolesAccess',
          page: UserRolesAccess,
          name: 'userRolesAccess',
        ),
        CustomRoute(
          path: 'Sales',
          page: Sales,
          name: 'sales',
        ),
        CustomRoute(
          path: 'Settings',
          page: Settings,
          name: 'settings',
        ),
        CustomRoute(
          path: 'Logout',
          page: Logout,
          name: 'logout',
        ),
        CustomRoute(
          path: 'CreateNewUsers',
          page: CreateNewUser,
          name: 'CreateNewUser',
        ),


  ],name: "dashboard",path: '/dashboard')
])
class $AppRouter {}
