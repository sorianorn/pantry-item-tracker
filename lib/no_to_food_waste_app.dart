import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:no_to_food_waste_app/application/core/theme/theme.dart';
import 'package:no_to_food_waste_app/application/core/utils/navigation_manager.dart';
import 'package:no_to_food_waste_app/application/cubits/navigation/bottom_menu_cubit.dart';

class NoToFoodWasteApp extends StatefulWidget {
  const NoToFoodWasteApp({super.key});

  @override
  State<NoToFoodWasteApp> createState() => _NoToFoodWasteAppState();
}

class _NoToFoodWasteAppState extends State<NoToFoodWasteApp>
    with WidgetsBindingObserver {
  //@override
  //void didChangePlatformBrightness() {
  //  context.read<ThemeCubit>().updateAppTheme();
  //  super.didChangePlatformBrightness();
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      //theme: MaterialTheme(GoogleFonts.ubuntuCondensedTextTheme()).light(),
      //darkTheme: MaterialTheme(GoogleFonts.ubuntuCondensedTextTheme()).dark(),
      theme: MaterialTheme(GoogleFonts.latoTextTheme()).light(),
      darkTheme: MaterialTheme(GoogleFonts.latoTextTheme()).dark(),
      routerConfig: AppNavigationManager.router,

      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: FormBuilderLocalizations.supportedLocales,
    );
  }
}
