import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<String> awards = [
  "2024 디스플레이 챌린지 공모전 대상(장관상)",
  "고교 CID 대회 대상",
  "JA-삼성 Entreprenur’s Playground(창업놀이터) 대상",
  "대기업-청소년 아이디어 경진대회 최우수상 (부문 1등)",
  "국민대-JA Korea 온라인 창업 캠프 최우수상",
  "고교 CID 대회 우수상",
  "대-스쿨 해결사 대교부문 최우수상",
  "JA-삼성 Entreprenur’s Playground(창업놀이터) 최우수상",
  "Hello New World 해커톤 우수상",
  "2022 국제로봇올림피아드 CAMP 미션형창작 3위(한국로봇산업진흥원장상)",
  "대-스쿨 해결사 롯데케미칼부문 최우수상",
  "스마틴 앱 챌린지 2024 장려상",
  "대구콘텐츠코리아랩 주니어 콘텐츠 창업 캠프 최우수상",
  "2025 시스코 이노베이션 챌린지 Best Idea",
  "건식저장시설 홍보 아이디어 공모전 3위",
  "한양대 에리카 퇴근시간 버스승차인원 예측 경진대회 대상",
  "경기도상업경진대회 창업실무 금상",
  "PAAS-TA - 한국지능정보사회진흥원장상 은상",
  "대-스쿨 해결사 대교부문 우수상",
  "삼성 주니어 소프트웨어 창작대회 개발상",
  "레드브릭 게임 콘테스트 우수상",
  "제2회 학교안전사고 데이터 분석 활용 경진대회 특별상",
  "경기도상업경진대회 홍보크리에이터 금상",
  "비즈쿨 창업영재 새싹캠프 장려상",
  "전국상업경진대회 홍보크리에이터 금상",
  "네이버 청소년 크리에이터 스쿨 장려상",
  "한국정보올림피아드 - KOI 본선 동상",
  "KAIST IP CEO & CNAI ACCEL 해커톤 특별상",
  "학생 창업유망팀 300 성장트랙 최종 선정",
  "고교 SID 대회 본선 진출",
  "우리가 바꾸는 경기 프로젝트 - 차세대융합기술연구원상장 장려상",
  "2023 대한민국 고등학생 소프트웨어 개발 공모전 본선 진출",
  "한국디지털미디어고등학교 창의 IT 발표회 동상",
  "[연암공대] 버스승차인원 예측 경진대회 노력상",
  "JA-삼성SDS 2021 SmartHackathon 본선 진출",
  "2021 한경 청소년 경제 체험대회 본선 진출",
  "K-ICT 빅데이터 센터 데이터 크리에이터 캠프 본선 진출",
  "제1회 WONDERCHILD 창의발명대회 온라인 유통기술 본선 진출",
  "한국디지털미디어고등학교 콘솔게임 프로그래밍 대회 본선 진출",
  " "
];

List<String> projects = [
  "펫로스 증후군 극복 앱 꼬마별",
  "AI 큐레이션 음악 추천 앱 마이멜로디",
  "번아웃 극복 앱 BURNIN",
  "AI 기반 초개인화 금융 어시스턴트 소복소복",
  "로그인 정보 저장 서비스 Abibo",
  "플라스틱 착색 지우개 카로로",
  "친환경 버티컬 플랫폼 ZERO",
  "꿈 구체화 디지털 다이어리 플랫폼 iru",
  "QD-OLED 활용 색각 이상자를 위한 스마트 글라스",
  "AI 기반 간호사를 위한 스마트펜 Nursility",
  "독거 노인을 위한 가족 신문 서비스 모람모람",
  "문화활동 공유앱 너나들이",
  "팀매칭 웹 서비스 위드미",
  "설문조사 리워드 플랫폼 써밍",
  "공부 시간 관리 앱 스터디타이머",
  "AI 추천 단어장 브레드보카",
  "액티브 시니어 숏폼 콘텐츠 회춘",
  "PC 감성 메모장 저스트노트",
  "양자 터널링 극복 전기 박리 테이프",
  "대구광역시 대중교통 노선 기획 코카콜라",
  "회전 기술을 이용한 스피닝 멀티탭",
  " "
];

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0; // 현재 페이지를 추적하는 변수

  @override
  Widget build(BuildContext context) {
    const double titlebar = 60;
    double h = MediaQuery.of(context).size.height;
    double maxWidth =
        min(MediaQuery.of(context).size.width * 0.9, 600); // 최대 600px 제한

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 타이틀바
          SizedBox(
            height: titlebar,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    "Projects",
                    style: TextStyle(
                      color: (currentPage == 0) ? Colors.white : Colors.grey,
                      fontFamily: 'Ydestreet',
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    "Awards",
                    style: TextStyle(
                      color: (currentPage == 1) ? Colors.white : Colors.grey,
                      fontFamily: 'Ydestreet',
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // PageView
          SizedBox(
            height: h - 186 - titlebar,
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                _buildListView(projects, maxWidth, Icons.lightbulb),
                _buildListView(awards, maxWidth, Icons.emoji_events),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView(List<String> items, double maxWidth, IconData icon) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: Colors.black,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Center(
            child: SizedBox(
              width: maxWidth, // 최대 너비 설정
              child: (items.length - 1 == index)
                  ? const SizedBox(
                      height: 70,
                    )
                  : Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 49, 49, 49),
                        ),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(icon, color: Colors.orange, size: 12),
                          const SizedBox(width: 6),
                          Text(
                            items[index],
                            style: const TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
