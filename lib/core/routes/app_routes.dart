
import 'package:gas_ecuador_distributor_side/view/auth/login.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/bottom_bar.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/map_screen/map_screen.dart';
import 'package:gas_ecuador_distributor_side/view/starting/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';

import '../../view/starting/splash_view.dart';
class AppRoutes {
  static const splash = '/';
  static const boarding = '/boarding';
   static const cancelOrder = '/cancelOrder';
  static const userLogin = '/user-view';
  // static const signUp = "/signup";
  static const emailVerification = '/emailVerification';
  static const homeView = '/homeView';
  static const bottomBarView = '/bottomBarView';
  static const orderDetails = '/orderDetails';
  static const ratingScreen = '/ratingScreen';
  static const routeScreen = '/routeScreen';
  static const orderTrackScreen = '/orderTrackScreen';
  static const placeOrderScreen = '/placeOrderScreen';
  static final routes = [
    GetPage(name: splash, page: () => SplashView()),
    GetPage(name: boarding, page: () => BoardingView()),
     GetPage(name: bottomBarView, page: () => MainNavigation()),
    GetPage(name: userLogin, page: () => LoginView()),
    GetPage(name: orderDetails, page: () => OrderDetails()),
    // GetPage(name: homeView, page: () => HomeScreen()),
    // GetPage(name: emailVerification, page: () => EmailVerificationView()),
    // GetPage(name: cancelOrder, page: () => CancelOrderScreen()),
    // GetPage(name: orderResult, page: () => OrderResultsPage()),
    // GetPage(name: ratingScreen, page: () => RatingScreen()),
    // GetPage(name: routeScreen, page: () => RouteScreen()),
    // GetPage(name: orderTrackScreen, page: () => OrderTrackingPage()),
    // GetPage(name: placeOrderScreen, page: () => PlaceOrderScreen()),
  ];
}
