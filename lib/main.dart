import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';

import 'core/routes/app_router.dart';
import 'core/services/notification_service.dart';
import 'features/auth/presentation/providers/auth_provider.dart';
import 'features/dashboard/presentation/providers/cart_provider.dart';
import 'features/dashboard/presentation/providers/product_provider.dart';
import 'firebase_options.dart';

void main() async {
  // 1. Wajib dipanggil paling awal
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Inisialisasi Firebase dengan proteksi Duplicate-App
  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      debugPrint("✅ Firebase Berhasil Terhubung");
    }
  } catch (e) {
    debugPrint("⚠️ Catatan Firebase: $e");
  }

  // 3. Inisialisasi Notifikasi
  try {
    await NotificationService.init();
    
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    
    // Request permission (Hanya jalan di Android 13+)
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
        
    debugPrint("🔔 Izin notifikasi diproses");
  } catch (e) {
    debugPrint("❌ Gagal inisialisasi notifikasi: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // AuthProvider: Mengelola sesi login
        ChangeNotifierProvider(
          create: (_) => AuthProvider()..initializeAuth(), 
        ),
        // ProductProvider: Mengambil data laptop dari Golang (IP .148)
        ChangeNotifierProvider(
          create: (_) => ProductProvider()..fetchProducts(),
        ),
        // CartProvider: Mengelola keranjang belanja
        ChangeNotifierProvider(
          create: (_) => CartProvider()..fetchCart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Katalog Laptop Shandy',
        
        // Memastikan rute awal adalah Splash Screen
        initialRoute: AppRouter.splash,
        routes: AppRouter.routes,
        
        // Tema Material 3
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.blue, 
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            centerTitle: true,
          ),
        ),
      ),
    );
  }
}