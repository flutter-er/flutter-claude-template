import 'package:flutter/material.dart';

/// Generic loading state widget — use in AsyncValue.loading handlers.
class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
