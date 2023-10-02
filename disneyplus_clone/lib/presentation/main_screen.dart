import 'package:disneyplus_clone/constants.dart';
import 'package:disneyplus_clone/presentation/bottom_navigation_bar.dart';
import 'package:disneyplus_clone/presentation/contents_list_section.dart';
import 'package:disneyplus_clone/presentation/franchise_button.dart';
import 'package:disneyplus_clone/presentation/main_carousel.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Disney%2B_logo.svg/2560px-Disney%2B_logo.svg.png',
          height: 40,
        ),
        backgroundColor: const Color(0xff39416f),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainCarousel(),
              Padding(padding: EdgeInsets.all(20), child: Column(
                // @TODO : Flexible 아닌 방법 혹은 Flexible 쓰면서 더 좋은 방법 찾기
                children: [
                  Row(
                    children: [
                      Expanded(child: FranchiseButton(title: "star wars", image: 'assets/image/starwars_logo.png')),
                      SizedBox(width: 10,),
                      Expanded(child: FranchiseButton(title: "star channel", image: 'assets/image/star_logo.png')),
                      SizedBox(width: 10,),
                      Expanded(child: FranchiseButton(title: "pixar", image: "assets/image/pixar_logo.png")),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Expanded(child: FranchiseButton(title: "national geographic", image: "assets/image/ng_logo.png")),
                      SizedBox(width: 10,),
                      Expanded(child: FranchiseButton(title: "marvel", image: 'assets/image/marvel_logo.png')),
                      SizedBox(width: 10,),
                      Expanded(child: FranchiseButton(title: "disney", image: 'assets/image/disney_white_logo.png'))
                    ],
                  ),
                ],
              ),),
              ContentsListSection(title: "픽사 오리지널", images: pixarContents),
              ContentsListSection(title: "스타워즈", images: starwarsContents),
              ContentsListSection(title: "한국 드라마", images: koreanContents),
            ],
          ),
        )
      ),
      backgroundColor: const Color(0xff39416f),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

