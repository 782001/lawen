import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/home_screen.dart';
import 'package:lawen/core/utils/components.dart';
import 'package:lawen/core/utils/media_query_values.dart';
import 'package:lawen/core/utils/styles.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(  resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: context.height * .84,
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.blue.shade900,
                      ),
                      width: context.width * 1,
                      height: context.height * .05,
                      child: Center(
                        child: Text(
                          "هدف البرنامج",
                          style: TextStyles.stylewhitebold20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "تعليم الطفل ذو اضطراب التوحد الفواكه المألوفة و الموجودة في البيئة حول الطفل مع معرفة الوانها ",
                        style: TextStyles.styleblack19,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey.shade900,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "البرنامج عبارة عن ٣ اقسام مستوى اول ومستوى ثاني وتقييم",
                        style: TextStyles.styleblack19,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.blue.shade900,
                      ),
                      width: context.width * 1,
                      height: context.height * .05,
                      child: Center(
                        child: Text(
                          "المستوى الاول",
                          style: TextStyles.stylewhitebold20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "عبارة عن الفواكه الاكثر ألفه يبدأ الطفل بمساعدة من الاخصائي او ولي الامر فتظهر له الفواكه ويختار منها وعند اختياره لفاكهة معينه تظهر في الشاشة ثم يستمع لاسمها ويوجد زر عند الحاجة للتتكرار. بعد الانتهاء من الاستماع ينتقل الى التلوين ويقوم بتلوين الفاكهة بلونها المناسب. بعد الانتهاء من التلوين ينتقل الطفل للتطابق.  ثم بعد ذلك ينتقل لفاكهة اخرى.",
                        style: TextStyles.styleblack19,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.blue.shade900,
                      ),
                      width: context.width * 1,
                      height: context.height * .05,
                      child: Center(
                        child: Text(
                          "المستوى الثاني",
                          style: TextStyles.stylewhitebold20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "عبارة عن خضراوات مألوفة من البيئة المحيطة للطفل يبدأ الطفل بمساعدة من الاخصائي او ولي الامر فتظهر له الخضراوات ويختار منها وعند اختياره لنوع خضراوات معين يظهر في الشاشة ثم يستمع لاسمها ويوجد زر عند الحاجة للتتكرار. بعد الانتهاء من الاستماع ينتقل الى التلوين ويقوم بتلوين الخضروات بلونها المناسب. بعد الانتهاء من التلوين ينتقل الطفل للتطابق. ثم بعد ذلك ينتقل للخضراوات الاخرى",
                        style: TextStyles.styleblack19,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.blue.shade900,
                      ),
                      width: context.width * 1,
                      height: context.height * .05,
                      child: Center(
                        child: Text(
                          "التقييم",
                          style: TextStyles.stylewhitebold20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "يشمل على مختلف الانواع من الخضراوات والفواكه ويتم تقييم الطفل في احد الانواع فيظهر نوع واحد سواء من الفاكهة او الخضراوات ويستمع لاسمه وتظهر له ثلاثة اختيارات يختار الاجابة الصحيحة منها ويكون بمساعدة الاخصائي او ولي الامر",
                        style: TextStyles.styleblack19,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey.shade900,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "بعد كل خطوة يظهر تعزيز مرئي وصوتي للطفل",
                        style: TextStyles.styleblack19,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  NavAndFinish(context, HomeScreen());
                },
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
                      "هيا بنا",
                      style: TextStyles.stylewhitebold25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
