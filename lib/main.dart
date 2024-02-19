import 'package:egraha_app/application/profile/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/login/login_bloc.dart';
import 'domain/core/dep_injection/injectable.dart';
import 'presentation/root/root_page.dart';

Future<void> main() async {
  //Allowing the Flutter application to function correctly,
  //particularly when using plugins or accessing
  //platform-specific features.
  WidgetsFlutterBinding.ensureInitialized();

  /// Start the storage drive. It's important to use await
  /// before calling this API, or side effects will occur.
  await GetStorage.init();

  //Allowing dependencies to be easily managed
  //and accessed throughout the Flutter application.
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Transparent safe area implemented here.
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    //Initializing the blocs
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => getIt<LoginBloc>()),
        BlocProvider(create: (BuildContext context) => getIt<ProfileBloc>()),
      ],
      child: MaterialApp(
        title: 'E-Griha',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        //Initial page calling with the home tag(RootPage).
        home: const RootPage(),
      ),
    );
  }
}
