import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/LevelRatingScreen.dart';
import 'package:lawen/app/presentation/screens/display_image_screen.dart';
import 'package:lawen/app/presentation/screens/home_screen.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/apple/applepath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/apple/applepath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/apple/applepath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/apple/applepath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/apple/applepath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/banana/bananapath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/banana/bananapath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/banana/bananapath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/banana/bananapath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/banana/bananapath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/carrot/carrotpath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/carrot/carrotpath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/carrot/carrotpath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/carrot/carrotpath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/carrot/carrotpath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/corn/cornpath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/corn/cornpath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/corn/cornpath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/corn/cornpath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/corn/cornpath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/cucumber/cucumberpath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/cucumber/cucumberpath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/cucumber/cucumberpath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/cucumber/cucumberpath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/cucumber/cucumberpath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/grape/grapepath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/grape/grapepath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/grape/grapepath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/grape/grapepath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/grape/grapepath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/guava/guavapath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/guava/guavapath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/guava/guavapath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/guava/guavapath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/guava/guavapath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/lettuce/lettuceath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/lettuce/lettuceath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/lettuce/lettuceath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/lettuce/lettuceath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/lettuce/lettuceath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/mango/mangopath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/mango/mangopath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/mango/mangopath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/mango/mangopath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/mango/mangopath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/onion/onionpath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/onion/onionpath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/onion/onionpath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/onion/onionpath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/onion/onionpath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/orange/orangepath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/orange/orangepath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/orange/orangepath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/orange/orangepath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/orange/orangepath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pepper/pepperpath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pepper/pepperpath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pepper/pepperpath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pepper/pepperpath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pepper/pepperpath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pomegranate/pomegranatepath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pomegranate/pomegranatepath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pomegranate/pomegranatepath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pomegranate/pomegranatepath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/pomegranate/pomegranatepath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/potato/potatopath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/potato/potatopath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/potato/potatopath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/potato/potatopath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/potato/potatopath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/strawberry/strawberrypath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/strawberry/strawberrypath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/strawberry/strawberrypath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/strawberry/strawberrypath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/strawberry/strawberrypath_data5.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/tomato/tomatopath_data1.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/tomato/tomatopath_data2.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/tomato/tomatopath_data3.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/tomato/tomatopath_data4.dart';
import 'package:lawen/app/presentation/widgets/svgPathes/tomato/tomatopath_data5.dart';
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
      resizeToAvoidBottomInset: false,
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
            onTap: () {
              NavTo(context, LevelRatingScreen(homeModelId: homeModelId));
            },
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
  final Color paintColor;
  final String pathData1;
  final String pathData2;
  final String pathData3;
  final String pathData4;
  final String pathData5;

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
    required this.paintColor,
    required this.pathData1,
    required this.pathData2,
    required this.pathData3,
    required this.pathData4,
    required this.pathData5,
  });
}

List<LevelsModel> FruitsList = [
  LevelsModel(
    pathData1: applepathData1,
    pathData2: applepathData2,
    pathData3: applepathData3,
    pathData4: applepathData4,
    pathData5: applepathData5,
    image: apple,
    title: "تفاح",
    id: 1,
    tapSound: Applemp3,
    imageAudio: Applemp3,
    heySound1: heymp31,
    heySound2: heymp32,
    LawenImageAudio: '',
    paintColor: Color(0xfffa120a),
  ),
  LevelsModel(
      pathData1: bananapathData1,
      pathData2: bananapathData2,
      pathData3: bananapathData3,
      pathData4: bananapathData4,
      pathData5: bananapathData5,
      image: banana,
      title: "موز",
      id: 2,
      tapSound: "Bananamp3",
      imageAudio: Bananamp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xfff7db3b)),
  // LevelsModel(
  //     pathData1: datespathData1,
  //     pathData2: datespathData2,
  //     pathData3: datespathData3,
  //     pathData4: datespathData4,
  //     pathData5: datespathData5,
  //     image: dates,
  //     title: "بلح",
  //     id: 3,
  //     tapSound: '',
  //     imageAudio: Datesmp3,
  //     heySound1: heymp32,
  //     heySound2: heymp32,
  //     LawenImageAudio: '',
  //     paintColor: Color(0xff5e0202)),

  LevelsModel(
      pathData1: grapepathData1,
      pathData2: grapepathData2,
      pathData3: grapepathData3,
      pathData4: grapepathData4,
      pathData5: grapepathData5,
      image: grape,
      title: "عنب",
      id: 3,
      tapSound: '',
      imageAudio: Grapemp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xffe8e851)),
  LevelsModel(
      pathData1: guavapathData1,
      pathData2: guavapathData2,
      pathData3: guavapathData3,
      pathData4: guavapathData4,
      pathData5: guavapathData5,
      image: guava,
      title: "جوافه",
      id: 4,
      tapSound: '',
      imageAudio: Guavamp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xfffff89c)),
  // LevelsModel(
  //     pathData1: kiwipathData1,
  //     pathData2: kiwipathData2,
  //     pathData3: kiwipathData3,
  //     pathData4: kiwipathData4,
  //     pathData5: kiwipathData5,
  //     image: kiwi,
  //     title: "كيوي",
  //     id: 6,
  //     tapSound: '',
  //     imageAudio: Kiwimp3,
  //     heySound1: heymp32,
  //     heySound2: heymp32,
  //     LawenImageAudio: '',
  //     paintColor: Color(0xff613908)),

  LevelsModel(
      pathData1: mangopathData1,
      pathData2: mangopathData2,
      pathData3: mangopathData3,
      pathData4: mangopathData4,
      pathData5: mangopathData5,
      image: mango,
      title: "مانجا",
      id: 5,
      tapSound: '',
      imageAudio: Mangomp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xfff7b334)),
  LevelsModel(
      pathData1: orangepathData1,
      pathData2: orangepathData2,
      pathData3: orangepathData3,
      pathData4: orangepathData4,
      pathData5: orangepathData5,
      image: orange,
      title: "برتقال",
      id: 6,
      tapSound: '',
      imageAudio: Orangemp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xfffc861e)),
  // LevelsModel(
  //     pathData1: pearpathData1,
  //     pathData2: pearpathData2,
  //     pathData3: pearpathData3,
  //     pathData4: pearpathData4,
  //     pathData5: pearpathData5,
  //     image: pear,
  //     title: "كُمثري",
  //     id: 9,
  //     tapSound: '',
  //     imageAudio: Pearmp3,
  //     heySound1: heymp32,
  //     heySound2: heymp31,
  //     LawenImageAudio: '',
  //     paintColor: Color(0xffb3b329)),

  LevelsModel(
      pathData1: pomegranatepathData1,
      pathData2: pomegranatepathData2,
      pathData3: pomegranatepathData3,
      pathData4: pomegranatepathData4,
      pathData5: pomegranatepathData5,
      image: pomegranate,
      title: "رمان",
      id: 7,
      tapSound: '',
      imageAudio: Pomegranatemp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xffbf0d16)),
  LevelsModel(
      pathData1: strawberrypathData1,
      pathData2: strawberrypathData2,
      pathData3: strawberrypathData3,
      pathData4: strawberrypathData4,
      pathData5: strawberrypathData5,
      image: strawberry,
      title: "فراوله",
      id: 8,
      tapSound: '',
      imageAudio: Strawberrymp3,
      heySound1: heymp31,
      heySound2: heymp31,
      LawenImageAudio: '',
      paintColor: Color(0xffb8162c)),
  // LevelsModel(
  //     pathData1: watermelonpathData1,
  //     pathData2: watermelonpathData2,
  //     pathData3: watermelonpathData3,
  //     pathData4: watermelonpathData4,
  //     pathData5: watermelonpathData5,
  //     image: watermelon,
  //     title: "بطيخ",
  //     id: 12,
  //     tapSound: '',
  //     imageAudio: Watermelonmp3,
  //     heySound1: heymp32,
  //     heySound2: heymp31,
  //     LawenImageAudio: '',
  //     paintColor: Color(0xff0e5c16)),
];
List<LevelsModel> VegetablesList = [
  LevelsModel(
      pathData1: cornpathData1,
      pathData2: cornpathData2,
      pathData3: cornpathData3,
      pathData4: cornpathData4,
      pathData5: cornpathData5,
      image: corn,
      title: "ذره",
      id: 9,
      tapSound: '',
      imageAudio: Cornmp3,
      heySound1: heymp32,
      heySound2: heymp31,
      LawenImageAudio: '',
      paintColor: Color(0xfffcc651)),
  LevelsModel(
      pathData1: carrotpathData1,
      pathData2: carrotpathData2,
      pathData3: carrotpathData3,
      pathData4: carrotpathData4,
      pathData5: carrotpathData5,
      image: carrot,
      title: "جزر",
      id: 10,
      tapSound: '',
      imageAudio: Carrotmp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xfffc861e)),
  LevelsModel(
      pathData1: cucumberpathData1,
      pathData2: cucumberpathData2,
      pathData3: cucumberpathData3,
      pathData4: cucumberpathData4,
      pathData5: cucumberpathData5,
      image: cucumber,
      title: "خيار",
      id: 11,
      tapSound: '',
      imageAudio: Cucumbermp3,
      heySound1: heymp32,
      heySound2: heymp31,
      LawenImageAudio: '',
      paintColor: Color(0xff316115)),
  LevelsModel(
      pathData1: lettucepathData1,
      pathData2: lettucepathData2,
      pathData3: lettucepathData3,
      pathData4: lettucepathData4,
      pathData5: lettucepathData5,
      image: lettuce,
      title: "خَسّ",
      id: 12,
      tapSound: '',
      imageAudio: Lettucemp3,
      heySound1: heymp32,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xff53bf47)),
  LevelsModel(
      pathData1: onionpathData1,
      pathData2: onionpathData2,
      pathData3: onionpathData3,
      pathData4: onionpathData4,
      pathData5: onionpathData5,
      image: onion,
      title: "بصل",
      id: 13,
      tapSound: '',
      imageAudio: Onionmp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xff851c36)),
  LevelsModel(
      pathData1: pepperpathData1,
      pathData2: pepperpathData2,
      pathData3: pepperpathData3,
      pathData4: pepperpathData4,
      pathData5: pepperpathData5,
      image: pepper,
      title: "فلفل",
      id: 14,
      tapSound: '',
      imageAudio: Peppermp3,
      heySound1: heymp32,
      heySound2: heymp31,
      LawenImageAudio: '',
      paintColor: Color(0xff53bf47)),
  LevelsModel(
      pathData1: potatopathData1,
      pathData2: potatopathData2,
      pathData3: potatopathData3,
      pathData4: potatopathData4,
      pathData5: potatopathData5,
      image: potato,
      title: "بطاطس",
      id: 15,
      tapSound: '',
      imageAudio: Potatomp3,
      heySound1: heymp31,
      heySound2: heymp32,
      LawenImageAudio: '',
      paintColor: Color(0xffdbb579)),
  LevelsModel(
      pathData1: tomatopathData1,
      pathData2: tomatopathData2,
      pathData3: tomatopathData3,
      pathData4: tomatopathData4,
      pathData5: tomatopathData5,
      image: tomato,
      title: "طماطم",
      id: 16,
      tapSound: '',
      imageAudio: Tomatomp3,
      heySound1: heymp31,
      heySound2: heymp31,
      LawenImageAudio: '',
      paintColor: Color(0xfffa120a)),
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
