import 'package:ecommerce_app_ui/screen/provider/ecommerce_provider.dart';
import 'package:ecommerce_app_ui/screen/view/cart_screen.dart';
import 'package:ecommerce_app_ui/screen/view/details_screen.dart';
import 'package:ecommerce_app_ui/screen/view/home_screen.dart';
import 'package:ecommerce_app_ui/screen/view/like_screen.dart';
import 'package:ecommerce_app_ui/screen/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Shoppingprovider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
              titleSmall: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w400),
              titleMedium: TextStyle(
                  fontWeight: FontWeight.w700, color: Colors.black, fontSize: 18),
              titleLarge: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25)),
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: "cart",
        routes: {
          '/': (context) => Splashscreen(),
          'home': (context) => Homescreen(),
          'detail': (context) => Detailscreen(),
          'cart': (context) => Cartscreen(),
          'like': (context) => Likescreen(),
        },
      ),
    ),
  );
}
