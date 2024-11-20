import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
          child: ListView(
            children: [
              Row(
                children: [
                  const Flexible(
                    flex: 4,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 28,
                          child: Text(
                            'RM',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        HeaderLabel(
                          label: 'About me',
                          isSelected: true,
                        ),
                        HeaderLabel(
                          label: 'My projects',
                          isSelected: false,
                        ),
                        HeaderLabel(
                          label: 'Experience',
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                          radius: 28,
                          child: SvgPicture.asset(
                            'assets/icons/instagram_icon.svg',
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 28,
                          child: SvgPicture.asset(
                            'assets/icons/github_icon.svg',
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          radius: 28,
                          child: SvgPicture.asset(
                            'assets/icons/linkedin_icon.svg',
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 150,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 400,
                    child: Column(
                      children: [
                        Text(
                          'Who am I?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rafael is a passionate and dedicated mobile developer specializing in Flutter. With a strong background in app development, he is committed to creating efficient and user-friendly applications. Currently, he's on a mission to refine his skills in both Flutter and Kotlin, driven by his aspiration to secure a mobile developer role in North America or Europe. Rafael's dedication to learning is evident in his proactive approach to tackling new technologies, from deep diving into Flutter's intricacies to exploring Kotlin's capabilities for native Android development.Beyond coding, Rafael is also an avid problem solver who enjoys turning complex challenges into elegant solutions. He's currently building a Flutter app to streamline his father's delivery business, demonstrating his ability to translate real-world needs into practical digital solutions. Rafael's focus on efficiency and user experience is reflected in his attention to detail, whether it's designing intuitive interfaces or implementing smooth functionality.",
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
    );
  }
}

class HeaderLabel extends StatelessWidget {
  const HeaderLabel({
    super.key,
    required this.label,
    required this.isSelected,
  });

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Text(label),
          Visibility(
            visible: isSelected,
            child: Container(
              height: 5,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
