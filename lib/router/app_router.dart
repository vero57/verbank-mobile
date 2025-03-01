import 'package:go_router/go_router.dart';
import '../presentation/pages/bank_home_page.dart';
import '../presentation/pages/profile_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BankHomePage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
  ],
);
