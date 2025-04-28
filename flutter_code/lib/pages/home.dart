import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
      initialPage: 0,
    );

    return PageView(
      controller: pageController,
      scrollDirection: Axis.vertical, // 페이징 방향을 수직으로 설정

      // 페이지 목록
      children: [
        // 첫 번째 페이지
        SizedBox.expand(
          child: Container(
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 2,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14, // 75%로 축소
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Ydestreet',
                          ),
                          children: [
                            TextSpan(
                                text: "J",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "ourney starts from here from you.\n",
                            ),
                            TextSpan(
                                text: "U",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "se and develop your ability with us,\n",
                            ),
                            TextSpan(
                                text: "S",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "olve problems to create value.\n",
                            ),
                            TextSpan(
                                text: "T",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "ravel will ",
                            ),
                            TextSpan(
                              text: " JUST ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 247, 151, 23),
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "begin now.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      pageController.nextPage(
                          duration: Durations.extralong2,
                          curve: Curves.easeInOut);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 50 * 0.75, // 75%로 축소
                      color: Color.fromARGB(255, 107, 106, 106),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        // 두 번째 페이지
        SizedBox.expand(
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 2,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32 * 0.75, // 75%로 축소
                              fontFamily: 'Ydestreet',
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "The\n",
                            ),
                            TextSpan(
                                text: "Starting\nPoint\n",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 247, 151, 23),
                                )),
                            TextSpan(
                              text: "Of\nYour\n",
                            ),
                            TextSpan(
                                text: "Journey",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 247, 151, 23),
                                )),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.end,
                        text: const TextSpan(
                          style: TextStyle(
                            color: Color.fromARGB(255, 155, 155, 155),
                            fontSize: 21 * 0.75, // 75%로 축소
                            fontFamily: 'Pretendard',
                          ),
                          children: [
                            TextSpan(
                                text: "창업",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                              text: "은\n",
                            ),
                            TextSpan(
                                text: "하나의 여정",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                              text: "입니다.\n",
                            ),
                            TextSpan(
                                text: "JUST",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                              text: "는\n2022년에 여정을 시작해\n3년이라는 기간 동안\n",
                            ),
                            TextSpan(
                                text: "65개의 목적지",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                              text: "에 도달하며\n다양한 문제를 해결하고\n가치를 창출했습니다.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      pageController.nextPage(
                          duration: Durations.extralong2,
                          curve: Curves.easeInOut);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 50 * 0.75, // 75%로 축소
                      color: Color.fromARGB(255, 107, 106, 106),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        // 세 번째 페이지
        SizedBox.expand(
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/file.png',
                        width: 130 * 0.75, // 75%로 축소
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20 * 0.75, // 75%로 축소
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w200),
                          children: [
                            TextSpan(
                              text: "JUST는\n",
                            ),
                            TextSpan(
                                text: "2022년에",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 151, 23),
                                )),
                            TextSpan(
                              text: " 개설되었지만\n카로로, 엄랭, 이루,\nZEPING, Abibo 등\n",
                            ),
                            TextSpan(
                                text: "무려 65개",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 151, 23),
                                )),
                            TextSpan(
                              text: "의\n프로젝트를 이뤄냈어요",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        width: 130 * 0.75, // 75%로 축소
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.end,
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20 * 0.75, // 75%로 축소
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w200),
                          children: [
                            TextSpan(
                              text: "JUST는\n많은 프로젝트 개수만큼\n",
                            ),
                            TextSpan(
                                text: "상",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 151, 23),
                                )),
                            TextSpan(
                              text: "도 많이 받았어요!\n정말 단지,\n",
                            ),
                            TextSpan(
                                text: "JUST",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 151, 23),
                                )),
                            TextSpan(
                              text: "했을 뿐인데!",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
