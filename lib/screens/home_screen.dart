import 'package:flutter/material.dart';
import 'package:weekly_challenge_2022_flutter/router/app_routes.dart';
import 'package:weekly_challenge_2022_flutter/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenOptions = AppRoutes.screenOptions;

    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text('Weekly Challenge'),
      )),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(
            screenOptions[index].name,
          ),
          trailing: const Icon(
            Icons.arrow_right,
            color: AppTheme.primary,
          ),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: screenOptions.length,
      ),
    );
  }
}
