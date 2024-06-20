import 'package:device_preview/device_preview.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_to_food_waste_app/application/core/theme/app_theme.dart';
import 'package:no_to_food_waste_app/application/core/theme/theme_light.dart';
import 'package:no_to_food_waste_app/application/core/utils/navigation_manager.dart';
import 'package:no_to_food_waste_app/application/screens/home/home_screen.dart';
import 'package:no_to_food_waste_app/no_to_food_waste_app.dart';
import 'firebase_options.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    //emailLinkProviderConfig,
    //PhoneAuthProvider(),
    GoogleProvider(clientId: ''),
    //AppleProvider(),
    //FacebookProvider(clientId: FACEBOOK_CLIENT_ID),
  ]);
  AppNavigationManager.instance;
  runApp(
    //DevicePreview(
    //  enabled: !kReleaseMode,
    //  builder: (context) => const NoToFoodWasteApp(),
    //),

    const ProviderScope(child: NoToFoodWasteApp()),
  );
}
