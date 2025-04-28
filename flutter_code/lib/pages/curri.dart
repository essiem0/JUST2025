import 'dart:math';
import 'package:flutter/material.dart';

class Curri extends StatefulWidget {
  const Curri({super.key});

  @override
  State<Curri> createState() => _CurriState();
}

class _CurriState extends State<Curri> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double w = min(constraints.maxWidth * 0.9, 500); // 최대 너비 600으로 제한
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(fontFamily: 'Pretendard'),
                        children: [
                          TextSpan(
                            text: '자, 이제 ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 29,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: '여러분이 \n여정',
                            style: TextStyle(
                              fontSize: 31,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '을 떠날 시간입니다!\n\n',
                            style: TextStyle(
                              fontSize: 29,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '1학년 친구들은\n4월까지 역량 강화교육을 진행해요.\n프로젝트에 들어갈 준비를 마치고 나면\n세 가지 선택지 중 선택하게 돼요.\n',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildImage('assets/images/c1.png', w),
                  _buildImage('assets/images/c2.png', w),
                  _buildImage('assets/images/c3.png', w),
                  const SizedBox(height: 80),
                  _buildImage('assets/images/lie.png', w),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildImage(String path, double width) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Image.asset(
        path,
        width: width,
        fit: BoxFit.contain,
      ),
    );
  }
}
