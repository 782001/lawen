import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/display_image_screen.dart';
import 'package:lawen/app/presentation/screens/home_screen.dart';
import 'package:lawen/core/utils/assets_images_path.dart';
import 'package:lawen/core/utils/components.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen(
      {Key? key, required this.homeModelId, required this.fromMoving})
      : super(key: key);
  final int homeModelId;
  final bool fromMoving;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          fromMoving
              ? IconButton(
                  onPressed: () {
                    NavAndFinish(context, HomeScreen());
                  },
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.blue.shade900,
                    size: 40,
                  ))
              : SizedBox.shrink()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 20, start: 20, end: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.blue.shade900,
              ),
              width: context.width * 1,
              height: context.height * .07,
              child: Center(
                child: Text(
                  homeModelId == 1 ? "الفواكه" : "الخضراوات",
                  style: TextStyles.stylewhitebold25,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: context.height * .01,
          // ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              width: context.width * 1,
              // height: context.height * .861,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // crossAxisCount: 3,
                  // mainAxisSpacing: 1,
                  // crossAxisSpacing: 1,
                  // childAspectRatio: 1 / 1.7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: context.width * 0.01,
                    mainAxisSpacing: context.width * 0.05,
                    mainAxisExtent: context.height * 0.24,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return LevelsCard(
                        homeModelId == 1
                            ? FruitsList[index]
                            : VegetablesList[index],
                        index,
                        homeModelId,
                        context);
                  },
                  itemCount: homeModelId == 1
                      ? FruitsList.length
                      : VegetablesList.length,
                  // itemCount: 3,
                  // children: List.generate(FruitDetailsList.length,
                  //     (index) => HeroGridView(FruitDetailsList[index], context)),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.blue.shade900,
                ),
                width: context.width * 1,
                height: context.height * .07,
                child: Center(
                  child: Text(
                    "قيم نفسك",
                    style: TextStyles.stylewhitebold25,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class LevelsModel {
  final String image;
  final String title;
  final String imageAudio;
  final String tapSound;
  final String heySound1;
  final String heySound2;
  final String LawenImageAudio;

  final int id;

//   PageViewModel(this.image, this.title, );
  LevelsModel({
    required this.image,
    required this.title,
    required this.id,
    required this.tapSound,
    required this.imageAudio,
    required this.heySound1,
    required this.heySound2,
    required this.LawenImageAudio,
  });
}

List<LevelsModel> FruitsList = [
  LevelsModel(
      image: apple,
      title: "تفاح",
      id: 1,
      tapSound: Applem4a,
      imageAudio: Applem4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: banana,
      title: "موز",
      id: 2,
      tapSound: "Bananam4a",
      imageAudio: Bananam4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: dates,
      title: "بلح",
      id: 3,
      tapSound: '',
      imageAudio: Datesm4a,
      heySound1: heym4a2,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: grape,
      title: "عنب",
      id: 4,
      tapSound: '',
      imageAudio: Grapem4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: guava,
      title: "جوافه",
      id: 5,
      tapSound: '',
      imageAudio: Guavam4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: kiwi,
      title: "كيوي",
      id: 6,
      tapSound: '',
      imageAudio: Kiwim4a,
      heySound1: heym4a2,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: mango,
      title: "مانجا",
      id: 7,
      tapSound: '',
      imageAudio: Mangom4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: orange,
      title: "برتقال",
      id: 8,
      tapSound: '',
      imageAudio: Orangem4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: pear,
      title: "كمثري",
      id: 9,
      tapSound: '',
      imageAudio: Pearm4a,
      heySound1: heym4a2,
      heySound2: heym4a1,
      LawenImageAudio: ''),
  LevelsModel(
      image: pomegranate,
      title: "رمان",
      id: 10,
      tapSound: '',
      imageAudio: Pomegranatem4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: strawberry,
      title: "فراوله",
      id: 11,
      tapSound: '',
      imageAudio: Strawberrym4a,
      heySound1: heym4a1,
      heySound2: heym4a1,
      LawenImageAudio: ''),
  LevelsModel(
      image: watermelon,
      title: "بطيخ",
      id: 12,
      tapSound: '',
      imageAudio: Watermelonm4a,
      heySound1: heym4a2,
      heySound2: heym4a1,
      LawenImageAudio: ''),
];
List<LevelsModel> VegetablesList = [
  LevelsModel(
      image: corn,
      title: "ذره",
      id: 1,
      tapSound: '',
      imageAudio: Cornm4a,
      heySound1: heym4a2,
      heySound2: heym4a1,
      LawenImageAudio: ''),
  LevelsModel(
      image: carrot,
      title: "جزر",
      id: 2,
      tapSound: '',
      imageAudio: Carrotm4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: cucumber,
      title: "خيار",
      id: 3,
      tapSound: '',
      imageAudio: Cucumberm4a,
      heySound1: heym4a2,
      heySound2: heym4a1,
      LawenImageAudio: ''),
  LevelsModel(
      image: lettuce,
      title: "خَسّ",
      id: 4,
      tapSound: '',
      imageAudio: Lettucem4a,
      heySound1: heym4a2,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: onion,
      title: "بصل",
      id: 5,
      tapSound: '',
      imageAudio: Onionm4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: pepper,
      title: "فلفل",
      id: 6,
      tapSound: '',
      imageAudio: Pepperm4a,
      heySound1: heym4a2,
      heySound2: heym4a1,
      LawenImageAudio: ''),
  LevelsModel(
      image: potato,
      title: "بطاطس",
      id: 7,
      tapSound: '',
      imageAudio: Potatom4a,
      heySound1: heym4a1,
      heySound2: heym4a2,
      LawenImageAudio: ''),
  LevelsModel(
      image: tomato,
      title: "طماطم",
      id: 8,
      tapSound: '',
      imageAudio: Tomatom4a,
      heySound1: heym4a1,
      heySound2: heym4a1,
      LawenImageAudio: ''),
];

LevelsCard(
        LevelsModel model, int index, int homeModelId, BuildContext context) =>
    InkWell(
      onTap: () {
        NavTo(
            context,
            DisplayImageScreen(
              levelsModel: model,
              isFruit: homeModelId == 1 ? true : false,
            ));
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          SizedBox(
            height: context.height * .22,
            width: context.width * .5,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 50,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Image(
                image: AssetImage(model.image),
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Card(
          //   child: Image(
          //     image: AssetImage(model.image),
          //     width: 100,
          //     height: 100,
          //   ),
          // ),

          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            width: context.width * .42,
            height: 30,
            child: Text(model.title,
                textAlign: TextAlign.center,
                style: TextStyles.styleellipsisblueShade900bold18),
          ),
        ],
      ),
    );
