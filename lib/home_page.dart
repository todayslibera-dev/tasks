import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title = '승호`s Tasks';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, //자식 크기에 맞추기
              children: [
                Image.asset(
                  'assets/image/제리인사-존중.webp',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 12),
                const Text(
                  '아직 할 일이 없음',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text(
                  '할 일을 추가하고 $title에서 할 일을 추적하세요.',
                  style: const TextStyle(fontSize: 14, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 211, 156, 94),
        shape: CircleBorder(),
        onPressed: () => addTodo(context),
        child: const Icon(Icons.add, color: Colors.white, size: 24),
      ),
    );
  }

  void addTodo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 12,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: '새 할 일'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
