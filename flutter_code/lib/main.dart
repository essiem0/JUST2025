import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pages/home.dart';
import 'pages/curri.dart';
import 'pages/records.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static final RxInt _index = 1.obs;
  final List<Widget> _pages = const [Curri(), HomePage(), Records()];

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), // AppBar 높이 설정
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5), // 검정색 그림자
                blurRadius: 20,
                spreadRadius: 5,
                offset: const Offset(0, 4), // 아래 방향으로 그림자
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Y축 중앙 정렬
            children: [
              AppBar(
                backgroundColor: Colors.black,
                title: Row(
                  children: [
                    const SizedBox(width: 10),
                    Image.asset('assets/images/logo.png', width: 80),
                  ],
                ),
                actions: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(FeatherIcons.menu,
                          color: Colors.white, size: 28),
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        width: 250,
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset('assets/images/logo.png', width: 100),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Text('About JUST',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Ydestreet')),
                    onPressed: () {
                      _index.value = 1;
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: const Text('Recodes',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Ydestreet')),
                    onPressed: () {
                      _index.value = 2;
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: const Text('Courses',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Ydestreet')),
                    onPressed: () {
                      _index.value = 0;
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: h - 290,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 정렬
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    _launchURL('https://github.com/JUSTARTUP'),
                                child: const Icon(
                                  FeatherIcons.github,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                              ),
                              const SizedBox(width: 12),
                              GestureDetector(
                                onTap: () => _launchURL(
                                    'https://www.youtube.com/@Just_doit22'),
                                child: Image.asset('assets/images/tube.png',
                                    width: 35),
                              ),
                              const SizedBox(width: 12), // 아이콘 간 간격
                              GestureDetector(
                                onTap: () => _launchURL(
                                    'https://www.instagram.com/start_justup/'),
                                child: const Icon(
                                  FeatherIcons.instagram,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                              ),
                              const SizedBox(width: 8), // 아이��� 간 간격
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("© 2022-2025 JUST All rights reserved.",
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.grey,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w100))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => _pages[_index.value]),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, blurRadius: 80, spreadRadius: 60)
                ],
              ),
              child: Obx(
                () => BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: Colors.black,
                  currentIndex: _index.value,
                  onTap: (value) => _index.value = value,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(FeatherIcons.calendar,
                          color: _index.value == 0 ? Colors.white : Colors.grey,
                          size: 24),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(FeatherIcons.home,
                          color: _index.value == 1 ? Colors.white : Colors.grey,
                          size: 24),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(FeatherIcons.award,
                          color: _index.value == 2 ? Colors.white : Colors.grey,
                          size: 24),
                      label: '',
                    ),
                  ],
                  selectedFontSize: 0,
                  unselectedFontSize: 0,
                  enableFeedback: false,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
