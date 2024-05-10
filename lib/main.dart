import 'package:flutter/material.dart';
import 'package:task/controller/bloc/indicator_controller_bloc.dart';
import 'package:task/presentation/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PageIndicatorBloc>(
      create: (context) => PageIndicatorBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
