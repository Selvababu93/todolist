import 'package:flutter/material.dart';
import 'package:todolist/widgets/hero_section.dart';
import 'package:todolist/widgets/section_tittle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFE0E0E0);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: bgColor,
        leading: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Image.asset('assets/images/pro.png'),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello!', style: TextStyle(fontSize: 16)),
            Text(
              'Jhon Dee',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_on_sharp),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 120),
          children: [
            Column(
              children: [
                HeroScreen(),
                const SizedBox(height: 24),
                const SectionTittle(
                  tittle: 'Daily Tasks',
                  trailing: 'See more',
                ),
                const SizedBox(height: 14),
                SizedBox(
                  height: 84,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
