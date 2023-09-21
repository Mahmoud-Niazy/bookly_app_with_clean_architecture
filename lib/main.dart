import 'package:bookly_with_clean_architecture/constants.dart';
import 'package:bookly_with_clean_architecture/features/home/domain/entities/book_entity.dart';
import 'package:bookly_with_clean_architecture/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/api_services/api_services.dart';
import 'features/home/data/data_sources/local_data_source/home_local_data_source.dart';
import 'features/home/data/data_sources/remote_data_source/home_remote_data_source.dart';
import 'features/home/data/repos/home_repo_imp.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  setupHive();
  setupServiceLocator();
  setupApiServices();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashView(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

setupHive()async{
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
}

setupServiceLocator(){
  var getIt = GetIt.instance;
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
    HomeLocalDataSourceImp(),
    HomeRemoteDataSourceImp(
        ApiServices()
    ),
  ),
  );
}

setupApiServices()async{
  await ApiServices.init();
}