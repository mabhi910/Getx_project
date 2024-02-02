// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../login.dart' as _i1;
import '../logout.dart' as _i11;
import '../view/create_new_user.dart' as _i12;
import '../view/forget_password.dart' as _i2;
import '../view/menuItems/boat_information.dart' as _i7;
import '../view/menuItems/dashboard.dart' as _i4;
import '../view/menuItems/front_end_user.dart' as _i5;
import '../view/menuItems/kanlian_user.dart' as _i6;
import '../view/menuItems/sales.dart' as _i9;
import '../view/menuItems/settings.dart' as _i10;
import '../view/menuItems/user_roles_and_access.dart' as _i8;
import 'auto_wrapper.dart' as _i3;
import 'route_guard.dart' as _i15;

class AppRouter extends _i13.RootStackRouter {
  AppRouter({
    _i14.GlobalKey<_i14.NavigatorState>? navigatorKey,
    required this.routeGuard,
  }) : super(navigatorKey);

  final _i15.RouteGuard routeGuard;

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.Login(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgetPassword.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgetPassword(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    Dashboard.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.AutoWrapper(),
        transitionsBuilder: _i13.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Dash.name: (routeData) {
      final args = routeData.argsAs<DashArgs>(orElse: () => const DashArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.Dashboard(
          key: args.key,
          pressed: args.pressed,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    FrontEndUser.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.FrontEndUser(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    Kanlianuser.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.KanlianUser(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    BoatInformation.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.BoatInformation(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserRolesAccess.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.UserRolesAccess(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    Sales.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.Sales(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    Settings.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.Settings(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    Logout.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.Logout(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateNewUser.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.CreateNewUser(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        _i13.RouteConfig(
          LoginRoute.name,
          path: '/login',
          guards: [routeGuard],
        ),
        _i13.RouteConfig(
          ForgetPassword.name,
          path: 'ForgetPassword',
        ),
        _i13.RouteConfig(
          Dashboard.name,
          path: '/dashboard',
          guards: [routeGuard],
          children: [
            _i13.RouteConfig(
              '#redirect',
              path: '',
              parent: Dashboard.name,
              redirectTo: 'dash',
              fullMatch: true,
            ),
            _i13.RouteConfig(
              Dash.name,
              path: 'dash',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              FrontEndUser.name,
              path: 'FrontEndUser',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              Kanlianuser.name,
              path: 'Kanlianuser',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              BoatInformation.name,
              path: 'BoatInformation',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              UserRolesAccess.name,
              path: 'UserRolesAccess',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              Sales.name,
              path: 'Sales',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              Settings.name,
              path: 'Settings',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              Logout.name,
              path: 'Logout',
              parent: Dashboard.name,
            ),
            _i13.RouteConfig(
              CreateNewUser.name,
              path: 'CreateNewUsers',
              parent: Dashboard.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.Login]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ForgetPassword]
class ForgetPassword extends _i13.PageRouteInfo<void> {
  const ForgetPassword()
      : super(
          ForgetPassword.name,
          path: 'ForgetPassword',
        );

  static const String name = 'ForgetPassword';
}

/// generated route for
/// [_i3.AutoWrapper]
class Dashboard extends _i13.PageRouteInfo<void> {
  const Dashboard({List<_i13.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i4.Dashboard]
class Dash extends _i13.PageRouteInfo<DashArgs> {
  Dash({
    _i14.Key? key,
    bool? pressed,
  }) : super(
          Dash.name,
          path: 'dash',
          args: DashArgs(
            key: key,
            pressed: pressed,
          ),
        );

  static const String name = 'Dash';
}

class DashArgs {
  const DashArgs({
    this.key,
    this.pressed,
  });

  final _i14.Key? key;

  final bool? pressed;

  @override
  String toString() {
    return 'DashArgs{key: $key, pressed: $pressed}';
  }
}

/// generated route for
/// [_i5.FrontEndUser]
class FrontEndUser extends _i13.PageRouteInfo<void> {
  const FrontEndUser()
      : super(
          FrontEndUser.name,
          path: 'FrontEndUser',
        );

  static const String name = 'FrontEndUser';
}

/// generated route for
/// [_i6.KanlianUser]
class Kanlianuser extends _i13.PageRouteInfo<void> {
  const Kanlianuser()
      : super(
          Kanlianuser.name,
          path: 'Kanlianuser',
        );

  static const String name = 'Kanlianuser';
}

/// generated route for
/// [_i7.BoatInformation]
class BoatInformation extends _i13.PageRouteInfo<void> {
  const BoatInformation()
      : super(
          BoatInformation.name,
          path: 'BoatInformation',
        );

  static const String name = 'BoatInformation';
}

/// generated route for
/// [_i8.UserRolesAccess]
class UserRolesAccess extends _i13.PageRouteInfo<void> {
  const UserRolesAccess()
      : super(
          UserRolesAccess.name,
          path: 'UserRolesAccess',
        );

  static const String name = 'UserRolesAccess';
}

/// generated route for
/// [_i9.Sales]
class Sales extends _i13.PageRouteInfo<void> {
  const Sales()
      : super(
          Sales.name,
          path: 'Sales',
        );

  static const String name = 'Sales';
}

/// generated route for
/// [_i10.Settings]
class Settings extends _i13.PageRouteInfo<void> {
  const Settings()
      : super(
          Settings.name,
          path: 'Settings',
        );

  static const String name = 'Settings';
}

/// generated route for
/// [_i11.Logout]
class Logout extends _i13.PageRouteInfo<void> {
  const Logout()
      : super(
          Logout.name,
          path: 'Logout',
        );

  static const String name = 'Logout';
}

/// generated route for
/// [_i12.CreateNewUser]
class CreateNewUser extends _i13.PageRouteInfo<void> {
  const CreateNewUser()
      : super(
          CreateNewUser.name,
          path: 'CreateNewUsers',
        );

  static const String name = 'CreateNewUser';
}
