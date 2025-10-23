import 'package:flutter/material.dart';
import 'home_page.dart'; // ✅ 외부 파일의 HomePage 불러오기

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 상단 DEBUG 배너 제거
      home: HomePage(), // ✅ home_page.dart 안의 HomePage 실행
    );
  }
}
