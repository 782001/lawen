import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/levels.dart';
import 'package:lawen/core/utils/components.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HomeModel> HomeList = [
      HomeModel(
          image: "day1",
          title: "المستوي الاول ",
          discription: "الفواكه",
          id: 1),
      HomeModel(
          image: "day2",
          title: "المستوي الثاني",
          discription: "الخضراوات",
          id: 2),
      HomeModel(
          image: "day3", title: "التقييم", discription: "اختبر نفسك", id: 3),
    ];

    return Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     customModel.discreption,
        //     style: TextStyle(
        //         fontFamily: cairoFont,
        //         color: Colors.blue.shade900,
        //         fontWeight: FontWeight.bold),
        //   ),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: context.height * .9,
            width: double.infinity,
            child: ListView.separated(
                // scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    HomeCard(HomeList[index], context),
                separatorBuilder: (context, index) => SizedBox(
                      height: context.height * 0.01,
                    ),
                itemCount: HomeList.length),
          ),
        ],
      ),
    ));
  }
}

Widget HomeCard(HomeModel model, BuildContext context) {
  return InkWell(
    onTap: () {
      NavTo(
          context,
          LevelsScreen(
            homeModelId: model.id,
          ));
    },
    child: Padding(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 20),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: context.width * 1,
          height: context.height * .23,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue.shade900,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              // Image(
              //   image: AssetImage(model.image),
              //   width: context.width * .22,
              //   height: 190,
              //   fit: BoxFit.contain,
              // ),
              const Spacer(),
              const SizedBox(
                height: 15,
              ),
              Text(model.title, style: TextStyles.stylewhitebold25
                  //  const TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //     fontFamily: cairoFont,
                  //     fontStyle: FontStyle.italic),
                  ),
              const Spacer(),
            ],
          ),
        ),
      ),
    ),
  );
}

class HomeModel {
  final String image;
  final String title;
  final String discription;

  final int id;

//   PageViewModel(this.image, this.title, );
  HomeModel({
    required this.image,
    required this.title,
    required this.id,
    required this.discription,
  });
}
