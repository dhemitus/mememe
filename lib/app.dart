import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mememe/blocs.dart';
import 'package:mememe/routes.dart';
import 'package:mememe/modules/modules.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Blocs.blocList(
      ScreenUtilInit(
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'MeMe Me',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: FlipRoute.path,
            routes: Routes.screens,
            //home: child,
          );
        },
        //child: const FlipScreen(),
      )
    );
  }
}
